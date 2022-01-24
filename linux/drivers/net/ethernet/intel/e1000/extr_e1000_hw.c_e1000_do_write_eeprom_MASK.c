#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u16 ;
struct e1000_eeprom_info {scalar_t__ word_size; scalar_t__ type; } ;
struct e1000_hw {scalar_t__ mac_type; struct e1000_eeprom_info eeprom; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 scalar_t__ E1000_ERR_EEPROM ; 
 scalar_t__ E1000_SUCCESS ; 
 int /*<<< orphan*/  GBE_CONFIG_BASE_VIRT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC1 (struct e1000_hw*) ; 
 scalar_t__ e1000_ce4100 ; 
 scalar_t__ e1000_eeprom_microwire ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_hw*) ; 
 scalar_t__ FUNC3 (struct e1000_hw*,scalar_t__,scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC4 (struct e1000_hw*,scalar_t__,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static s32 FUNC7(struct e1000_hw *hw, u16 offset, u16 words,
				 u16 *data)
{
	struct e1000_eeprom_info *eeprom = &hw->eeprom;
	s32 status = 0;

	if (hw->mac_type == e1000_ce4100) {
		FUNC0(GBE_CONFIG_BASE_VIRT, offset, words,
				       data);
		return E1000_SUCCESS;
	}

	/* A check for invalid values:  offset too large, too many words, and
	 * not enough words.
	 */
	if ((offset >= eeprom->word_size) ||
	    (words > eeprom->word_size - offset) ||
	    (words == 0)) {
		FUNC5("\"words\" parameter out of bounds\n");
		return -E1000_ERR_EEPROM;
	}

	/* Prepare the EEPROM for writing  */
	if (FUNC1(hw) != E1000_SUCCESS)
		return -E1000_ERR_EEPROM;

	if (eeprom->type == e1000_eeprom_microwire) {
		status = FUNC3(hw, offset, words, data);
	} else {
		status = FUNC4(hw, offset, words, data);
		FUNC6(10);
	}

	/* Done with writing */
	FUNC2(hw);

	return status;
}