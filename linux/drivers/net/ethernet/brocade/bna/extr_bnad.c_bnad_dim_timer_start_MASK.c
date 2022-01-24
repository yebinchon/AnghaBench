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
struct bnad {int cfg_flags; int /*<<< orphan*/  dim_timer; int /*<<< orphan*/  run_flags; } ;

/* Variables and functions */
 int BNAD_CF_DIM_ENABLED ; 
 int /*<<< orphan*/  BNAD_DIM_TIMER_FREQ ; 
 int /*<<< orphan*/  BNAD_RF_DIM_TIMER_RUNNING ; 
 int /*<<< orphan*/  bnad_dim_timeout ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC5(struct bnad *bnad)
{
	if (bnad->cfg_flags & BNAD_CF_DIM_ENABLED &&
	    !FUNC3(BNAD_RF_DIM_TIMER_RUNNING, &bnad->run_flags)) {
		FUNC4(&bnad->dim_timer, bnad_dim_timeout, 0);
		FUNC2(BNAD_RF_DIM_TIMER_RUNNING, &bnad->run_flags);
		FUNC0(&bnad->dim_timer,
			  jiffies + FUNC1(BNAD_DIM_TIMER_FREQ));
	}
}