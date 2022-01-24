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
struct sk_buff {int /*<<< orphan*/  data; int /*<<< orphan*/  protocol; int /*<<< orphan*/  head; } ;
struct TYPE_3__ {short rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_length_errors; int /*<<< orphan*/  rx_crc_errors; int /*<<< orphan*/  rx_frame_errors; int /*<<< orphan*/  rx_over_errors; int /*<<< orphan*/  rx_errors; } ;
struct net_device {int base_addr; TYPE_1__ stats; int /*<<< orphan*/  name; } ;
struct corkscrew_private {int cur_rx; scalar_t__ dirty_rx; TYPE_2__* rx_ring; struct sk_buff** rx_skbuff; } ;
struct TYPE_4__ {int status; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 scalar_t__ EL3_STATUS ; 
 short PKT_BUF_SZ ; 
 int RX_RING_SIZE ; 
 int RxDComplete ; 
 int RxDError ; 
 scalar_t__ RxStatus ; 
 int corkscrew_debug ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct net_device*) ; 
 int FUNC1 (scalar_t__) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC4 (struct net_device*,short) ; 
 struct corkscrew_private* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (char*,short,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  rx_copy ; 
 short rx_copybreak ; 
 int /*<<< orphan*/  rx_nocopy ; 
 void* FUNC9 (struct sk_buff*,short) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,void*,short) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC12(struct net_device *dev)
{
	struct corkscrew_private *vp = FUNC5(dev);
	int entry = vp->cur_rx % RX_RING_SIZE;
	int ioaddr = dev->base_addr;
	int rx_status;

	if (corkscrew_debug > 5)
		FUNC7("   In boomerang_rx(), status %4.4x, rx_status %4.4x.\n",
			FUNC1(ioaddr + EL3_STATUS), FUNC1(ioaddr + RxStatus));
	while ((rx_status = vp->rx_ring[entry].status) & RxDComplete) {
		if (rx_status & RxDError) {	/* Error, update stats. */
			unsigned char rx_error = rx_status >> 16;
			if (corkscrew_debug > 2)
				FUNC7(" Rx error: status %2.2x.\n",
				       rx_error);
			dev->stats.rx_errors++;
			if (rx_error & 0x01)
				dev->stats.rx_over_errors++;
			if (rx_error & 0x02)
				dev->stats.rx_length_errors++;
			if (rx_error & 0x04)
				dev->stats.rx_frame_errors++;
			if (rx_error & 0x08)
				dev->stats.rx_crc_errors++;
			if (rx_error & 0x10)
				dev->stats.rx_length_errors++;
		} else {
			/* The packet length: up to 4.5K!. */
			short pkt_len = rx_status & 0x1fff;
			struct sk_buff *skb;

			dev->stats.rx_bytes += pkt_len;
			if (corkscrew_debug > 4)
				FUNC7("Receiving packet size %d status %4.4x.\n",
				     pkt_len, rx_status);

			/* Check if the packet is long enough to just accept without
			   copying to a properly sized skbuff. */
			if (pkt_len < rx_copybreak &&
			    (skb = FUNC4(dev, pkt_len + 4)) != NULL) {
				FUNC11(skb, 2);	/* Align IP on 16 byte boundaries */
				/* 'skb_put()' points to the start of sk_buff data area. */
				FUNC10(skb,
					     FUNC2(vp->rx_ring[entry].addr),
					     pkt_len);
				rx_copy++;
			} else {
				void *temp;
				/* Pass up the skbuff already on the Rx ring. */
				skb = vp->rx_skbuff[entry];
				vp->rx_skbuff[entry] = NULL;
				temp = FUNC9(skb, pkt_len);
				/* Remove this checking code for final release. */
				if (FUNC2(vp->rx_ring[entry].addr) != temp)
					FUNC8("%s: Warning -- the skbuff addresses do not match in boomerang_rx: %p vs. %p / %p\n",
						dev->name,
						FUNC2(vp->rx_ring[entry].addr),
						skb->head, temp);
				rx_nocopy++;
			}
			skb->protocol = FUNC0(skb, dev);
			FUNC6(skb);
			dev->stats.rx_packets++;
		}
		entry = (++vp->cur_rx) % RX_RING_SIZE;
	}
	/* Refill the Rx ring buffers. */
	for (; vp->cur_rx - vp->dirty_rx > 0; vp->dirty_rx++) {
		struct sk_buff *skb;
		entry = vp->dirty_rx % RX_RING_SIZE;
		if (vp->rx_skbuff[entry] == NULL) {
			skb = FUNC4(dev, PKT_BUF_SZ);
			if (skb == NULL)
				break;	/* Bad news!  */
			FUNC11(skb, 2);	/* Align IP on 16 byte boundaries */
			vp->rx_ring[entry].addr = FUNC3(skb->data);
			vp->rx_skbuff[entry] = skb;
		}
		vp->rx_ring[entry].status = 0;	/* Clear complete bit. */
	}
	return 0;
}