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
typedef  int /*<<< orphan*/  u32 ;
struct mvpp2_port {int nrxqs; int /*<<< orphan*/  priv; TYPE_1__** rxqs; } ;
struct TYPE_2__ {int id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MVPP2_RXQ_DISABLE_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct mvpp2_port *port)
{
	u32 val;
	int lrxq, queue;

	for (lrxq = 0; lrxq < port->nrxqs; lrxq++) {
		queue = port->rxqs[lrxq]->id;
		val = FUNC1(port->priv, FUNC0(queue));
		val |= MVPP2_RXQ_DISABLE_MASK;
		FUNC2(port->priv, FUNC0(queue), val);
	}
}