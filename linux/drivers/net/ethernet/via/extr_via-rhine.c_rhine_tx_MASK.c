#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct sk_buff {scalar_t__ len; } ;
struct TYPE_8__ {int /*<<< orphan*/  syncp; int /*<<< orphan*/  packets; int /*<<< orphan*/  bytes; } ;
struct rhine_private {unsigned int dirty_tx; unsigned int cur_tx; int quirks; struct sk_buff** tx_skbuff; scalar_t__* tx_skbuff_dma; TYPE_4__ tx_stats; TYPE_2__* tx_ring; } ;
struct TYPE_7__ {int collisions; int /*<<< orphan*/  tx_fifo_errors; int /*<<< orphan*/  tx_heartbeat_errors; int /*<<< orphan*/  tx_aborted_errors; int /*<<< orphan*/  tx_window_errors; int /*<<< orphan*/  tx_carrier_errors; int /*<<< orphan*/  tx_errors; } ;
struct TYPE_5__ {struct device* parent; } ;
struct net_device {TYPE_3__ stats; TYPE_1__ dev; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  tx_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int DescOwn ; 
 unsigned int TX_RING_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,unsigned int,unsigned int) ; 
 struct rhine_private* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct rhine_private*,int /*<<< orphan*/ ,struct net_device*,char*,int,...) ; 
 scalar_t__ FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 scalar_t__ FUNC10 (struct rhine_private*) ; 
 int rqRhineI ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  tx_done ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15(struct net_device *dev)
{
	struct rhine_private *rp = FUNC5(dev);
	struct device *hwdev = dev->dev.parent;
	unsigned int pkts_compl = 0, bytes_compl = 0;
	unsigned int dirty_tx = rp->dirty_tx;
	unsigned int cur_tx;
	struct sk_buff *skb;

	/*
	 * The race with rhine_start_tx does not matter here as long as the
	 * driver enforces a value of cur_tx that was relevant when the
	 * packet was scheduled to the network chipset.
	 * Executive summary: smp_rmb() balances smp_wmb() in rhine_start_tx.
	 */
	FUNC11();
	cur_tx = rp->cur_tx;
	/* find and cleanup dirty tx descriptors */
	while (dirty_tx != cur_tx) {
		unsigned int entry = dirty_tx % TX_RING_SIZE;
		u32 txstatus = FUNC3(rp->tx_ring[entry].tx_status);

		FUNC6(rp, tx_done, dev, "Tx scavenge %d status %08x\n",
			  entry, txstatus);
		if (txstatus & DescOwn)
			break;
		skb = rp->tx_skbuff[entry];
		if (txstatus & 0x8000) {
			FUNC6(rp, tx_done, dev,
				  "Transmit error, Tx status %08x\n", txstatus);
			dev->stats.tx_errors++;
			if (txstatus & 0x0400)
				dev->stats.tx_carrier_errors++;
			if (txstatus & 0x0200)
				dev->stats.tx_window_errors++;
			if (txstatus & 0x0100)
				dev->stats.tx_aborted_errors++;
			if (txstatus & 0x0080)
				dev->stats.tx_heartbeat_errors++;
			if (((rp->quirks & rqRhineI) && txstatus & 0x0002) ||
			    (txstatus & 0x0800) || (txstatus & 0x1000)) {
				dev->stats.tx_fifo_errors++;
				rp->tx_ring[entry].tx_status = FUNC0(DescOwn);
				break; /* Keep the skb - we try again */
			}
			/* Transmitter restarted in 'abnormal' handler. */
		} else {
			if (rp->quirks & rqRhineI)
				dev->stats.collisions += (txstatus >> 3) & 0x0F;
			else
				dev->stats.collisions += txstatus & 0x0F;
			FUNC6(rp, tx_done, dev, "collisions: %1.1x:%1.1x\n",
				  (txstatus >> 3) & 0xF, txstatus & 0xF);

			FUNC13(&rp->tx_stats.syncp);
			rp->tx_stats.bytes += skb->len;
			rp->tx_stats.packets++;
			FUNC14(&rp->tx_stats.syncp);
		}
		/* Free the original skb. */
		if (rp->tx_skbuff_dma[entry]) {
			FUNC2(hwdev,
					 rp->tx_skbuff_dma[entry],
					 skb->len,
					 DMA_TO_DEVICE);
		}
		bytes_compl += skb->len;
		pkts_compl++;
		FUNC1(skb);
		rp->tx_skbuff[entry] = NULL;
		dirty_tx++;
	}

	rp->dirty_tx = dirty_tx;
	/* Pity we can't rely on the nearby BQL completion implicit barrier. */
	FUNC12();

	FUNC4(dev, pkts_compl, bytes_compl);

	/* cur_tx may be optimistically out-of-sync. See rhine_start_tx. */
	if (!FUNC10(rp) && FUNC7(dev)) {
		FUNC9(dev);
		FUNC11();
		/* Rejuvenate. */
		if (FUNC10(rp))
			FUNC8(dev);
	}
}