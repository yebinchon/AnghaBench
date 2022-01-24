#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mvpp2_port {int ntxqs; TYPE_2__* priv; TYPE_1__** txqs; } ;
struct TYPE_5__ {scalar_t__ nthreads; } ;
struct TYPE_4__ {int id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 

__attribute__((used)) static void FUNC4(void *arg)
{
	struct mvpp2_port *port = arg;
	int queue;

	/* If the thread isn't used, don't do anything */
	if (FUNC3() > port->priv->nthreads)
		return;

	for (queue = 0; queue < port->ntxqs; queue++) {
		int id = port->txqs[queue]->id;

		FUNC2(port->priv,
				  FUNC1(port->priv, FUNC3()),
				  FUNC0(id));
	}
}