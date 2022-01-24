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
struct hinic_eq_work {int /*<<< orphan*/  work; struct hinic_eq* data; } ;
struct TYPE_2__ {int /*<<< orphan*/  entry; } ;
struct hinic_eq {struct hinic_eq_work aeq_work; TYPE_1__ msix_entry; int /*<<< orphan*/  hwif; } ;
struct hinic_aeqs {int /*<<< orphan*/  workq; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 struct hinic_aeqs* FUNC0 (struct hinic_eq*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *data)
{
	struct hinic_eq_work *aeq_work;
	struct hinic_eq *aeq = data;
	struct hinic_aeqs *aeqs;

	/* clear resend timer cnt register */
	FUNC1(aeq->hwif, aeq->msix_entry.entry);

	aeq_work = &aeq->aeq_work;
	aeq_work->data = aeq;

	aeqs = FUNC0(aeq);
	FUNC2(aeqs->workq, &aeq_work->work);

	return IRQ_HANDLED;
}