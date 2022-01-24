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
struct bnx2x {int /*<<< orphan*/  dev; int /*<<< orphan*/  sp_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_FILTER_ISCSI_ETH_START_SCHED ; 
 int /*<<< orphan*/  BNX2X_FILTER_ISCSI_ETH_STOP_SCHED ; 
 int /*<<< orphan*/  BNX2X_FILTER_RX_MODE_PENDING ; 
 int /*<<< orphan*/  BNX2X_FILTER_RX_MODE_SCHED ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2x*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct bnx2x *bp)
{
	FUNC3(bp->dev);

	FUNC2(BNX2X_FILTER_RX_MODE_PENDING, &bp->sp_state);

	/* Send rx_mode command again if was requested */
	if (FUNC5(BNX2X_FILTER_RX_MODE_SCHED, &bp->sp_state))
		FUNC1(bp);
	else if (FUNC5(BNX2X_FILTER_ISCSI_ETH_START_SCHED,
				    &bp->sp_state))
		FUNC0(bp, true);
	else if (FUNC5(BNX2X_FILTER_ISCSI_ETH_STOP_SCHED,
				    &bp->sp_state))
		FUNC0(bp, false);

	FUNC4(bp->dev);
}