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
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct TYPE_4__ {int rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  rx_errors; int /*<<< orphan*/  rx_crc_errors; int /*<<< orphan*/  rx_frame_errors; int /*<<< orphan*/  rx_length_errors; } ;
struct net_device {TYPE_2__ stats; int /*<<< orphan*/  dev; } ;
struct greth_private {int rx_cur; int /*<<< orphan*/  devlock; int /*<<< orphan*/  dev; TYPE_1__* regs; struct greth_bd* rx_bd_base; } ;
struct greth_bd {int /*<<< orphan*/  stat; int /*<<< orphan*/  addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  status; } ;

/* Variables and functions */
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
 int GRETH_RXBD_ERR_OE ; 
 scalar_t__ GRETH_RXBD_NUM_MASK ; 
 int GRETH_RXBD_STATUS ; 
 int /*<<< orphan*/  MAX_FRAME_SIZE ; 
 scalar_t__ NET_IP_ALIGN ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct greth_private*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 () ; 
 struct sk_buff* FUNC12 (struct net_device*,scalar_t__) ; 
 struct greth_private* FUNC13 (struct net_device*) ; 
 scalar_t__ FUNC14 (struct greth_private*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC21 (int) ; 
 int /*<<< orphan*/  FUNC22 () ; 

__attribute__((used)) static int FUNC23(struct net_device *dev, int limit)
{
	struct greth_private *greth;
	struct greth_bd *bdp;
	struct sk_buff *skb;
	int pkt_len;
	int bad, count;
	u32 status, dma_addr;
	unsigned long flags;

	greth = FUNC13(dev);

	for (count = 0; count < limit; ++count) {

		bdp = greth->rx_bd_base + greth->rx_cur;
		FUNC0(greth->regs->status, GRETH_INT_RE | GRETH_INT_RX);
		FUNC10();
		status = FUNC8(&bdp->stat);

		if (FUNC21(status & GRETH_BD_EN)) {
			break;
		}

		dma_addr = FUNC8(&bdp->addr);
		bad = 0;

		/* Check status for errors. */
		if (FUNC21(status & GRETH_RXBD_STATUS)) {
			if (status & GRETH_RXBD_ERR_FT) {
				dev->stats.rx_length_errors++;
				bad = 1;
			}
			if (status & (GRETH_RXBD_ERR_AE | GRETH_RXBD_ERR_OE)) {
				dev->stats.rx_frame_errors++;
				bad = 1;
			}
			if (status & GRETH_RXBD_ERR_CRC) {
				dev->stats.rx_crc_errors++;
				bad = 1;
			}
		}
		if (FUNC21(bad)) {
			dev->stats.rx_errors++;

		} else {

			pkt_len = status & GRETH_BD_LEN;

			skb = FUNC12(dev, pkt_len + NET_IP_ALIGN);

			if (FUNC21(skb == NULL)) {

				if (FUNC11())
					FUNC2(&dev->dev, "low on memory - " "packet dropped\n");

				dev->stats.rx_dropped++;

			} else {
				FUNC18(skb, NET_IP_ALIGN);

				FUNC3(greth->dev,
							dma_addr,
							pkt_len,
							DMA_FROM_DEVICE);

				if (FUNC14(greth))
					FUNC7(FUNC16(dma_addr), pkt_len);

				FUNC17(skb, FUNC16(dma_addr),
					     pkt_len);

				skb->protocol = FUNC5(skb, dev);
				dev->stats.rx_bytes += pkt_len;
				dev->stats.rx_packets++;
				FUNC15(skb);
			}
		}

		status = GRETH_BD_EN | GRETH_BD_IE;
		if (greth->rx_cur == GRETH_RXBD_NUM_MASK) {
			status |= GRETH_BD_WR;
		}

		FUNC22();
		FUNC9(&bdp->stat, status);

		FUNC4(greth->dev, dma_addr, MAX_FRAME_SIZE, DMA_FROM_DEVICE);

		FUNC19(&greth->devlock, flags); /* save from XMIT */
		FUNC6(greth);
		FUNC20(&greth->devlock, flags);

		greth->rx_cur = FUNC1(greth->rx_cur);
	}

	return count;
}