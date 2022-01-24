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
struct qcaspi {TYPE_1__* spi_thread; int /*<<< orphan*/  intr_req; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {scalar_t__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

__attribute__((used)) static irqreturn_t
FUNC1(int irq, void *data)
{
	struct qcaspi *qca = data;

	qca->intr_req++;
	if (qca->spi_thread &&
	    qca->spi_thread->state != TASK_RUNNING)
		FUNC0(qca->spi_thread);

	return IRQ_HANDLED;
}