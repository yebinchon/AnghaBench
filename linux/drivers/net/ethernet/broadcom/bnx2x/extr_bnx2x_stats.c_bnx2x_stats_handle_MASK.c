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
struct bnx2x {int stats_state; int /*<<< orphan*/  stats_lock; int /*<<< orphan*/  panic; } ;
typedef  enum bnx2x_stats_state { ____Placeholder_bnx2x_stats_state } bnx2x_stats_state ;
typedef  enum bnx2x_stats_event { ____Placeholder_bnx2x_stats_event } bnx2x_stats_event ;
struct TYPE_2__ {int next_state; int /*<<< orphan*/  (* action ) (struct bnx2x*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  BNX2X_MSG_STATS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 int HZ ; 
 int STATS_EVENT_UPDATE ; 
 TYPE_1__** bnx2x_stats_stm ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct bnx2x *bp, enum bnx2x_stats_event event)
{
	enum bnx2x_stats_state state = bp->stats_state;

	if (FUNC6(bp->panic))
		return;

	/* Statistics update run from timer context, and we don't want to stop
	 * that context in case someone is in the middle of a transition.
	 * For other events, wait a bit until lock is taken.
	 */
	if (FUNC3(&bp->stats_lock)) {
		if (event == STATS_EVENT_UPDATE)
			return;

		FUNC1(BNX2X_MSG_STATS,
		   "Unlikely stats' lock contention [event %d]\n", event);
		if (FUNC6(FUNC2(&bp->stats_lock, HZ / 10))) {
			FUNC0("Failed to take stats lock [event %d]\n",
				  event);
			return;
		}
	}

	bnx2x_stats_stm[state][event].action(bp);
	bp->stats_state = bnx2x_stats_stm[state][event].next_state;

	FUNC7(&bp->stats_lock);

	if ((event != STATS_EVENT_UPDATE) || FUNC4(bp))
		FUNC1(BNX2X_MSG_STATS, "state %d -> event %d -> state %d\n",
		   state, event, bp->stats_state);
}