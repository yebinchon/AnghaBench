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
struct TYPE_2__ {int tx_carrier_errors; int tx_heartbeat_errors; int collisions; int tx_window_errors; int rx_fifo_errors; int tx_packets; } ;
struct net_device {TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(int ioaddr, struct net_device *dev)
{
	/* Unlike the 3c5x9 we need not turn off stats updates while reading. */
	/* Switch to the stats window, and read everything. */
	FUNC0(6);
	dev->stats.tx_carrier_errors += FUNC1(ioaddr + 0);
	dev->stats.tx_heartbeat_errors += FUNC1(ioaddr + 1);
	/* Multiple collisions. */ FUNC1(ioaddr + 2);
	dev->stats.collisions += FUNC1(ioaddr + 3);
	dev->stats.tx_window_errors += FUNC1(ioaddr + 4);
	dev->stats.rx_fifo_errors += FUNC1(ioaddr + 5);
	dev->stats.tx_packets += FUNC1(ioaddr + 6);
	dev->stats.tx_packets += (FUNC1(ioaddr + 9) & 0x30) << 4;
						/* Rx packets   */ FUNC1(ioaddr + 7);
						/* Must read to clear */
	/* Tx deferrals */ FUNC1(ioaddr + 8);
	/* Don't bother with register 9, an extension of registers 6&7.
	   If we do use the 6&7 values the atomic update assumption above
	   is invalid. */
	FUNC2(ioaddr + 10);	/* Total Rx and Tx octets. */
	FUNC2(ioaddr + 12);
	/* New: On the Vortex we must also clear the BadSSD counter. */
	FUNC0(4);
	FUNC1(ioaddr + 12);

	/* We change back to window 7 (not 1) with the Vortex. */
	FUNC0(7);
}