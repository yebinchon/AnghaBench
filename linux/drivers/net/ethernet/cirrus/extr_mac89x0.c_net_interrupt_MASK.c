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
struct net_local {int send_underrun; int /*<<< orphan*/  send_cmd; } ;
struct TYPE_2__ {int rx_missed_errors; int collisions; int /*<<< orphan*/  tx_aborted_errors; int /*<<< orphan*/  tx_window_errors; int /*<<< orphan*/  tx_heartbeat_errors; int /*<<< orphan*/  tx_carrier_errors; int /*<<< orphan*/  tx_errors; int /*<<< orphan*/  tx_packets; } ;
struct net_device {int base_addr; TYPE_1__ stats; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
#define  ISQ_BUFFER_EVENT 132 
 int ISQ_EVENT_MASK ; 
 scalar_t__ ISQ_PORT ; 
#define  ISQ_RECEIVER_EVENT 131 
#define  ISQ_RX_MISS_EVENT 130 
#define  ISQ_TRANSMITTER_EVENT 129 
#define  ISQ_TX_COL_EVENT 128 
 int READY_FOR_TX ; 
 int TX_16_COL ; 
 int /*<<< orphan*/  TX_AFTER_381 ; 
 int /*<<< orphan*/  TX_AFTER_ALL ; 
 int TX_LATE_COL ; 
 int TX_LOST_CRS ; 
 int TX_OK ; 
 int TX_SQE_ERROR ; 
 int TX_UNDERRUN ; 
 int /*<<< orphan*/  intr ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 struct net_local* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_local*,int /*<<< orphan*/ ,struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tx_err ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct net_device *dev = dev_id;
	struct net_local *lp;
	int ioaddr, status;

	ioaddr = dev->base_addr;
	lp = FUNC1(dev);

	/* we MUST read all the events out of the ISQ, otherwise we'll never
           get interrupted again.  As a consequence, we can't have any limit
           on the number of times we loop in the interrupt handler.  The
           hardware guarantees that eventually we'll run out of events.  Of
           course, if you're on a slow machine, and packets are arriving
           faster than you can read them off, you're screwed.  Hasta la
           vista, baby!  */
	while ((status = FUNC5(FUNC4(dev->base_addr + ISQ_PORT)))) {
		FUNC2(lp, intr, dev, "status=%04x\n", status);
		switch(status & ISQ_EVENT_MASK) {
		case ISQ_RECEIVER_EVENT:
			/* Got a packet(s). */
			FUNC0(dev);
			break;
		case ISQ_TRANSMITTER_EVENT:
			dev->stats.tx_packets++;
			FUNC3(dev);
			if ((status & TX_OK) == 0)
				dev->stats.tx_errors++;
			if (status & TX_LOST_CRS)
				dev->stats.tx_carrier_errors++;
			if (status & TX_SQE_ERROR)
				dev->stats.tx_heartbeat_errors++;
			if (status & TX_LATE_COL)
				dev->stats.tx_window_errors++;
			if (status & TX_16_COL)
				dev->stats.tx_aborted_errors++;
			break;
		case ISQ_BUFFER_EVENT:
			if (status & READY_FOR_TX) {
				/* we tried to transmit a packet earlier,
                                   but inexplicably ran out of buffers.
                                   That shouldn't happen since we only ever
                                   load one packet.  Shrug.  Do the right
                                   thing anyway. */
				FUNC3(dev);
			}
			if (status & TX_UNDERRUN) {
				FUNC2(lp, tx_err, dev, "transmit underrun\n");
                                lp->send_underrun++;
                                if (lp->send_underrun == 3) lp->send_cmd = TX_AFTER_381;
                                else if (lp->send_underrun == 6) lp->send_cmd = TX_AFTER_ALL;
                        }
			break;
		case ISQ_RX_MISS_EVENT:
			dev->stats.rx_missed_errors += (status >> 6);
			break;
		case ISQ_TX_COL_EVENT:
			dev->stats.collisions += (status >> 6);
			break;
		}
	}
	return IRQ_HANDLED;
}