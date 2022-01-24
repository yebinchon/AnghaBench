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
struct sk_buff {int /*<<< orphan*/  protocol; scalar_t__ len; scalar_t__ data; } ;
struct pcnet32_rx_head {int /*<<< orphan*/  base; int /*<<< orphan*/  msg_length; int /*<<< orphan*/  status; } ;
struct pcnet32_private {int /*<<< orphan*/ * rx_dma_addr; int /*<<< orphan*/  pci_dev; struct sk_buff** rx_skbuff; } ;
struct TYPE_2__ {int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  rx_errors; int /*<<< orphan*/  rx_fifo_errors; int /*<<< orphan*/  rx_crc_errors; int /*<<< orphan*/  rx_over_errors; int /*<<< orphan*/  rx_frame_errors; } ;
struct net_device {TYPE_1__ stats; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 scalar_t__ NET_IP_ALIGN ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 short PKT_BUF_SIZE ; 
 scalar_t__ PKT_BUF_SKB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct net_device*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC5 (struct net_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct pcnet32_private*,int /*<<< orphan*/ ,struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,short,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,short,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__,short,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,short,int /*<<< orphan*/ ) ; 
 short rx_copybreak ; 
 int /*<<< orphan*/  rx_err ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,unsigned char*,short) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,short) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC16 (int) ; 

__attribute__((used)) static void FUNC17(struct net_device *dev,
			     struct pcnet32_private *lp,
			     struct pcnet32_rx_head *rxp,
			     int entry)
{
	int status = (short)FUNC3(rxp->status) >> 8;
	int rx_in_place = 0;
	struct sk_buff *skb;
	short pkt_len;

	if (status != 0x03) {	/* There was an error. */
		/*
		 * There is a tricky error noted by John Murphy,
		 * <murf@perftech.com> to Russ Nelson: Even with full-sized
		 * buffers it's possible for a jabber packet to use two
		 * buffers, with only the last correctly noting the error.
		 */
		if (status & 0x01)	/* Only count a general error at the */
			dev->stats.rx_errors++;	/* end of a packet. */
		if (status & 0x20)
			dev->stats.rx_frame_errors++;
		if (status & 0x10)
			dev->stats.rx_over_errors++;
		if (status & 0x08)
			dev->stats.rx_crc_errors++;
		if (status & 0x04)
			dev->stats.rx_fifo_errors++;
		return;
	}

	pkt_len = (FUNC4(rxp->msg_length) & 0xfff) - 4;

	/* Discard oversize frames. */
	if (FUNC16(pkt_len > PKT_BUF_SIZE)) {
		FUNC6(lp, drv, dev, "Impossible packet size %d!\n",
			  pkt_len);
		dev->stats.rx_errors++;
		return;
	}
	if (pkt_len < 60) {
		FUNC6(lp, rx_err, dev, "Runt packet!\n");
		dev->stats.rx_errors++;
		return;
	}

	if (pkt_len > rx_copybreak) {
		struct sk_buff *newskb;
		dma_addr_t new_dma_addr;

		newskb = FUNC5(dev, PKT_BUF_SKB);
		/*
		 * map the new buffer, if mapping fails, drop the packet and
		 * reuse the old buffer
		 */
		if (newskb) {
			FUNC15(newskb, NET_IP_ALIGN);
			new_dma_addr = FUNC11(lp->pci_dev,
						      newskb->data,
						      PKT_BUF_SIZE,
						      PCI_DMA_FROMDEVICE);
			if (FUNC8(lp->pci_dev, new_dma_addr)) {
				FUNC6(lp, rx_err, dev,
					  "DMA mapping error.\n");
				FUNC1(newskb);
				skb = NULL;
			} else {
				skb = lp->rx_skbuff[entry];
				FUNC12(lp->pci_dev,
						 lp->rx_dma_addr[entry],
						 PKT_BUF_SIZE,
						 PCI_DMA_FROMDEVICE);
				FUNC14(skb, pkt_len);
				lp->rx_skbuff[entry] = newskb;
				lp->rx_dma_addr[entry] = new_dma_addr;
				rxp->base = FUNC0(new_dma_addr);
				rx_in_place = 1;
			}
		} else
			skb = NULL;
	} else
		skb = FUNC5(dev, pkt_len + NET_IP_ALIGN);

	if (skb == NULL) {
		dev->stats.rx_dropped++;
		return;
	}
	if (!rx_in_place) {
		FUNC15(skb, NET_IP_ALIGN);
		FUNC14(skb, pkt_len);	/* Make room */
		FUNC9(lp->pci_dev,
					    lp->rx_dma_addr[entry],
					    pkt_len,
					    PCI_DMA_FROMDEVICE);
		FUNC13(skb,
				 (unsigned char *)(lp->rx_skbuff[entry]->data),
				 pkt_len);
		FUNC10(lp->pci_dev,
					       lp->rx_dma_addr[entry],
					       pkt_len,
					       PCI_DMA_FROMDEVICE);
	}
	dev->stats.rx_bytes += skb->len;
	skb->protocol = FUNC2(skb, dev);
	FUNC7(skb);
	dev->stats.rx_packets++;
}