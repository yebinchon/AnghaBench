#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ nvm; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int E1000_EECD_FLUPD ; 
 scalar_t__ E1000_ERR_NVM ; 
 scalar_t__ E1000_FLASH_UPDATES ; 
 int E1000_HICR_FW_RESET ; 
 int E1000_HICR_FW_RESET_ENABLE ; 
 int E1000_STM_OPCODE ; 
 int /*<<< orphan*/  EECD ; 
 int /*<<< orphan*/  FLOP ; 
 int /*<<< orphan*/  HICR ; 
 scalar_t__ e1000_nvm_flash_hw ; 
 scalar_t__ FUNC0 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static s32 FUNC5(struct e1000_hw *hw)
{
	u32 eecd;
	s32 ret_val;
	u16 i;

	ret_val = FUNC0(hw);
	if (ret_val)
		return ret_val;

	/* If our nvm is an EEPROM, then we're done
	 * otherwise, commit the checksum to the flash NVM.
	 */
	if (hw->nvm.type != e1000_nvm_flash_hw)
		return 0;

	/* Check for pending operations. */
	for (i = 0; i < E1000_FLASH_UPDATES; i++) {
		FUNC4(1000, 2000);
		if (!(FUNC2(EECD) & E1000_EECD_FLUPD))
			break;
	}

	if (i == E1000_FLASH_UPDATES)
		return -E1000_ERR_NVM;

	/* Reset the firmware if using STM opcode. */
	if ((FUNC2(FLOP) & 0xFF00) == E1000_STM_OPCODE) {
		/* The enabling of and the actual reset must be done
		 * in two write cycles.
		 */
		FUNC3(HICR, E1000_HICR_FW_RESET_ENABLE);
		FUNC1();
		FUNC3(HICR, E1000_HICR_FW_RESET);
	}

	/* Commit the write to flash */
	eecd = FUNC2(EECD) | E1000_EECD_FLUPD;
	FUNC3(EECD, eecd);

	for (i = 0; i < E1000_FLASH_UPDATES; i++) {
		FUNC4(1000, 2000);
		if (!(FUNC2(EECD) & E1000_EECD_FLUPD))
			break;
	}

	if (i == E1000_FLASH_UPDATES)
		return -E1000_ERR_NVM;

	return 0;
}