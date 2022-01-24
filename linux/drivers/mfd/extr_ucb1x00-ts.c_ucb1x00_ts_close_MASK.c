#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ucb1x00_ts {TYPE_1__* ucb; scalar_t__ rtask; } ;
struct input_dev {int dummy; } ;
struct TYPE_4__ {scalar_t__ irq_base; } ;

/* Variables and functions */
 scalar_t__ UCB_IRQ_TSPX ; 
 int /*<<< orphan*/  UCB_TS_CR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct ucb1x00_ts*) ; 
 struct ucb1x00_ts* FUNC1 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct input_dev *idev)
{
	struct ucb1x00_ts *ts = FUNC1(idev);

	if (ts->rtask)
		FUNC2(ts->rtask);

	FUNC4(ts->ucb);
	FUNC0(ts->ucb->irq_base + UCB_IRQ_TSPX, ts);
	FUNC5(ts->ucb, UCB_TS_CR, 0);
	FUNC3(ts->ucb);
}