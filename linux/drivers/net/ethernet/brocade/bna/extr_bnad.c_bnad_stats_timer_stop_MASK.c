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
struct bnad {int /*<<< orphan*/  stats_timer; int /*<<< orphan*/  bna_lock; int /*<<< orphan*/  run_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNAD_RF_STATS_TIMER_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct bnad *bnad)
{
	int to_del = 0;
	unsigned long flags;

	FUNC1(&bnad->bna_lock, flags);
	if (FUNC3(BNAD_RF_STATS_TIMER_RUNNING, &bnad->run_flags))
		to_del = 1;
	FUNC2(&bnad->bna_lock, flags);
	if (to_del)
		FUNC0(&bnad->stats_timer);
}