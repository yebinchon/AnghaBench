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
struct net_device {int dummy; } ;
struct mvpp2_port_pcpu {int timer_scheduled; int /*<<< orphan*/  tx_done_timer; } ;
struct mvpp2_port {int /*<<< orphan*/  stats_work; int /*<<< orphan*/  pcpu; TYPE_1__* priv; int /*<<< orphan*/  has_tx_irqs; scalar_t__ link_irq; scalar_t__ phylink; } ;
struct TYPE_2__ {unsigned int nthreads; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct mvpp2_port*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mvpp2_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct mvpp2_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct mvpp2_port*) ; 
 int /*<<< orphan*/  mvpp2_interrupts_mask ; 
 int /*<<< orphan*/  FUNC6 (struct mvpp2_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct mvpp2_port*) ; 
 int /*<<< orphan*/  FUNC8 (struct mvpp2_port*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct mvpp2_port*) ; 
 struct mvpp2_port* FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct mvpp2_port*,int) ; 
 struct mvpp2_port_pcpu* FUNC12 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 

__attribute__((used)) static int FUNC14(struct net_device *dev)
{
	struct mvpp2_port *port = FUNC10(dev);
	struct mvpp2_port_pcpu *port_pcpu;
	unsigned int thread;

	FUNC9(port);

	/* Mask interrupts on all threads */
	FUNC11(mvpp2_interrupts_mask, port, 1);
	FUNC8(port, true);

	if (port->phylink)
		FUNC13(port->phylink);
	if (port->link_irq)
		FUNC1(port->link_irq, port);

	FUNC6(port);
	if (!port->has_tx_irqs) {
		for (thread = 0; thread < port->priv->nthreads; thread++) {
			port_pcpu = FUNC12(port->pcpu, thread);

			FUNC2(&port_pcpu->tx_done_timer);
			port_pcpu->timer_scheduled = false;
		}
	}
	FUNC4(port);
	FUNC5(port);

	FUNC0(&port->stats_work);

	FUNC7(port);
	FUNC3(port);

	return 0;
}