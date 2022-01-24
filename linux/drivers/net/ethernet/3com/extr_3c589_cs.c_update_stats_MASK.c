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
struct TYPE_2__ {int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  rx_fifo_errors; int /*<<< orphan*/  tx_window_errors; int /*<<< orphan*/  collisions; int /*<<< orphan*/  tx_heartbeat_errors; int /*<<< orphan*/  tx_carrier_errors; } ;
struct net_device {unsigned int base_addr; TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ EL3_CMD ; 
 int /*<<< orphan*/  StatsDisable ; 
 int /*<<< orphan*/  StatsEnable ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev)
{
	unsigned int ioaddr = dev->base_addr;

	FUNC3(dev, "updating the statistics.\n");
	/* Turn off statistics updates while reading. */
	FUNC4(StatsDisable, ioaddr + EL3_CMD);
	/* Switch to the stats window, and read everything. */
	FUNC0(6);
	dev->stats.tx_carrier_errors	+= FUNC1(ioaddr + 0);
	dev->stats.tx_heartbeat_errors	+= FUNC1(ioaddr + 1);
	/* Multiple collisions. */
	FUNC1(ioaddr + 2);
	dev->stats.collisions		+= FUNC1(ioaddr + 3);
	dev->stats.tx_window_errors		+= FUNC1(ioaddr + 4);
	dev->stats.rx_fifo_errors		+= FUNC1(ioaddr + 5);
	dev->stats.tx_packets		+= FUNC1(ioaddr + 6);
	/* Rx packets   */
	FUNC1(ioaddr + 7);
	/* Tx deferrals */
	FUNC1(ioaddr + 8);
	/* Rx octets */
	FUNC2(ioaddr + 10);
	/* Tx octets */
	FUNC2(ioaddr + 12);

	/* Back to window 1, and turn statistics back on. */
	FUNC0(1);
	FUNC4(StatsEnable, ioaddr + EL3_CMD);
}