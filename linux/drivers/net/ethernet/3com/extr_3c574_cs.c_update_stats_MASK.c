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
typedef  int u8 ;
struct TYPE_2__ {int tx_carrier_errors; int tx_heartbeat_errors; int collisions; int tx_window_errors; int rx_fifo_errors; int tx_packets; } ;
struct net_device {unsigned int base_addr; TYPE_1__ stats; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int EL3_STATUS ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
	unsigned int ioaddr = dev->base_addr;
	u8 rx, tx, up;

	FUNC3("%s: updating the statistics.\n", dev->name);

	if (FUNC2(ioaddr+EL3_STATUS) == 0xffff) /* No card. */
		return;
		
	/* Unlike the 3c509 we need not turn off stats updates while reading. */
	/* Switch to the stats window, and read everything. */
	FUNC0(6);
	dev->stats.tx_carrier_errors 		+= FUNC1(ioaddr + 0);
	dev->stats.tx_heartbeat_errors		+= FUNC1(ioaddr + 1);
	/* Multiple collisions. */	   	FUNC1(ioaddr + 2);
	dev->stats.collisions			+= FUNC1(ioaddr + 3);
	dev->stats.tx_window_errors		+= FUNC1(ioaddr + 4);
	dev->stats.rx_fifo_errors		+= FUNC1(ioaddr + 5);
	dev->stats.tx_packets			+= FUNC1(ioaddr + 6);
	up		 			 = FUNC1(ioaddr + 9);
	dev->stats.tx_packets			+= (up&0x30) << 4;
	/* Rx packets   */			   FUNC1(ioaddr + 7);
	/* Tx deferrals */			   FUNC1(ioaddr + 8);
	rx		 			 = FUNC2(ioaddr + 10);
	tx					 = FUNC2(ioaddr + 12);

	FUNC0(4);
	/* BadSSD */				   FUNC1(ioaddr + 12);
	up					 = FUNC1(ioaddr + 13);

	FUNC0(1);
}