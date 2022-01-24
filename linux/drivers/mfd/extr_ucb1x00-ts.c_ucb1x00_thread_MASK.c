#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ucb1x00_ts {int /*<<< orphan*/ * rtask; int /*<<< orphan*/  irq_wait; TYPE_1__* ucb; int /*<<< orphan*/  irq_lock; scalar_t__ irq_disabled; } ;
struct TYPE_5__ {scalar_t__ irq_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int HZ ; 
 long MAX_SCHEDULE_TIMEOUT ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 scalar_t__ UCB_IRQ_TSPX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (struct ucb1x00_ts*) ; 
 int /*<<< orphan*/  FUNC16 (struct ucb1x00_ts*,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC17 (struct ucb1x00_ts*) ; 
 scalar_t__ FUNC18 (struct ucb1x00_ts*) ; 
 unsigned int FUNC19 (struct ucb1x00_ts*) ; 
 unsigned int FUNC20 (struct ucb1x00_ts*) ; 
 unsigned int FUNC21 (struct ucb1x00_ts*) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC22(void *_ts)
{
	struct ucb1x00_ts *ts = _ts;
	FUNC0(wait, current);
	bool frozen, ignore = false;
	int valid = 0;

	FUNC8();
	FUNC1(&ts->irq_wait, &wait);
	while (!FUNC3(&frozen)) {
		unsigned int x, y, p;
		signed long timeout;

		if (frozen)
			ignore = true;

		FUNC12(ts->ucb);

		x = FUNC20(ts);
		y = FUNC21(ts);
		p = FUNC19(ts);

		/*
		 * Switch back to interrupt mode.
		 */
		FUNC17(ts);
		FUNC11(ts->ucb);

		FUNC4(10);

		FUNC14(ts->ucb);


		if (FUNC18(ts)) {
			FUNC7(TASK_INTERRUPTIBLE);

			FUNC9(&ts->irq_lock);
			if (ts->irq_disabled) {
				ts->irq_disabled = 0;
				FUNC2(ts->ucb->irq_base + UCB_IRQ_TSPX);
			}
			FUNC10(&ts->irq_lock);
			FUNC13(ts->ucb);

			/*
			 * If we spat out a valid sample set last time,
			 * spit out a "pen off" sample here.
			 */
			if (valid) {
				FUNC15(ts);
				valid = 0;
			}

			timeout = MAX_SCHEDULE_TIMEOUT;
		} else {
			FUNC13(ts->ucb);

			/*
			 * Filtering is policy.  Policy belongs in user
			 * space.  We therefore leave it to user space
			 * to do any filtering they please.
			 */
			if (!ignore) {
				FUNC16(ts, p, x, y);
				valid = 1;
			}

			FUNC7(TASK_INTERRUPTIBLE);
			timeout = HZ / 100;
		}

		FUNC6(timeout);
	}

	FUNC5(&ts->irq_wait, &wait);

	ts->rtask = NULL;
	return 0;
}