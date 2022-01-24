#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ucb1x00_ts {int /*<<< orphan*/ * rtask; TYPE_1__* ucb; int /*<<< orphan*/  y_res; int /*<<< orphan*/  x_res; int /*<<< orphan*/  irq_wait; scalar_t__ irq_disabled; } ;
struct input_dev {int dummy; } ;
struct TYPE_3__ {scalar_t__ irq_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int EFAULT ; 
 unsigned long IRQF_TRIGGER_FALLING ; 
 unsigned long IRQF_TRIGGER_RISING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ UCB_IRQ_TSPX ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,struct ucb1x00_ts*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct ucb1x00_ts* FUNC4 (struct input_dev*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,struct ucb1x00_ts*,char*) ; 
 scalar_t__ FUNC6 () ; 
 int FUNC7 (scalar_t__,int /*<<< orphan*/ ,unsigned long,char*,struct ucb1x00_ts*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  ucb1x00_thread ; 
 int /*<<< orphan*/  ucb1x00_ts_irq ; 
 int /*<<< orphan*/  FUNC10 (struct ucb1x00_ts*) ; 
 int /*<<< orphan*/  FUNC11 (struct ucb1x00_ts*) ; 

__attribute__((used)) static int FUNC12(struct input_dev *idev)
{
	struct ucb1x00_ts *ts = FUNC4(idev);
	unsigned long flags = 0;
	int ret = 0;

	FUNC0(ts->rtask);

	if (FUNC6())
		flags = IRQF_TRIGGER_RISING;
	else
		flags = IRQF_TRIGGER_FALLING;

	ts->irq_disabled = 0;

	FUNC3(&ts->irq_wait);
	ret = FUNC7(ts->ucb->irq_base + UCB_IRQ_TSPX, ucb1x00_ts_irq,
			  flags, "ucb1x00-ts", ts);
	if (ret < 0)
		goto out;

	/*
	 * If we do this at all, we should allow the user to
	 * measure and read the X and Y resistance at any time.
	 */
	FUNC9(ts->ucb);
	ts->x_res = FUNC10(ts);
	ts->y_res = FUNC11(ts);
	FUNC8(ts->ucb);

	ts->rtask = FUNC5(ucb1x00_thread, ts, "ktsd");
	if (!FUNC1(ts->rtask)) {
		ret = 0;
	} else {
		FUNC2(ts->ucb->irq_base + UCB_IRQ_TSPX, ts);
		ts->rtask = NULL;
		ret = -EFAULT;
	}

 out:
	return ret;
}