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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {scalar_t__ len; scalar_t__ ip_summed; int /*<<< orphan*/  data; } ;
struct TYPE_3__ {int /*<<< orphan*/  tx_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct greth_private {size_t tx_next; int /*<<< orphan*/  dev; struct greth_bd* tx_bd_base; int /*<<< orphan*/  devlock; struct sk_buff** tx_skbuff; int /*<<< orphan*/  tx_last; } ;
struct greth_bd {int /*<<< orphan*/  stat; int /*<<< orphan*/  addr; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
typedef  int netdev_tx_t ;
struct TYPE_4__ {int nr_frags; int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int GRETH_BD_EN ; 
 int GRETH_BD_IE ; 
 int GRETH_BD_LEN ; 
 int GRETH_BD_WR ; 
 int GRETH_TXBD_CSALL ; 
 int GRETH_TXBD_MORE ; 
 int GRETH_TXBD_NUM_MASK ; 
 scalar_t__ MAX_FRAME_SIZE ; 
 int NETDEV_TX_BUSY ; 
 int NETDEV_TX_OK ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct greth_private*) ; 
 int FUNC7 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC11 () ; 
 struct greth_private* FUNC12 (struct net_device*) ; 
 scalar_t__ FUNC13 (struct greth_private*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 (struct sk_buff*) ; 
 TYPE_2__* FUNC19 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC22 (int) ; 
 int /*<<< orphan*/  FUNC23 () ; 

__attribute__((used)) static netdev_tx_t
FUNC24(struct sk_buff *skb, struct net_device *dev)
{
	struct greth_private *greth = FUNC12(dev);
	struct greth_bd *bdp;
	u32 status, dma_addr;
	int curr_tx, nr_frags, i, err = NETDEV_TX_OK;
	unsigned long flags;
	u16 tx_last;

	nr_frags = FUNC19(skb)->nr_frags;
	tx_last = greth->tx_last;
	FUNC15(); /* tx_last is updated by the poll task */

	if (FUNC7(tx_last, greth->tx_next) < nr_frags + 1) {
		FUNC14(dev);
		err = NETDEV_TX_BUSY;
		goto out;
	}

	if (FUNC13(greth))
		FUNC8(skb);

	if (FUNC22(skb->len > MAX_FRAME_SIZE)) {
		dev->stats.tx_errors++;
		goto out;
	}

	/* Save skb pointer. */
	greth->tx_skbuff[greth->tx_next] = skb;

	/* Linear buf */
	if (nr_frags != 0)
		status = GRETH_TXBD_MORE;
	else
		status = GRETH_BD_IE;

	if (skb->ip_summed == CHECKSUM_PARTIAL)
		status |= GRETH_TXBD_CSALL;
	status |= FUNC18(skb) & GRETH_BD_LEN;
	if (greth->tx_next == GRETH_TXBD_NUM_MASK)
		status |= GRETH_BD_WR;


	bdp = greth->tx_bd_base + greth->tx_next;
	FUNC10(&bdp->stat, status);
	dma_addr = FUNC3(greth->dev, skb->data, FUNC18(skb), DMA_TO_DEVICE);

	if (FUNC22(FUNC4(greth->dev, dma_addr)))
		goto map_error;

	FUNC10(&bdp->addr, dma_addr);

	curr_tx = FUNC0(greth->tx_next);

	/* Frags */
	for (i = 0; i < nr_frags; i++) {
		skb_frag_t *frag = &FUNC19(skb)->frags[i];
		greth->tx_skbuff[curr_tx] = NULL;
		bdp = greth->tx_bd_base + curr_tx;

		status = GRETH_BD_EN;
		if (skb->ip_summed == CHECKSUM_PARTIAL)
			status |= GRETH_TXBD_CSALL;
		status |= FUNC17(frag) & GRETH_BD_LEN;

		/* Wrap around descriptor ring */
		if (curr_tx == GRETH_TXBD_NUM_MASK)
			status |= GRETH_BD_WR;

		/* More fragments left */
		if (i < nr_frags - 1)
			status |= GRETH_TXBD_MORE;
		else
			status |= GRETH_BD_IE; /* enable IRQ on last fragment */

		FUNC10(&bdp->stat, status);

		dma_addr = FUNC16(greth->dev, frag, 0, FUNC17(frag),
					    DMA_TO_DEVICE);

		if (FUNC22(FUNC4(greth->dev, dma_addr)))
			goto frag_map_error;

		FUNC10(&bdp->addr, dma_addr);

		curr_tx = FUNC0(curr_tx);
	}

	FUNC23();

	/* Enable the descriptor chain by enabling the first descriptor */
	bdp = greth->tx_bd_base + greth->tx_next;
	FUNC10(&bdp->stat,
		       FUNC9(&bdp->stat) | GRETH_BD_EN);

	FUNC20(&greth->devlock, flags); /*save from poll/irq*/
	greth->tx_next = curr_tx;
	FUNC6(greth);
	FUNC21(&greth->devlock, flags);

	return NETDEV_TX_OK;

frag_map_error:
	/* Unmap SKB mappings that succeeded and disable descriptor */
	for (i = 0; greth->tx_next + i != curr_tx; i++) {
		bdp = greth->tx_bd_base + greth->tx_next + i;
		FUNC5(greth->dev,
				 FUNC9(&bdp->addr),
				 FUNC9(&bdp->stat) & GRETH_BD_LEN,
				 DMA_TO_DEVICE);
		FUNC10(&bdp->stat, 0);
	}
map_error:
	if (FUNC11())
		FUNC2(greth->dev, "Could not create TX DMA mapping\n");
	FUNC1(skb);
out:
	return err;
}