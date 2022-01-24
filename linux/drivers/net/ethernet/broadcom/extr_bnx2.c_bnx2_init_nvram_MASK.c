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
typedef  int u32 ;
struct flash_spec {int config1; int strapping; int config2; int config3; int write1; int total_size; } ;
struct bnx2 {int flash_size; struct flash_spec const* flash_info; } ;

/* Variables and functions */
 int FUNC0 (struct flash_spec*) ; 
 scalar_t__ FUNC1 (struct bnx2*) ; 
 scalar_t__ BNX2_CHIP_5709 ; 
 int /*<<< orphan*/  BNX2_NVM_CFG1 ; 
 int /*<<< orphan*/  BNX2_NVM_CFG2 ; 
 int /*<<< orphan*/  BNX2_NVM_CFG3 ; 
 int /*<<< orphan*/  BNX2_NVM_WRITE1 ; 
 int FUNC2 (struct bnx2*,int /*<<< orphan*/ ) ; 
 int BNX2_SHARED_HW_CFG2_NVM_SIZE_MASK ; 
 int /*<<< orphan*/  BNX2_SHARED_HW_CFG_CONFIG2 ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2*,int /*<<< orphan*/ ,int) ; 
 int ENODEV ; 
 int FLASH_BACKUP_STRAP_MASK ; 
 int FLASH_STRAP_MASK ; 
 int FUNC4 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC7 (struct bnx2*) ; 
 int FUNC8 (struct bnx2*,int /*<<< orphan*/ ) ; 
 struct flash_spec const flash_5709 ; 
 struct flash_spec* flash_table ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static int
FUNC10(struct bnx2 *bp)
{
	u32 val;
	int j, entry_count, rc = 0;
	const struct flash_spec *flash;

	if (FUNC1(bp) == BNX2_CHIP_5709) {
		bp->flash_info = &flash_5709;
		goto get_flash_size;
	}

	/* Determine the selected interface. */
	val = FUNC2(bp, BNX2_NVM_CFG1);

	entry_count = FUNC0(flash_table);

	if (val & 0x40000000) {

		/* Flash interface has been reconfigured */
		for (j = 0, flash = &flash_table[0]; j < entry_count;
		     j++, flash++) {
			if ((val & FLASH_BACKUP_STRAP_MASK) ==
			    (flash->config1 & FLASH_BACKUP_STRAP_MASK)) {
				bp->flash_info = flash;
				break;
			}
		}
	}
	else {
		u32 mask;
		/* Not yet been reconfigured */

		if (val & (1 << 23))
			mask = FLASH_BACKUP_STRAP_MASK;
		else
			mask = FLASH_STRAP_MASK;

		for (j = 0, flash = &flash_table[0]; j < entry_count;
			j++, flash++) {

			if ((val & mask) == (flash->strapping & mask)) {
				bp->flash_info = flash;

				/* Request access to the flash interface. */
				if ((rc = FUNC4(bp)) != 0)
					return rc;

				/* Enable access to flash interface */
				FUNC6(bp);

				/* Reconfigure the flash interface */
				FUNC3(bp, BNX2_NVM_CFG1, flash->config1);
				FUNC3(bp, BNX2_NVM_CFG2, flash->config2);
				FUNC3(bp, BNX2_NVM_CFG3, flash->config3);
				FUNC3(bp, BNX2_NVM_WRITE1, flash->write1);

				/* Disable access to flash interface */
				FUNC5(bp);
				FUNC7(bp);

				break;
			}
		}
	} /* if (val & 0x40000000) */

	if (j == entry_count) {
		bp->flash_info = NULL;
		FUNC9("Unknown flash/EEPROM type\n");
		return -ENODEV;
	}

get_flash_size:
	val = FUNC8(bp, BNX2_SHARED_HW_CFG_CONFIG2);
	val &= BNX2_SHARED_HW_CFG2_NVM_SIZE_MASK;
	if (val)
		bp->flash_size = val;
	else
		bp->flash_size = bp->flash_info->total_size;

	return rc;
}