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
struct mvpp2_port {int ntxqs; int /*<<< orphan*/  dev; scalar_t__ link_irq; TYPE_1__** txqs; int /*<<< orphan*/  stats; int /*<<< orphan*/  pcpu; scalar_t__ phylink; } ;
struct TYPE_2__ {int /*<<< orphan*/  pcpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct mvpp2_port*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct mvpp2_port *port)
{
	int i;

	FUNC5(port->dev);
	if (port->phylink)
		FUNC4(port->phylink);
	FUNC1(port->pcpu);
	FUNC1(port->stats);
	for (i = 0; i < port->ntxqs; i++)
		FUNC1(port->txqs[i]->pcpu);
	FUNC3(port);
	if (port->link_irq)
		FUNC2(port->link_irq);
	FUNC0(port->dev);
}