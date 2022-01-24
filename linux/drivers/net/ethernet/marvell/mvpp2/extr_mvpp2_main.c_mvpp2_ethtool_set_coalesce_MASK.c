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
struct net_device {int dummy; } ;
struct mvpp2_tx_queue {int /*<<< orphan*/  done_pkts_coal; } ;
struct mvpp2_rx_queue {int /*<<< orphan*/  pkts_coal; int /*<<< orphan*/  time_coal; } ;
struct mvpp2_port {int nrxqs; int ntxqs; scalar_t__ has_tx_irqs; struct mvpp2_tx_queue** txqs; int /*<<< orphan*/  tx_time_coal; struct mvpp2_rx_queue** rxqs; } ;
struct ethtool_coalesce {int /*<<< orphan*/  tx_max_coalesced_frames; int /*<<< orphan*/  tx_coalesce_usecs; int /*<<< orphan*/  rx_max_coalesced_frames; int /*<<< orphan*/  rx_coalesce_usecs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mvpp2_port*,struct mvpp2_rx_queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct mvpp2_port*,struct mvpp2_rx_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct mvpp2_port*,struct mvpp2_tx_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct mvpp2_port*) ; 
 struct mvpp2_port* FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev,
				      struct ethtool_coalesce *c)
{
	struct mvpp2_port *port = FUNC4(dev);
	int queue;

	for (queue = 0; queue < port->nrxqs; queue++) {
		struct mvpp2_rx_queue *rxq = port->rxqs[queue];

		rxq->time_coal = c->rx_coalesce_usecs;
		rxq->pkts_coal = c->rx_max_coalesced_frames;
		FUNC0(port, rxq);
		FUNC1(port, rxq);
	}

	if (port->has_tx_irqs) {
		port->tx_time_coal = c->tx_coalesce_usecs;
		FUNC3(port);
	}

	for (queue = 0; queue < port->ntxqs; queue++) {
		struct mvpp2_tx_queue *txq = port->txqs[queue];

		txq->done_pkts_coal = c->tx_max_coalesced_frames;

		if (port->has_tx_irqs)
			FUNC2(port, txq);
	}

	return 0;
}