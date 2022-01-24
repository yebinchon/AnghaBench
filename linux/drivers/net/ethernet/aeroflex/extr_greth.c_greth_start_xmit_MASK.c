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
struct sk_buff {int len; int /*<<< orphan*/  data; } ;
struct TYPE_4__ {int /*<<< orphan*/  tx_errors; } ;
struct net_device {TYPE_2__ stats; } ;
struct greth_private {scalar_t__ tx_free; int tx_next; int* tx_bufs_length; int /*<<< orphan*/  devlock; int /*<<< orphan*/  dev; struct greth_bd* tx_bd_base; TYPE_1__* regs; int /*<<< orphan*/  netdev; } ;
struct greth_bd {int /*<<< orphan*/  stat; int /*<<< orphan*/  addr; } ;
typedef  int netdev_tx_t ;
struct TYPE_3__ {int /*<<< orphan*/  control; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int GRETH_BD_EN ; 
 int GRETH_BD_IE ; 
 int GRETH_BD_LEN ; 
 int GRETH_BD_WR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int GRETH_RXI ; 
 size_t GRETH_TXBD_NUM_MASK ; 
 int GRETH_TXI ; 
 int MAX_FRAME_SIZE ; 
 int NETDEV_TX_BUSY ; 
 int NETDEV_TX_OK ; 
 size_t FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct greth_private*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 struct greth_private* FUNC11 (struct net_device*) ; 
 scalar_t__ FUNC12 (struct greth_private*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 scalar_t__ FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC17 (int) ; 

__attribute__((used)) static netdev_tx_t
FUNC18(struct sk_buff *skb, struct net_device *dev)
{
	struct greth_private *greth = FUNC11(dev);
	struct greth_bd *bdp;
	int err = NETDEV_TX_OK;
	u32 status, dma_addr, ctrl;
	unsigned long flags;

	/* Clean TX Ring */
	FUNC5(greth->netdev);

	if (FUNC17(greth->tx_free <= 0)) {
		FUNC15(&greth->devlock, flags);/*save from poll/irq*/
		ctrl = FUNC0(greth->regs->control);
		/* Enable TX IRQ only if not already in poll() routine */
		if (ctrl & GRETH_RXI)
			FUNC1(greth->regs->control, ctrl | GRETH_TXI);
		FUNC13(dev);
		FUNC16(&greth->devlock, flags);
		return NETDEV_TX_BUSY;
	}

	if (FUNC12(greth))
		FUNC7(skb);


	if (FUNC17(skb->len > MAX_FRAME_SIZE)) {
		dev->stats.tx_errors++;
		goto out;
	}

	bdp = greth->tx_bd_base + greth->tx_next;
	dma_addr = FUNC8(&bdp->addr);

	FUNC10((unsigned char *) FUNC14(dma_addr), skb->data, skb->len);

	FUNC4(greth->dev, dma_addr, skb->len, DMA_TO_DEVICE);

	status = GRETH_BD_EN | GRETH_BD_IE | (skb->len & GRETH_BD_LEN);
	greth->tx_bufs_length[greth->tx_next] = skb->len & GRETH_BD_LEN;

	/* Wrap around descriptor ring */
	if (greth->tx_next == GRETH_TXBD_NUM_MASK) {
		status |= GRETH_BD_WR;
	}

	greth->tx_next = FUNC2(greth->tx_next);
	greth->tx_free--;

	/* Write descriptor control word and enable transmission */
	FUNC9(&bdp->stat, status);
	FUNC15(&greth->devlock, flags); /*save from poll/irq*/
	FUNC6(greth);
	FUNC16(&greth->devlock, flags);

out:
	FUNC3(skb);
	return err;
}