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
typedef  int uint16_t ;
struct cs5535_mfgpt_timer {TYPE_1__* chip; int /*<<< orphan*/  nr; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  avail; } ;

/* Variables and functions */
 int /*<<< orphan*/  MFGPT_REG_SETUP ; 
 int MFGPT_SETUP_SETUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct cs5535_mfgpt_timer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cs5535_mfgpt_timer*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(struct cs5535_mfgpt_timer *timer)
{
	unsigned long flags;
	uint16_t val;

	/* timer can be made available again only if never set up */
	val = FUNC1(timer, MFGPT_REG_SETUP);
	if (!(val & MFGPT_SETUP_SETUP)) {
		FUNC3(&timer->chip->lock, flags);
		FUNC0(timer->nr, timer->chip->avail);
		FUNC4(&timer->chip->lock, flags);
	}

	FUNC2(timer);
}