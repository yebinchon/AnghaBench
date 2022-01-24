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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int len; int /*<<< orphan*/ * data; } ;
struct TYPE_2__ {int tx_bytes; int /*<<< orphan*/  tx_errors; } ;
struct net_device {long base_addr; TYPE_1__ stats; } ;
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
 int /*<<< orphan*/  FUNC2 (struct net_device*,int,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*,int,int,int) ; 
 struct ei_device* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct ei_device*,int /*<<< orphan*/ ,struct net_device*,char*,int,int,int) ; 
 scalar_t__ FUNC8 (struct ei_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  tx_err ; 

__attribute__((used)) static netdev_tx_t FUNC16(struct sk_buff *skb,
					  struct net_device *dev)
{
	long e8390_base = dev->base_addr;
	struct ei_device *ei_local = FUNC6(dev);
	int length, send_length, output_page;
	unsigned long flags;
	u8 packet[ETH_ZLEN];
	
	FUNC10(dev);

	length = skb->len;

	/* Mask interrupts from the ethercard. 
	   SMP: We have to grab the lock here otherwise the IRQ handler
	   on another CPU can flip window and race the IRQ mask set. We end
	   up trashing the mcast filter not disabling irqs if we don't lock */
	   
	FUNC14(&ei_local->page_lock, flags);
	FUNC12(0x00, e8390_base + EN0_IMR);
	
	/*
	 *	Slow phase with lock held.
	 */
	 
	ei_local->irqlock = 1;

	send_length = FUNC3(length, ETH_ZLEN);

	/*
	 * We have two Tx slots available for use. Find the first free
	 * slot, and then perform some sanity checks. With two Tx bufs,
	 * you get very close to transmitting back-to-back packets. With
	 * only one Tx buf, the transmitter sits idle while you reload the
	 * card, leaving a substantial gap between each transmitted packet.
	 */

	if (ei_local->tx1 == 0) 
	{
		output_page = ei_local->tx_start_page;
		ei_local->tx1 = send_length;
		if ((FUNC8(ei_local)) &&
		    ei_local->tx2 > 0)
			FUNC5(dev,
				   "idle transmitter tx2=%d, lasttx=%d, txing=%d\n",
				   ei_local->tx2, ei_local->lasttx,
				   ei_local->txing);
	}
	else if (ei_local->tx2 == 0) 
	{
		output_page = ei_local->tx_start_page + TX_PAGES/2;
		ei_local->tx2 = send_length;
		if ((FUNC8(ei_local)) &&
		    ei_local->tx1 > 0)
			FUNC5(dev,
				   "idle transmitter, tx1=%d, lasttx=%d, txing=%d\n",
				   ei_local->tx1, ei_local->lasttx,
				   ei_local->txing);
	}
	else
	{	/* We should never get here. */
		FUNC7(ei_local, tx_err, dev,
			  "No Tx buffers free! tx1=%d tx2=%d last=%d\n",
			  ei_local->tx1, ei_local->tx2,
			  ei_local->lasttx);
		ei_local->irqlock = 0;
		FUNC10(dev);
		FUNC12(ENISR_ALL, e8390_base + EN0_IMR);
		FUNC15(&ei_local->page_lock, flags);
		dev->stats.tx_errors++;
		return NETDEV_TX_BUSY;
	}

	/*
	 * Okay, now upload the packet and trigger a send if the transmitter
	 * isn't already sending. If it is busy, the interrupt handler will
	 * trigger the send later, upon receiving a Tx done interrupt.
	 */

	if (length == skb->len)
		FUNC2(dev, length, skb->data, output_page);
	else {
		FUNC4(packet, 0, ETH_ZLEN);
		FUNC13(skb, packet, skb->len);
		FUNC2(dev, length, packet, output_page);
	}
	
	if (! ei_local->txing) 
	{
		ei_local->txing = 1;
		FUNC0(dev, send_length, output_page);
		FUNC11(dev);
		if (output_page == ei_local->tx_start_page) 
		{
			ei_local->tx1 = -1;
			ei_local->lasttx = -1;
		}
		else 
		{
			ei_local->tx2 = -1;
			ei_local->lasttx = -2;
		}
	}
	else ei_local->txqueue++;

	if (ei_local->tx1  &&  ei_local->tx2)
		FUNC10(dev);
	else
		FUNC9(dev);

	/* Turn 8390 interrupts back on. */
	ei_local->irqlock = 0;
	FUNC12(ENISR_ALL, e8390_base + EN0_IMR);
	
	FUNC15(&ei_local->page_lock, flags);

	FUNC1 (skb);
	dev->stats.tx_bytes += send_length;
    
	return NETDEV_TX_OK;
}