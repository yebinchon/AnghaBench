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
struct timer_list {int dummy; } ;
struct bnad {int /*<<< orphan*/  bna_lock; int /*<<< orphan*/  bna; int /*<<< orphan*/  run_flags; int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNAD_RF_STATS_TIMER_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct bnad* bnad ; 
 struct bnad* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  stats_timer ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct timer_list *t)
{
	struct bnad *bnad = FUNC1(bnad, t, stats_timer);
	unsigned long flags;

	if (!FUNC2(bnad->netdev) ||
		!FUNC5(BNAD_RF_STATS_TIMER_RUNNING, &bnad->run_flags))
		return;

	FUNC3(&bnad->bna_lock, flags);
	FUNC0(&bnad->bna);
	FUNC4(&bnad->bna_lock, flags);
}