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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct bnx2x {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  BNX2X_MSG_SP ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*) ; 
 scalar_t__ FUNC2 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int EBUSY ; 
 int /*<<< orphan*/  PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER ; 
 int /*<<< orphan*/  PGLUE_B_REG_INTERNAL_PFID_ENABLE_TARGET_READ ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2x*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(struct bnx2x *bp)
{
	u32 poll_cnt = FUNC5(bp);

	FUNC3(BNX2X_MSG_SP, "Cleanup after FLR PF[%d]\n", FUNC1(bp));

	/* Re-enable PF target read access */
	FUNC4(bp, PGLUE_B_REG_INTERNAL_PFID_ENABLE_TARGET_READ, 1);

	/* Poll HW usage counters */
	FUNC3(BNX2X_MSG_SP, "Polling usage counters\n");
	if (FUNC8(bp, poll_cnt))
		return -EBUSY;

	/* Zero the igu 'trailing edge' and 'leading edge' */

	/* Send the FW cleanup command */
	if (FUNC9(bp, (u8)FUNC2(bp), poll_cnt))
		return -EBUSY;

	/* ATC cleanup */

	/* Verify TX hw is flushed */
	FUNC10(bp, poll_cnt);

	/* Wait 100ms (not adjusted according to platform) */
	FUNC11(100);

	/* Verify no pending pci transactions */
	if (FUNC7(bp->pdev))
		FUNC0("PCIE Transactions still pending\n");

	/* Debug */
	FUNC6(bp);

	/*
	 * Master enable - Due to WB DMAE writes performed before this
	 * register is re-initialized as part of the regular function init
	 */
	FUNC4(bp, PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER, 1);

	return 0;
}