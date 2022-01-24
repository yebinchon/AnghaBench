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
struct ucb1x00_ts {int irq_disabled; int /*<<< orphan*/  irq_wait; int /*<<< orphan*/  irq_lock; TYPE_1__* ucb; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {scalar_t__ irq_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ UCB_IRQ_TSPX ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *id)
{
	struct ucb1x00_ts *ts = id;

	FUNC1(&ts->irq_lock);
	ts->irq_disabled = 1;
	FUNC0(ts->ucb->irq_base + UCB_IRQ_TSPX);
	FUNC2(&ts->irq_lock);
	FUNC3(&ts->irq_wait);

	return IRQ_HANDLED;
}