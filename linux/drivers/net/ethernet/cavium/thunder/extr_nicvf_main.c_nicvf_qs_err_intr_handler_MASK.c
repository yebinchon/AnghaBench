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
struct nicvf {int /*<<< orphan*/  qs_err_task; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  NICVF_INTR_QS_ERR ; 
 int /*<<< orphan*/  FUNC0 (struct nicvf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nicvf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nicvf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *nicvf_irq)
{
	struct nicvf *nic = (struct nicvf *)nicvf_irq;

	FUNC2(nic);

	/* Disable Qset err interrupt and schedule softirq */
	FUNC1(nic, NICVF_INTR_QS_ERR, 0);
	FUNC3(&nic->qs_err_task);
	FUNC0(nic, NICVF_INTR_QS_ERR, 0);

	return IRQ_HANDLED;
}