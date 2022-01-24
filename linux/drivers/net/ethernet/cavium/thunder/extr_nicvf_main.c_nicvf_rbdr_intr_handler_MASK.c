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
typedef  scalar_t__ u8 ;
struct nicvf {int /*<<< orphan*/  rbdr_task; TYPE_1__* qs; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {scalar_t__ rbdr_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  NICVF_INTR_RBDR ; 
 int /*<<< orphan*/  FUNC0 (struct nicvf*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct nicvf*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct nicvf*) ; 
 int /*<<< orphan*/  FUNC3 (struct nicvf*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *nicvf_irq)
{
	struct nicvf *nic = (struct nicvf *)nicvf_irq;
	u8 qidx;


	FUNC2(nic);

	/* Disable RBDR interrupt and schedule softirq */
	for (qidx = 0; qidx < nic->qs->rbdr_cnt; qidx++) {
		if (!FUNC3(nic, NICVF_INTR_RBDR, qidx))
			continue;
		FUNC1(nic, NICVF_INTR_RBDR, qidx);
		FUNC4(&nic->rbdr_task);
		/* Clear interrupt */
		FUNC0(nic, NICVF_INTR_RBDR, qidx);
	}

	return IRQ_HANDLED;
}