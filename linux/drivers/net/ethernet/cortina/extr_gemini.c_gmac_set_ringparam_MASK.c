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
struct gemini_ethernet_port {int txq_order; int irq_every_tx_packets; void* rxq_order; } ;
struct ethtool_ringparam {scalar_t__ tx_pending; scalar_t__ rx_pending; } ;

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (struct gemini_ethernet_port*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 void* FUNC2 (int,scalar_t__) ; 
 struct gemini_ethernet_port* FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *netdev,
			      struct ethtool_ringparam *rp)
{
	struct gemini_ethernet_port *port = FUNC3(netdev);
	int err = 0;

	if (FUNC4(netdev))
		return -EBUSY;

	if (rp->rx_pending) {
		port->rxq_order = FUNC2(15, FUNC1(rp->rx_pending - 1) + 1);
		err = FUNC0(port);
	}
	if (rp->tx_pending) {
		port->txq_order = FUNC2(15, FUNC1(rp->tx_pending - 1) + 1);
		port->irq_every_tx_packets = 1 << (port->txq_order - 2);
	}

	return err;
}