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
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ phy_retry; int /*<<< orphan*/  phy_retry_expires; scalar_t__ link_up; } ;
struct bnxt {int fw_cap; int flags; scalar_t__ current_interval; int /*<<< orphan*/  timer; int /*<<< orphan*/  sp_event; struct net_device* dev; TYPE_1__ link_info; scalar_t__ stats_coal_ticks; int /*<<< orphan*/  intr_sem; } ;

/* Variables and functions */
 int BNXT_FLAG_CHIP_P5 ; 
 int BNXT_FLAG_PORT_STATS ; 
 int /*<<< orphan*/  BNXT_FLOW_STATS_SP_EVENT ; 
 int BNXT_FW_CAP_ERROR_RECOVERY ; 
 int /*<<< orphan*/  BNXT_PERIODIC_STATS_SP_EVENT ; 
 int /*<<< orphan*/  BNXT_RING_COAL_NOW_SP_EVENT ; 
 int /*<<< orphan*/  BNXT_UPDATE_PHY_SP_EVENT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnxt*) ; 
 scalar_t__ FUNC3 (struct bnxt*) ; 
 struct bnxt* bp ; 
 struct bnxt* FUNC4 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,char*) ; 
 scalar_t__ FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void FUNC11(struct timer_list *t)
{
	struct bnxt *bp = FUNC4(bp, t, timer);
	struct net_device *dev = bp->dev;

	if (!FUNC8(dev))
		return;

	if (FUNC0(&bp->intr_sem) != 0)
		goto bnxt_restart_timer;

	if (bp->fw_cap & BNXT_FW_CAP_ERROR_RECOVERY)
		FUNC1(bp);

	if (bp->link_info.link_up && (bp->flags & BNXT_FLAG_PORT_STATS) &&
	    bp->stats_coal_ticks) {
		FUNC9(BNXT_PERIODIC_STATS_SP_EVENT, &bp->sp_event);
		FUNC2(bp);
	}

	if (FUNC3(bp)) {
		FUNC9(BNXT_FLOW_STATS_SP_EVENT, &bp->sp_event);
		FUNC2(bp);
	}

	if (bp->link_info.phy_retry) {
		if (FUNC10(jiffies, bp->link_info.phy_retry_expires)) {
			bp->link_info.phy_retry = 0;
			FUNC6(bp->dev, "failed to update phy settings after maximum retries.\n");
		} else {
			FUNC9(BNXT_UPDATE_PHY_SP_EVENT, &bp->sp_event);
			FUNC2(bp);
		}
	}

	if ((bp->flags & BNXT_FLAG_CHIP_P5) && FUNC7(dev)) {
		FUNC9(BNXT_RING_COAL_NOW_SP_EVENT, &bp->sp_event);
		FUNC2(bp);
	}
bnxt_restart_timer:
	FUNC5(&bp->timer, jiffies + bp->current_interval);
}