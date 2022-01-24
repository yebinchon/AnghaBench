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
struct cs5535_mfgpt_timer {int nr; struct cs5535_mfgpt_chip* chip; } ;
struct cs5535_mfgpt_chip {TYPE_1__* pdev; int /*<<< orphan*/  lock; int /*<<< orphan*/  avail; int /*<<< orphan*/  initialized; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MFGPT_DOMAIN_WORKING ; 
 int MFGPT_MAX_TIMERS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct cs5535_mfgpt_chip cs5535_mfgpt_chip ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ,int) ; 
 struct cs5535_mfgpt_timer* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 

struct cs5535_mfgpt_timer *FUNC9(int timer_nr, int domain)
{
	struct cs5535_mfgpt_chip *mfgpt = &cs5535_mfgpt_chip;
	struct cs5535_mfgpt_timer *timer = NULL;
	unsigned long flags;
	int max;

	if (!mfgpt->initialized)
		goto done;

	/* only allocate timers from the working domain if requested */
	if (domain == MFGPT_DOMAIN_WORKING)
		max = 6;
	else
		max = MFGPT_MAX_TIMERS;

	if (timer_nr >= max) {
		/* programmer error.  silly programmers! */
		FUNC0(1);
		goto done;
	}

	FUNC6(&mfgpt->lock, flags);
	if (timer_nr < 0) {
		unsigned long t;

		/* try to find any available timer */
		t = FUNC4(mfgpt->avail, max);
		/* set timer_nr to -1 if no timers available */
		timer_nr = t < max ? (int) t : -1;
	} else {
		/* check if the requested timer's available */
		if (!FUNC8(timer_nr, mfgpt->avail))
			timer_nr = -1;
	}

	if (timer_nr >= 0)
		/* if timer_nr is not -1, it's an available timer */
		FUNC1(timer_nr, mfgpt->avail);
	FUNC7(&mfgpt->lock, flags);

	if (timer_nr < 0)
		goto done;

	timer = FUNC5(sizeof(*timer), GFP_KERNEL);
	if (!timer) {
		/* aw hell */
		FUNC6(&mfgpt->lock, flags);
		FUNC2(timer_nr, mfgpt->avail);
		FUNC7(&mfgpt->lock, flags);
		goto done;
	}
	timer->chip = mfgpt;
	timer->nr = timer_nr;
	FUNC3(&mfgpt->pdev->dev, "registered timer %d\n", timer_nr);

done:
	return timer;
}