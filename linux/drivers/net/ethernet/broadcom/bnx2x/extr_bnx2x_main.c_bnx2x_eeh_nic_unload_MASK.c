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
struct bnx2x {int /*<<< orphan*/  dev; int /*<<< orphan*/  stats_lock; int /*<<< orphan*/  stats_state; int /*<<< orphan*/  period_task; int /*<<< orphan*/  sp_task; int /*<<< orphan*/  timer; int /*<<< orphan*/  rx_mode; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_RX_MODE_NONE ; 
 int /*<<< orphan*/  BNX2X_STATE_CLOSING_WAIT4_HALT ; 
 int /*<<< orphan*/  CNIC_CTL_STOP_CMD ; 
 scalar_t__ FUNC0 (struct bnx2x*) ; 
 int HZ ; 
 int /*<<< orphan*/  STATS_STATE_DISABLED ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct bnx2x *bp)
{
	bp->state = BNX2X_STATE_CLOSING_WAIT4_HALT;

	bp->rx_mode = BNX2X_RX_MODE_NONE;

	if (FUNC0(bp))
		FUNC1(bp, CNIC_CTL_STOP_CMD);

	/* Stop Tx */
	FUNC5(bp);
	/* Delete all NAPI objects */
	FUNC2(bp);
	if (FUNC0(bp))
		FUNC3(bp);
	FUNC9(bp->dev);

	FUNC7(&bp->timer);
	FUNC6(&bp->sp_task);
	FUNC6(&bp->period_task);

	if (!FUNC8(&bp->stats_lock, HZ / 10)) {
		bp->stats_state = STATS_STATE_DISABLED;
		FUNC11(&bp->stats_lock);
	}

	FUNC4(bp);

	FUNC10(bp->dev);

	return 0;
}