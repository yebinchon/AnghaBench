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
struct mvpp2_queue_vector {int /*<<< orphan*/  irq; int /*<<< orphan*/ * mask; } ;
struct mvpp2_port {int nqvecs; struct mvpp2_queue_vector* qvecs; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_NO_BALANCING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mvpp2_queue_vector*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct mvpp2_port *port)
{
	int i;

	for (i = 0; i < port->nqvecs; i++) {
		struct mvpp2_queue_vector *qv = port->qvecs + i;

		FUNC2(qv->irq, NULL);
		FUNC3(qv->mask);
		qv->mask = NULL;
		FUNC1(qv->irq, IRQ_NO_BALANCING);
		FUNC0(qv->irq, qv);
	}
}