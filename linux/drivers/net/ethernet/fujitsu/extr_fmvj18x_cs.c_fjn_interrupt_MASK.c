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
struct TYPE_2__ {unsigned short tx_packets; } ;
struct net_device {unsigned int base_addr; unsigned short name; TYPE_1__ stats; } ;
struct local_info {unsigned short sent; int tx_queue; int /*<<< orphan*/ * base; scalar_t__ tx_started; scalar_t__ tx_queue_len; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 unsigned short DO_TX ; 
 unsigned short D_RX_INTR ; 
 unsigned short D_TX_INTR ; 
 unsigned short F_BUF_EMP ; 
 unsigned short F_TMT_RDY ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ RX_INTR ; 
 scalar_t__ RX_MODE ; 
 scalar_t__ RX_STATUS ; 
 scalar_t__ TX_INTR ; 
 scalar_t__ TX_START ; 
 scalar_t__ TX_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 unsigned short FUNC1 (scalar_t__) ; 
 struct local_info* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned short,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*,unsigned short,...) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC10(int dummy, void *dev_id)
{
    struct net_device *dev = dev_id;
    struct local_info *lp = FUNC2(dev);
    unsigned int ioaddr;
    unsigned short tx_stat, rx_stat;

    ioaddr = dev->base_addr;

    /* avoid multiple interrupts */
    FUNC6(0x0000, ioaddr + TX_INTR);

    /* wait for a while */
    FUNC8(1);

    /* get status */
    tx_stat = FUNC1(ioaddr + TX_STATUS);
    rx_stat = FUNC1(ioaddr + RX_STATUS);

    /* clear status */
    FUNC5(tx_stat, ioaddr + TX_STATUS);
    FUNC5(rx_stat, ioaddr + RX_STATUS);
    
    FUNC7("%s: interrupt, rx_status %02x.\n", dev->name, rx_stat);
    FUNC7("               tx_status %02x.\n", tx_stat);
    
    if (rx_stat || (FUNC1(ioaddr + RX_MODE) & F_BUF_EMP) == 0) {
	/* there is packet(s) in rx buffer */
	FUNC0(dev);
    }
    if (tx_stat & F_TMT_RDY) {
	dev->stats.tx_packets += lp->sent ;
        lp->sent = 0 ;
	if (lp->tx_queue) {
	    FUNC5(DO_TX | lp->tx_queue, ioaddr + TX_START);
	    lp->sent = lp->tx_queue ;
	    lp->tx_queue = 0;
	    lp->tx_queue_len = 0;
	    FUNC3(dev);
	} else {
	    lp->tx_started = 0;
	}
	FUNC4(dev);
    }
    FUNC7("%s: exiting interrupt,\n", dev->name);
    FUNC7("    tx_status %02x, rx_status %02x.\n", tx_stat, rx_stat);

    FUNC5(D_TX_INTR, ioaddr + TX_INTR);
    FUNC5(D_RX_INTR, ioaddr + RX_INTR);

    if (lp->base != NULL) {
	/* Ack interrupt for multifunction card */
	FUNC9(0x01, lp->base+0x802);
	FUNC9(0x09, lp->base+0x822);
    }

    return IRQ_HANDLED;

}