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
struct bnad {int /*<<< orphan*/  stats_timer; int /*<<< orphan*/  run_flags; int /*<<< orphan*/  netdev; } ;
struct bna_stats {int dummy; } ;
typedef  enum bna_cb_status { ____Placeholder_bna_cb_status } bna_cb_status ;

/* Variables and functions */
 int /*<<< orphan*/  BNAD_RF_STATS_TIMER_RUNNING ; 
 int /*<<< orphan*/  BNAD_STATS_TIMER_FREQ ; 
 int /*<<< orphan*/  FUNC0 (struct bnad*,int /*<<< orphan*/ ) ; 
 int BNA_CB_SUCCESS ; 
 int /*<<< orphan*/  hw_stats_updates ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC5(struct bnad *bnad, enum bna_cb_status status,
		       struct bna_stats *stats)
{
	if (status == BNA_CB_SUCCESS)
		FUNC0(bnad, hw_stats_updates);

	if (!FUNC3(bnad->netdev) ||
		!FUNC4(BNAD_RF_STATS_TIMER_RUNNING, &bnad->run_flags))
		return;

	FUNC1(&bnad->stats_timer,
		  jiffies + FUNC2(BNAD_STATS_TIMER_FREQ));
}