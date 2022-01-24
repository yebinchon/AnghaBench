#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tulip_private {int cur_rx; int dirty_rx; TYPE_2__* rx_buffers; int /*<<< orphan*/  pdev; TYPE_1__* rx_ring; } ;
struct sk_buff {int /*<<< orphan*/  protocol; int /*<<< orphan*/  head; int /*<<< orphan*/  data; } ;
struct TYPE_6__ {short rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_fifo_errors; int /*<<< orphan*/  rx_crc_errors; int /*<<< orphan*/  rx_frame_errors; int /*<<< orphan*/  rx_length_errors; int /*<<< orphan*/  rx_errors; } ;
struct net_device {TYPE_3__ stats; int /*<<< orphan*/  dev; } ;
typedef  int s32 ;
struct TYPE_5__ {scalar_t__ mapping; struct sk_buff* skb; } ;
struct TYPE_4__ {int status; int buffer1; } ;

/* Variables and functions */
 int /*<<< orphan*/  DescOwned ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  PKT_BUF_SZ ; 
 int RX_RING_SIZE ; 
 int RxDescCRCError ; 
 int RxDescCollisionSeen ; 
 int RxDescDescErr ; 
 int RxDescRunt ; 
 int RxLengthOver2047 ; 
 int RxWholePkt ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__,long long,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct net_device*) ; 
 scalar_t__ FUNC3 (int) ; 
 struct sk_buff* FUNC4 (struct net_device*,short) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*,int,...) ; 
 struct tulip_private* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,short,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__,short,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int /*<<< orphan*/ ,short) ; 
 char* FUNC13 (struct sk_buff*,short) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,int /*<<< orphan*/ ,short) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,int) ; 
 int tulip_debug ; 
 short tulip_rx_copybreak ; 

__attribute__((used)) static int FUNC16(struct net_device *dev)
{
	struct tulip_private *tp = FUNC6(dev);
	int entry = tp->cur_rx % RX_RING_SIZE;
	int rx_work_limit = tp->dirty_rx + RX_RING_SIZE - tp->cur_rx;
	int received = 0;

	if (tulip_debug > 4)
		FUNC5(dev, "In tulip_rx(), entry %d %08x\n",
			   entry, tp->rx_ring[entry].status);
	/* If we own the next entry, it is a new packet. Send it up. */
	while ( ! (tp->rx_ring[entry].status & FUNC0(DescOwned))) {
		s32 status = FUNC3(tp->rx_ring[entry].status);
		short pkt_len;

		if (tulip_debug > 5)
			FUNC5(dev, "In tulip_rx(), entry %d %08x\n",
				   entry, status);
		if (--rx_work_limit < 0)
			break;

		/*
		  Omit the four octet CRC from the length.
		  (May not be considered valid until we have
		  checked status for RxLengthOver2047 bits)
		*/
		pkt_len = ((status >> 16) & 0x7ff) - 4;
		/*
		  Maximum pkt_len is 1518 (1514 + vlan header)
		  Anything higher than this is always invalid
		  regardless of RxLengthOver2047 bits
		*/

		if ((status & (RxLengthOver2047 |
			       RxDescCRCError |
			       RxDescCollisionSeen |
			       RxDescRunt |
			       RxDescDescErr |
			       RxWholePkt))        != RxWholePkt ||
		    pkt_len > 1518) {
			if ((status & (RxLengthOver2047 |
			     RxWholePkt))         != RxWholePkt) {
				/* Ingore earlier buffers. */
				if ((status & 0xffff) != 0x7fff) {
					if (tulip_debug > 1)
						FUNC7(dev,
							    "Oversized Ethernet frame spanned multiple buffers, status %08x!\n",
							    status);
					dev->stats.rx_length_errors++;
				}
			} else {
				/* There was a fatal error. */
				if (tulip_debug > 2)
					FUNC5(dev, "Receive error, Rx status %08x\n",
						   status);
				dev->stats.rx_errors++; /* end of a packet.*/
				if (pkt_len > 1518 ||
				    (status & RxDescRunt))
					dev->stats.rx_length_errors++;
				if (status & 0x0004)
					dev->stats.rx_frame_errors++;
				if (status & 0x0002)
					dev->stats.rx_crc_errors++;
				if (status & 0x0001)
					dev->stats.rx_fifo_errors++;
			}
		} else {
			struct sk_buff *skb;

			/* Check if the packet is long enough to accept without copying
			   to a minimally-sized skbuff. */
			if (pkt_len < tulip_rx_copybreak &&
			    (skb = FUNC4(dev, pkt_len + 2)) != NULL) {
				FUNC15(skb, 2);	/* 16 byte align the IP header */
				FUNC9(tp->pdev,
							    tp->rx_buffers[entry].mapping,
							    pkt_len, PCI_DMA_FROMDEVICE);
#if ! defined(__alpha__)
				FUNC12(skb, tp->rx_buffers[entry].skb->data,
						 pkt_len);
				FUNC13(skb, pkt_len);
#else
				skb_put_data(skb,
					     tp->rx_buffers[entry].skb->data,
					     pkt_len);
#endif
				FUNC10(tp->pdev,
							       tp->rx_buffers[entry].mapping,
							       pkt_len, PCI_DMA_FROMDEVICE);
			} else { 	/* Pass up the skb already on the Rx ring. */
				char *temp = FUNC13(skb = tp->rx_buffers[entry].skb,
						     pkt_len);

#ifndef final_version
				if (tp->rx_buffers[entry].mapping !=
				    FUNC3(tp->rx_ring[entry].buffer1)) {
					FUNC1(&dev->dev,
						"Internal fault: The skbuff addresses do not match in tulip_rx: %08x vs. %Lx %p / %p\n",
						FUNC3(tp->rx_ring[entry].buffer1),
						(long long)tp->rx_buffers[entry].mapping,
						skb->head, temp);
				}
#endif

				FUNC11(tp->pdev, tp->rx_buffers[entry].mapping,
						 PKT_BUF_SZ, PCI_DMA_FROMDEVICE);

				tp->rx_buffers[entry].skb = NULL;
				tp->rx_buffers[entry].mapping = 0;
			}
			skb->protocol = FUNC2(skb, dev);

			FUNC8(skb);

			dev->stats.rx_packets++;
			dev->stats.rx_bytes += pkt_len;
		}
		received++;
		entry = (++tp->cur_rx) % RX_RING_SIZE;
	}
	return received;
}