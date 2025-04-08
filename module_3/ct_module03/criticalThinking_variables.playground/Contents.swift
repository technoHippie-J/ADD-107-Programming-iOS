import UIKit

print("RPG Character Generator")

//constants
let charName = "Jernal"
let charClass = "Druid"
let charRace = "Troll"
let charSex = "Male"
let armorType = "Leather"

//variables
var charSpec = "Restoration"
var charLevel = 4
var charHP: Double = 100
var charStrength: Double = 7
var charStamina: Double  = 8
var charDexterity: Double  = 5
var charAgility: Double  = 6
var charIntelligence: Double  = 7
var charWisdom: Double  = 12

var charWeaponDmg: Double  = 4
var charSpellDmg: Double  = 13

var charWeaponDmg_dmgMod: Double  = (charStrength * 0.1)
var charSpellDmg_dmgMod: Double  = (charIntelligence * 0.1)
var char_healingMod: Double  = (charWisdom * 0.1)
var dmgMod_armor_phys_leather: Double  = 0.5
var dmgMod_armor_mag_leather: Double  = 0.3

//constants - enemy
let enemyName = "goblin_A"
let enemyType = "Goblin"
let enemyClass = "Warrior"
let enemyLevel = 1
let dmgType = "physical"

//variables - enemy
var enemyHealth: Double = 50
var enemyDefense_phys: Double = 8
var enemyDefense_mag: Double = 2
var enemyDamage: Double = 10
var dmgMod_phys_goblin: Double = 0.7

//damage
var charDmg: Double = ((charSpellDmg * charSpellDmg_dmgMod) + charSpellDmg)
var enemyDmg: Double = ((enemyDamage * dmgMod_phys_goblin) - (charStamina * dmgMod_armor_phys_leather))

//combat
var dmgMag_char_to_enemy: Double = (charDmg - (charDmg * (enemyDefense_mag * 0.1)))
var dmgPhys_enemy_to_char: Double = (enemyDmg - (enemyDmg * dmgMod_armor_phys_leather))

print("\(charName) casts damage spell at Goblin and deals \(dmgMag_char_to_enemy) damage!")
var enemyHealth_01: Double = (enemyHealth - dmgMag_char_to_enemy)
print("Goblin has \(enemyHealth_01) health remaining!\n")
print("Goblin swings at \(charName) , dealing \(enemyDmg)!")
var charHealth_01: Double = (charHP - dmgPhys_enemy_to_char)
print("\(charName)  has \(charHealth_01) health remaining!")
print("\(charName)  casts damage spell at Goblin and deals \(dmgMag_char_to_enemy) damage!")
var enemyHealth_02: Double = (enemyHealth_01 - dmgMag_char_to_enemy)
print("Goblin has \(enemyHealth_02) health remaining!\n")
print("Goblin swings at \(charName) , dealing \(enemyDmg)!")
var charHealth_02: Double = (charHealth_01 - dmgPhys_enemy_to_char)
print("\(charName)  has \(charHealth_02) health remaining!\n")
print("\(charName)  casts damage spell at Goblin and deals \(dmgMag_char_to_enemy) damage!")
var enemyHealth_03: Double = (enemyHealth_02 - dmgMag_char_to_enemy)
print("Goblin took \(dmgMag_char_to_enemy), more than he had in health remaining!")
print("\(charName) has killed the goblin!")
