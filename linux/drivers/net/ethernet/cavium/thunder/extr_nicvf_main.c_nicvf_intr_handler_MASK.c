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
struct nicvf_cq_poll {int cq_idx; int /*<<< orphan*/  napi; struct nicvf* nicvf; } ;
struct nicvf {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  NICVF_INTR_CQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nicvf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nicvf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nicvf*) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *cq_irq)
{
	struct nicvf_cq_poll *cq_poll = (struct nicvf_cq_poll *)cq_irq;
	struct nicvf *nic = cq_poll->nicvf;
	int qidx = cq_poll->cq_idx;

	FUNC3(nic);

	/* Disable interrupts */
	FUNC2(nic, NICVF_INTR_CQ, qidx);

	/* Schedule NAPI */
	FUNC0(&cq_poll->napi);

	/* Clear interrupt */
	FUNC1(nic, NICVF_INTR_CQ, qidx);

	return IRQ_HANDLED;
}