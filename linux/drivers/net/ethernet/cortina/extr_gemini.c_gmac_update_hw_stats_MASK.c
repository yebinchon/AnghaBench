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
struct net_device {int dev_id; } ;
struct TYPE_2__ {unsigned int rx_missed_errors; unsigned int multicast; } ;
struct gemini_ethernet_port {unsigned int* hw_stats; int /*<<< orphan*/  ir_stats_syncp; TYPE_1__ stats; scalar_t__ gmac_base; struct gemini_ethernet* geth; } ;
struct gemini_ethernet {int /*<<< orphan*/  irq_lock; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ GLOBAL_INTERRUPT_STATUS_4_REG ; 
 int GMAC0_MIB_INT_BIT ; 
 scalar_t__ GMAC_IN_BCAST ; 
 scalar_t__ GMAC_IN_DISCARDS ; 
 scalar_t__ GMAC_IN_ERRORS ; 
 scalar_t__ GMAC_IN_MAC1 ; 
 scalar_t__ GMAC_IN_MAC2 ; 
 scalar_t__ GMAC_IN_MCAST ; 
 struct gemini_ethernet_port* FUNC0 (struct net_device*) ; 
 unsigned int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct net_device *netdev)
{
	struct gemini_ethernet_port *port = FUNC0(netdev);
	unsigned int rx_discards, rx_mcast, rx_bcast;
	struct gemini_ethernet *geth = port->geth;
	unsigned long flags;

	FUNC2(&geth->irq_lock, flags);
	FUNC4(&port->ir_stats_syncp);

	rx_discards = FUNC1(port->gmac_base + GMAC_IN_DISCARDS);
	port->hw_stats[0] += rx_discards;
	port->hw_stats[1] += FUNC1(port->gmac_base + GMAC_IN_ERRORS);
	rx_mcast = FUNC1(port->gmac_base + GMAC_IN_MCAST);
	port->hw_stats[2] += rx_mcast;
	rx_bcast = FUNC1(port->gmac_base + GMAC_IN_BCAST);
	port->hw_stats[3] += rx_bcast;
	port->hw_stats[4] += FUNC1(port->gmac_base + GMAC_IN_MAC1);
	port->hw_stats[5] += FUNC1(port->gmac_base + GMAC_IN_MAC2);

	port->stats.rx_missed_errors += rx_discards;
	port->stats.multicast += rx_mcast;
	port->stats.multicast += rx_bcast;

	FUNC6(GMAC0_MIB_INT_BIT << (netdev->dev_id * 8),
	       geth->base + GLOBAL_INTERRUPT_STATUS_4_REG);

	FUNC5(&port->ir_stats_syncp);
	FUNC3(&geth->irq_lock, flags);
}