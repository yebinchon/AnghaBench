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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct bnx2 {TYPE_1__* flash_info; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {int flags; int page_size; int page_bits; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2_NVM_ADDR ; 
 int BNX2_NVM_ADDR_NVM_ADDR_VALUE ; 
 int /*<<< orphan*/  BNX2_NVM_COMMAND ; 
 int BNX2_NVM_COMMAND_DOIT ; 
 int BNX2_NVM_COMMAND_DONE ; 
 int /*<<< orphan*/  BNX2_NVM_READ ; 
 int BNX2_NV_TRANSLATE ; 
 int FUNC0 (struct bnx2*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2*,int /*<<< orphan*/ ,int) ; 
 int EBUSY ; 
 int NVRAM_TIMEOUT_COUNT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int
FUNC5(struct bnx2 *bp, u32 offset, u8 *ret_val, u32 cmd_flags)
{
	u32 cmd;
	int j;

	/* Build the command word. */
	cmd = BNX2_NVM_COMMAND_DOIT | cmd_flags;

	/* Calculate an offset of a buffered flash, not needed for 5709. */
	if (bp->flash_info->flags & BNX2_NV_TRANSLATE) {
		offset = ((offset / bp->flash_info->page_size) <<
			   bp->flash_info->page_bits) +
			  (offset % bp->flash_info->page_size);
	}

	/* Need to clear DONE bit separately. */
	FUNC1(bp, BNX2_NVM_COMMAND, BNX2_NVM_COMMAND_DONE);

	/* Address of the NVRAM to read from. */
	FUNC1(bp, BNX2_NVM_ADDR, offset & BNX2_NVM_ADDR_NVM_ADDR_VALUE);

	/* Issue a read command. */
	FUNC1(bp, BNX2_NVM_COMMAND, cmd);

	/* Wait for completion. */
	for (j = 0; j < NVRAM_TIMEOUT_COUNT; j++) {
		u32 val;

		FUNC4(5);

		val = FUNC0(bp, BNX2_NVM_COMMAND);
		if (val & BNX2_NVM_COMMAND_DONE) {
			__be32 v = FUNC2(FUNC0(bp, BNX2_NVM_READ));
			FUNC3(ret_val, &v, 4);
			break;
		}
	}
	if (j >= NVRAM_TIMEOUT_COUNT)
		return -EBUSY;

	return 0;
}