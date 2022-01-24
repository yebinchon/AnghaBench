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
typedef  int u32 ;
struct sk_buff {int /*<<< orphan*/  protocol; int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  data; } ;
struct TYPE_4__ {int rx_bytes; int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_crc_errors; int /*<<< orphan*/  rx_frame_errors; int /*<<< orphan*/  rx_length_errors; } ;
struct net_device {int features; TYPE_2__ stats; } ;
struct greth_private {int rx_cur; int /*<<< orphan*/  devlock; int /*<<< orphan*/  dev; struct sk_buff** rx_skbuff; TYPE_1__* regs; struct greth_bd* rx_bd_base; } ;
struct greth_bd {int /*<<< orphan*/  stat; int /*<<< orphan*/  addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int GRETH_BD_EN ; 
 int GRETH_BD_IE ; 
 int GRETH_BD_LEN ; 
 int GRETH_BD_WR ; 
 int GRETH_INT_RE ; 
 int GRETH_INT_RX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int GRETH_RXBD_ERR_AE ; 
 int GRETH_RXBD_ERR_CRC ; 
 int GRETH_RXBD_ERR_FT ; 
 int GRETH_RXBD_ERR_LE ; 
 int GRETH_RXBD_ERR_OE ; 
 size_t GRETH_RXBD_NUM_MASK ; 
 int GRETH_RXBD_STATUS ; 
 scalar_t__ MAX_FRAME_SIZE ; 
 int NETIF_F_RXCSUM ; 
 scalar_t__ NET_IP_ALIGN ; 
 size_t FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct greth_private*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 scalar_t__ FUNC14 () ; 
 struct sk_buff* FUNC15 (struct net_device*,scalar_t__) ; 
 struct greth_private* FUNC16 (struct net_device*) ; 
 scalar_t__ FUNC17 (struct greth_private*) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC21 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC25 (int) ; 
 int /*<<< orphan*/  FUNC26 () ; 

__attribute__((used)) static int FUNC27(struct net_device *dev, int limit)
{
	struct greth_private *greth;
	struct greth_bd *bdp;
	struct sk_buff *skb, *newskb;
	int pkt_len;
	int bad, count = 0;
	u32 status, dma_addr;
	unsigned long flags;

	greth = FUNC16(dev);

	for (count = 0; count < limit; ++count) {

		bdp = greth->rx_bd_base + greth->rx_cur;
		skb = greth->rx_skbuff[greth->rx_cur];
		FUNC0(greth->regs->status, GRETH_INT_RE | GRETH_INT_RX);
		FUNC13();
		status = FUNC10(&bdp->stat);
		bad = 0;

		if (status & GRETH_BD_EN)
			break;

		/* Check status for errors. */
		if (FUNC25(status & GRETH_RXBD_STATUS)) {

			if (status & GRETH_RXBD_ERR_FT) {
				dev->stats.rx_length_errors++;
				bad = 1;
			} else if (status &
				   (GRETH_RXBD_ERR_AE | GRETH_RXBD_ERR_OE | GRETH_RXBD_ERR_LE)) {
				dev->stats.rx_frame_errors++;
				bad = 1;
			} else if (status & GRETH_RXBD_ERR_CRC) {
				dev->stats.rx_crc_errors++;
				bad = 1;
			}
		}

		/* Allocate new skb to replace current, not needed if the
		 * current skb can be reused */
		if (!bad && (newskb=FUNC15(dev, MAX_FRAME_SIZE + NET_IP_ALIGN))) {
			FUNC22(newskb, NET_IP_ALIGN);

			dma_addr = FUNC4(greth->dev,
						      newskb->data,
						      MAX_FRAME_SIZE + NET_IP_ALIGN,
						      DMA_FROM_DEVICE);

			if (!FUNC5(greth->dev, dma_addr)) {
				/* Process the incoming frame. */
				pkt_len = status & GRETH_BD_LEN;

				FUNC6(greth->dev,
						 FUNC10(&bdp->addr),
						 MAX_FRAME_SIZE + NET_IP_ALIGN,
						 DMA_FROM_DEVICE);

				if (FUNC17(greth))
					FUNC9(FUNC19(FUNC10(&bdp->addr)), pkt_len);

				FUNC21(skb, pkt_len);

				if (dev->features & NETIF_F_RXCSUM && FUNC12(status))
					skb->ip_summed = CHECKSUM_UNNECESSARY;
				else
					FUNC20(skb);

				skb->protocol = FUNC7(skb, dev);
				dev->stats.rx_packets++;
				dev->stats.rx_bytes += pkt_len;
				FUNC18(skb);

				greth->rx_skbuff[greth->rx_cur] = newskb;
				FUNC11(&bdp->addr, dma_addr);
			} else {
				if (FUNC14())
					FUNC3(greth->dev, "Could not create DMA mapping, dropping packet\n");
				FUNC2(newskb);
				/* reusing current skb, so it is a drop */
				dev->stats.rx_dropped++;
			}
		} else if (bad) {
			/* Bad Frame transfer, the skb is reused */
			dev->stats.rx_dropped++;
		} else {
			/* Failed Allocating a new skb. This is rather stupid
			 * but the current "filled" skb is reused, as if
			 * transfer failure. One could argue that RX descriptor
			 * table handling should be divided into cleaning and
			 * filling as the TX part of the driver
			 */
			if (FUNC14())
				FUNC3(greth->dev, "Could not allocate SKB, dropping packet\n");
			/* reusing current skb, so it is a drop */
			dev->stats.rx_dropped++;
		}

		status = GRETH_BD_EN | GRETH_BD_IE;
		if (greth->rx_cur == GRETH_RXBD_NUM_MASK) {
			status |= GRETH_BD_WR;
		}

		FUNC26();
		FUNC11(&bdp->stat, status);
		FUNC23(&greth->devlock, flags);
		FUNC8(greth);
		FUNC24(&greth->devlock, flags);
		greth->rx_cur = FUNC1(greth->rx_cur);
	}

	return count;

}