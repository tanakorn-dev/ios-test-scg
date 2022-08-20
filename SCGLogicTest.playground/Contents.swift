import UIKit

// MARK: - 1. Equilibrium Index
func equilibrium(input: [Int]) -> String {
    var leftSum: Int = 0
    var rightSum: Int = 0
    
    for i in 0..<input.count {
        leftSum = 0
        for j in 0..<i {
            leftSum += input[j]
        }
        
        rightSum = 0
        for j in (i + 1)..<input.count {
            rightSum += input[j]
        }
        
        if leftSum == rightSum {
            return "middle index is \(i)"
        }
    }
    
    return "index not found"
}

let input1: [Int] = [1, 3, 5, 7, 9]
let input2: [Int] = [3, 6, 8, 1, 5, 10, 1, 7]
let input3: [Int] = [3, 5, 6]

print(equilibrium(input: input1))
print(equilibrium(input: input2))
print(equilibrium(input: input3))


// MARK: - 2. Palindrome
func palindrome(word: String) -> String {
    let wordLowercased = word.lowercased()
    let char = Array(wordLowercased)
    for i in 0..<char.count / 2 {
        if char[i] != char[char.count - 1 - i] {
            return "\(word) isn’t a palindrome"
        }
    }
    return "\(word) is a palindrome"
}

let input4: String = "aka"
let input5: String = "Level"
let input6: String = "Hello"
let input7: String = "haah"

print(palindrome(word: input4))
print(palindrome(word: input5))
print(palindrome(word: input6))
print(palindrome(word: input7))
