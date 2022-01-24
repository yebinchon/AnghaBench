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
struct sk_buff {int /*<<< orphan*/  data; int /*<<< orphan*/  protocol; } ;
struct TYPE_3__ {short rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_errors; int /*<<< orphan*/  rx_length_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct epic_private {int cur_rx; int dirty_rx; TYPE_2__* rx_ring; int /*<<< orphan*/  rx_buf_sz; int /*<<< orphan*/  pci_dev; struct sk_buff** rx_skbuff; } ;
struct TYPE_4__ {int rxstatus; int /*<<< orphan*/  bufaddr; } ;

/* Variables and functions */
 int DescOwn ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int PKT_BUF_SZ ; 
 int RX_RING_SIZE ; 
 int debug ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct net_device*) ; 
 void* FUNC1 (struct net_device*,short) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*,int,short) ; 
 struct epic_private* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 short rx_copybreak ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int /*<<< orphan*/ ,short) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,short) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC14(struct net_device *dev, int budget)
{
	struct epic_private *ep = FUNC4(dev);
	int entry = ep->cur_rx % RX_RING_SIZE;
	int rx_work_limit = ep->dirty_rx + RX_RING_SIZE - ep->cur_rx;
	int work_done = 0;

	if (debug > 4)
		FUNC2(dev, " In epic_rx(), entry %d %8.8x.\n", entry,
			   ep->rx_ring[entry].rxstatus);

	if (rx_work_limit > budget)
		rx_work_limit = budget;

	/* If we own the next entry, it's a new packet. Send it up. */
	while ((ep->rx_ring[entry].rxstatus & DescOwn) == 0) {
		int status = ep->rx_ring[entry].rxstatus;

		if (debug > 4)
			FUNC2(dev, "  epic_rx() status was %8.8x.\n",
				   status);
		if (--rx_work_limit < 0)
			break;
		if (status & 0x2006) {
			if (debug > 2)
				FUNC2(dev, "epic_rx() error status was %8.8x.\n",
					   status);
			if (status & 0x2000) {
				FUNC5(dev, "Oversized Ethernet frame spanned multiple buffers, status %4.4x!\n",
					    status);
				dev->stats.rx_length_errors++;
			} else if (status & 0x0006)
				/* Rx Frame errors are counted in hardware. */
				dev->stats.rx_errors++;
		} else {
			/* Malloc up new buffer, compatible with net-2e. */
			/* Omit the four octet CRC from the length. */
			short pkt_len = (status >> 16) - 4;
			struct sk_buff *skb;

			if (pkt_len > PKT_BUF_SZ - 4) {
				FUNC3(dev, "Oversized Ethernet frame, status %x %d bytes.\n",
					   status, pkt_len);
				pkt_len = 1514;
			}
			/* Check if the packet is long enough to accept without copying
			   to a minimally-sized skbuff. */
			if (pkt_len < rx_copybreak &&
			    (skb = FUNC1(dev, pkt_len + 2)) != NULL) {
				FUNC13(skb, 2);	/* 16 byte align the IP header */
				FUNC7(ep->pci_dev,
							    ep->rx_ring[entry].bufaddr,
							    ep->rx_buf_sz,
							    PCI_DMA_FROMDEVICE);
				FUNC11(skb, ep->rx_skbuff[entry]->data, pkt_len);
				FUNC12(skb, pkt_len);
				FUNC8(ep->pci_dev,
							       ep->rx_ring[entry].bufaddr,
							       ep->rx_buf_sz,
							       PCI_DMA_FROMDEVICE);
			} else {
				FUNC10(ep->pci_dev,
					ep->rx_ring[entry].bufaddr,
					ep->rx_buf_sz, PCI_DMA_FROMDEVICE);
				FUNC12(skb = ep->rx_skbuff[entry], pkt_len);
				ep->rx_skbuff[entry] = NULL;
			}
			skb->protocol = FUNC0(skb, dev);
			FUNC6(skb);
			dev->stats.rx_packets++;
			dev->stats.rx_bytes += pkt_len;
		}
		work_done++;
		entry = (++ep->cur_rx) % RX_RING_SIZE;
	}

	/* Refill the Rx ring buffers. */
	for (; ep->cur_rx - ep->dirty_rx > 0; ep->dirty_rx++) {
		entry = ep->dirty_rx % RX_RING_SIZE;
		if (ep->rx_skbuff[entry] == NULL) {
			struct sk_buff *skb;
			skb = ep->rx_skbuff[entry] = FUNC1(dev, ep->rx_buf_sz + 2);
			if (skb == NULL)
				break;
			FUNC13(skb, 2);	/* Align IP on 16 byte boundaries */
			ep->rx_ring[entry].bufaddr = FUNC9(ep->pci_dev,
				skb->data, ep->rx_buf_sz, PCI_DMA_FROMDEVICE);
			work_done++;
		}
		/* AV: shouldn't we add a barrier here? */
		ep->rx_ring[entry].rxstatus = DescOwn;
	}
	return work_done;
}