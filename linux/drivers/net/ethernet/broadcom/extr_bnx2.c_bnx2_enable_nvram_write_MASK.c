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
struct bnx2 {TYPE_1__* flash_info; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2_MISC_CFG ; 
 int BNX2_MISC_CFG_NVM_WR_EN_PCI ; 
 int /*<<< orphan*/  BNX2_NVM_COMMAND ; 
 int BNX2_NVM_COMMAND_DOIT ; 
 int BNX2_NVM_COMMAND_DONE ; 
 int BNX2_NVM_COMMAND_WREN ; 
 int BNX2_NV_WREN ; 
 int FUNC0 (struct bnx2*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2*,int /*<<< orphan*/ ,int) ; 
 int EBUSY ; 
 int NVRAM_TIMEOUT_COUNT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int
FUNC3(struct bnx2 *bp)
{
	u32 val;

	val = FUNC0(bp, BNX2_MISC_CFG);
	FUNC1(bp, BNX2_MISC_CFG, val | BNX2_MISC_CFG_NVM_WR_EN_PCI);

	if (bp->flash_info->flags & BNX2_NV_WREN) {
		int j;

		FUNC1(bp, BNX2_NVM_COMMAND, BNX2_NVM_COMMAND_DONE);
		FUNC1(bp, BNX2_NVM_COMMAND,
			BNX2_NVM_COMMAND_WREN | BNX2_NVM_COMMAND_DOIT);

		for (j = 0; j < NVRAM_TIMEOUT_COUNT; j++) {
			FUNC2(5);

			val = FUNC0(bp, BNX2_NVM_COMMAND);
			if (val & BNX2_NVM_COMMAND_DONE)
				break;
		}

		if (j >= NVRAM_TIMEOUT_COUNT)
			return -EBUSY;
	}
	return 0;
}