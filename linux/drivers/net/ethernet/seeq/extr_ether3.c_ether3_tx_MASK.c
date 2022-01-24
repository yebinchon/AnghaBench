#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int collisions; int /*<<< orphan*/  tx_fifo_errors; int /*<<< orphan*/  tx_errors; int /*<<< orphan*/  tx_packets; } ;
struct net_device {TYPE_1__ stats; } ;
struct TYPE_4__ {unsigned int tx_tail; } ;

/* Variables and functions */
 unsigned long TXHDR_TRANSMIT ; 
 unsigned long TXSTAT_16COLLISIONS ; 
 unsigned long TXSTAT_BABBLED ; 
 unsigned long TXSTAT_DONE ; 
 int /*<<< orphan*/  buffer_read ; 
 unsigned long FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 TYPE_2__* FUNC3 (struct net_device*) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
	unsigned int tx_tail = FUNC3(dev)->tx_tail;
	int max_work = 14;

	do {
	    	unsigned long status;

    		/*
	    	 * Read the packet header
    		 */
	    	FUNC1(dev, buffer_read, tx_tail * 0x600);
    		status = FUNC0(dev);

		/*
		 * Check to see if this packet has been transmitted
		 */
		if ((status & (TXSTAT_DONE | TXHDR_TRANSMIT)) !=
		    (TXSTAT_DONE | TXHDR_TRANSMIT))
			break;

		/*
		 * Update errors
		 */
		if (!(status & (TXSTAT_BABBLED | TXSTAT_16COLLISIONS)))
			dev->stats.tx_packets++;
		else {
			dev->stats.tx_errors++;
			if (status & TXSTAT_16COLLISIONS)
				dev->stats.collisions += 16;
			if (status & TXSTAT_BABBLED)
				dev->stats.tx_fifo_errors++;
		}

		tx_tail = (tx_tail + 1) & 15;
	} while (--max_work);

	if (FUNC3(dev)->tx_tail != tx_tail) {
		FUNC3(dev)->tx_tail = tx_tail;
		FUNC2(dev);
	}
}