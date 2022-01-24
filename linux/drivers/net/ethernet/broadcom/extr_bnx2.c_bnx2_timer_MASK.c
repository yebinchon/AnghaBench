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
struct timer_list {int dummy; } ;
struct bnx2 {int flags; int hc_cmd; int phy_flags; scalar_t__ current_interval; int /*<<< orphan*/  timer; scalar_t__ stats_ticks; TYPE_1__* stats_blk; int /*<<< orphan*/  intr_sem; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  stat_FwRxDrop; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bnx2*) ; 
 scalar_t__ BNX2_CHIP_5706 ; 
 int BNX2_FLAG_BROKEN_STATS ; 
 int BNX2_FLAG_ONE_SHOT_MSI ; 
 int BNX2_FLAG_USING_MSI ; 
 int /*<<< orphan*/  BNX2_FW_RX_DROP_COUNT ; 
 int /*<<< orphan*/  BNX2_HC_COMMAND ; 
 int BNX2_HC_COMMAND_STATS_NOW ; 
 int BNX2_PHY_FLAG_SERDES ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bnx2*) ; 
 struct bnx2* bp ; 
 struct bnx2* FUNC8 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void
FUNC11(struct timer_list *t)
{
	struct bnx2 *bp = FUNC8(bp, t, timer);

	if (!FUNC10(bp->dev))
		return;

	if (FUNC2(&bp->intr_sem) != 0)
		goto bnx2_restart_timer;

	if ((bp->flags & (BNX2_FLAG_USING_MSI | BNX2_FLAG_ONE_SHOT_MSI)) ==
	     BNX2_FLAG_USING_MSI)
		FUNC5(bp);

	FUNC7(bp);

	bp->stats_blk->stat_FwRxDrop =
		FUNC6(bp, BNX2_FW_RX_DROP_COUNT);

	/* workaround occasional corrupted counters */
	if ((bp->flags & BNX2_FLAG_BROKEN_STATS) && bp->stats_ticks)
		FUNC1(bp, BNX2_HC_COMMAND, bp->hc_cmd |
			BNX2_HC_COMMAND_STATS_NOW);

	if (bp->phy_flags & BNX2_PHY_FLAG_SERDES) {
		if (FUNC0(bp) == BNX2_CHIP_5706)
			FUNC3(bp);
		else
			FUNC4(bp);
	}

bnx2_restart_timer:
	FUNC9(&bp->timer, jiffies + bp->current_interval);
}