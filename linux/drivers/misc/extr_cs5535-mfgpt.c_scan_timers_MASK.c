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
typedef  int uint16_t ;
struct cs5535_mfgpt_timer {int nr; struct cs5535_mfgpt_chip* chip; } ;
struct cs5535_mfgpt_chip {int /*<<< orphan*/  lock; int /*<<< orphan*/  avail; } ;

/* Variables and functions */
 int MFGPT_MAX_TIMERS ; 
 int /*<<< orphan*/  MFGPT_REG_SETUP ; 
 int MFGPT_SETUP_SETUP ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct cs5535_mfgpt_timer*,int /*<<< orphan*/ ) ; 
 int mfgpt_reset_timers ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct cs5535_mfgpt_chip *mfgpt)
{
	struct cs5535_mfgpt_timer timer = { .chip = mfgpt };
	unsigned long flags;
	int timers = 0;
	uint16_t val;
	int i;

	/* bios workaround */
	if (mfgpt_reset_timers == 1)
		FUNC2();
	else if (mfgpt_reset_timers == 2)
		FUNC3();

	/* just to be safe, protect this section w/ lock */
	FUNC4(&mfgpt->lock, flags);
	for (i = 0; i < MFGPT_MAX_TIMERS; i++) {
		timer.nr = i;
		val = FUNC1(&timer, MFGPT_REG_SETUP);
		if (!(val & MFGPT_SETUP_SETUP) || mfgpt_reset_timers == 2) {
			FUNC0(i, mfgpt->avail);
			timers++;
		}
	}
	FUNC5(&mfgpt->lock, flags);

	return timers;
}