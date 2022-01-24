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
typedef  int u16 ;
struct timer_list {int dummy; } ;
struct bnx2x {int fw_drv_pulse_wr_seq; scalar_t__ state; scalar_t__ current_interval; int /*<<< orphan*/  timer; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  mcp_pulse_mb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 scalar_t__ BNX2X_STATE_OPEN ; 
 int FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*) ; 
 int DRV_PULSE_SEQ_MASK ; 
 scalar_t__ FUNC3 (struct bnx2x*) ; 
 scalar_t__ FUNC4 (struct bnx2x*) ; 
 int MCP_PULSE_SEQ_MASK ; 
 int FUNC5 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATS_EVENT_UPDATE ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC7 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct bnx2x*) ; 
 struct bnx2x* bp ; 
 struct bnx2x* FUNC9 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 TYPE_1__* func_mb ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void FUNC12(struct timer_list *t)
{
	struct bnx2x *bp = FUNC9(bp, t, timer);

	if (!FUNC11(bp->dev))
		return;

	if (FUNC3(bp) &&
	    !FUNC2(bp)) {
		int mb_idx = FUNC1(bp);
		u16 drv_pulse;
		u16 mcp_pulse;

		++bp->fw_drv_pulse_wr_seq;
		bp->fw_drv_pulse_wr_seq &= DRV_PULSE_SEQ_MASK;
		drv_pulse = bp->fw_drv_pulse_wr_seq;
		FUNC6(bp);

		mcp_pulse = (FUNC5(bp, func_mb[mb_idx].mcp_pulse_mb) &
			     MCP_PULSE_SEQ_MASK);
		/* The delta between driver pulse and mcp response
		 * should not get too big. If the MFW is more than 5 pulses
		 * behind, we should worry about it enough to generate an error
		 * log.
		 */
		if (((drv_pulse - mcp_pulse) & MCP_PULSE_SEQ_MASK) > 5)
			FUNC0("MFW seems hanged: drv_pulse (0x%x) != mcp_pulse (0x%x)\n",
				  drv_pulse, mcp_pulse);
	}

	if (bp->state == BNX2X_STATE_OPEN)
		FUNC7(bp, STATS_EVENT_UPDATE);

	/* sample pf vf bulletin board for new posts from pf */
	if (FUNC4(bp))
		FUNC8(bp);

	FUNC10(&bp->timer, jiffies + bp->current_interval);
}