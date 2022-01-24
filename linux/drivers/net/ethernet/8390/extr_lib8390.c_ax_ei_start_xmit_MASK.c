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
struct sk_buff {int len; char* data; } ;
struct TYPE_2__ {int tx_bytes; int /*<<< orphan*/  tx_errors; } ;
struct net_device {unsigned long base_addr; TYPE_1__ stats; int /*<<< orphan*/  irq; } ;
struct ei_device {int irqlock; int tx1; int tx_start_page; int tx2; int lasttx; int txing; int /*<<< orphan*/  page_lock; int /*<<< orphan*/  txqueue; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 scalar_t__ EN0_IMR ; 
 int ENISR_ALL ; 
 int ETH_ZLEN ; 
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int,int) ; 
 int TX_PAGES ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,char*,int,int,int) ; 
 struct ei_device* FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct ei_device*,int /*<<< orphan*/ ,struct net_device*,char*,int,int,int) ; 
 scalar_t__ FUNC11 (struct ei_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  tx_err ; 

__attribute__((used)) static netdev_tx_t FUNC19(struct sk_buff *skb,
				   struct net_device *dev)
{
	unsigned long e8390_base = dev->base_addr;
	struct ei_device *ei_local = FUNC9(dev);
	int send_length = skb->len, output_page;
	unsigned long flags;
	char buf[ETH_ZLEN];
	char *data = skb->data;

	if (skb->len < ETH_ZLEN) {
		FUNC7(buf, 0, ETH_ZLEN);	/* more efficient than doing just the needed bits */
		FUNC6(buf, data, skb->len);
		send_length = ETH_ZLEN;
		data = buf;
	}

	/* Mask interrupts from the ethercard.
	   SMP: We have to grab the lock here otherwise the IRQ handler
	   on another CPU can flip window and race the IRQ mask set. We end
	   up trashing the mcast filter not disabling irqs if we don't lock */

	FUNC16(&ei_local->page_lock, flags);
	FUNC4(0x00, e8390_base + EN0_IMR);
	FUNC18(&ei_local->page_lock, flags);


	/*
	 *	Slow phase with lock held.
	 */

	FUNC2(dev->irq, &flags);

	FUNC15(&ei_local->page_lock);

	ei_local->irqlock = 1;

	/*
	 * We have two Tx slots available for use. Find the first free
	 * slot, and then perform some sanity checks. With two Tx bufs,
	 * you get very close to transmitting back-to-back packets. With
	 * only one Tx buf, the transmitter sits idle while you reload the
	 * card, leaving a substantial gap between each transmitted packet.
	 */

	if (ei_local->tx1 == 0) {
		output_page = ei_local->tx_start_page;
		ei_local->tx1 = send_length;
		if ((FUNC11(ei_local)) &&
		    ei_local->tx2 > 0)
			FUNC8(dev,
				   "idle transmitter tx2=%d, lasttx=%d, txing=%d\n",
				   ei_local->tx2, ei_local->lasttx, ei_local->txing);
	} else if (ei_local->tx2 == 0) {
		output_page = ei_local->tx_start_page + TX_PAGES/2;
		ei_local->tx2 = send_length;
		if ((FUNC11(ei_local)) &&
		    ei_local->tx1 > 0)
			FUNC8(dev,
				   "idle transmitter, tx1=%d, lasttx=%d, txing=%d\n",
				   ei_local->tx1, ei_local->lasttx, ei_local->txing);
	} else {			/* We should never get here. */
		FUNC10(ei_local, tx_err, dev,
			  "No Tx buffers free! tx1=%d tx2=%d last=%d\n",
			  ei_local->tx1, ei_local->tx2, ei_local->lasttx);
		ei_local->irqlock = 0;
		FUNC13(dev);
		FUNC4(ENISR_ALL, e8390_base + EN0_IMR);
		FUNC17(&ei_local->page_lock);
		FUNC5(dev->irq, &flags);
		dev->stats.tx_errors++;
		return NETDEV_TX_BUSY;
	}

	/*
	 * Okay, now upload the packet and trigger a send if the transmitter
	 * isn't already sending. If it is busy, the interrupt handler will
	 * trigger the send later, upon receiving a Tx done interrupt.
	 */

	FUNC3(dev, send_length, data, output_page);

	if (!ei_local->txing) {
		ei_local->txing = 1;
		FUNC0(dev, send_length, output_page);
		if (output_page == ei_local->tx_start_page) {
			ei_local->tx1 = -1;
			ei_local->lasttx = -1;
		} else {
			ei_local->tx2 = -1;
			ei_local->lasttx = -2;
		}
	} else
		ei_local->txqueue++;

	if (ei_local->tx1 && ei_local->tx2)
		FUNC13(dev);
	else
		FUNC12(dev);

	/* Turn 8390 interrupts back on. */
	ei_local->irqlock = 0;
	FUNC4(ENISR_ALL, e8390_base + EN0_IMR);

	FUNC17(&ei_local->page_lock);
	FUNC5(dev->irq, &flags);
	FUNC14(skb);
	FUNC1(skb);
	dev->stats.tx_bytes += send_length;

	return NETDEV_TX_OK;
}