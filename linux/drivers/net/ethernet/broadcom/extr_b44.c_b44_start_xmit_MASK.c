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
typedef  scalar_t__ u32 ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct net_device {int dummy; } ;
struct dma_desc {int dummy; } ;
struct b44 {scalar_t__ tx_prod; int flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  tx_ring_dma; TYPE_3__* sdev; int /*<<< orphan*/  dma_offset; TYPE_2__* tx_ring; TYPE_1__* tx_buffers; } ;
typedef  int netdev_tx_t ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_6__ {int /*<<< orphan*/  dma_dev; } ;
struct TYPE_5__ {void* addr; void* ctrl; } ;
struct TYPE_4__ {scalar_t__ mapping; struct sk_buff* skb; } ;

/* Variables and functions */
 int /*<<< orphan*/  B44_DMATX_PTR ; 
 int B44_FLAG_BUGGY_TXPTR ; 
 int B44_FLAG_REORDER_BUG ; 
 int B44_FLAG_TX_RING_HACK ; 
 int B44_TX_RING_SIZE ; 
 scalar_t__ DESC_CTRL_EOF ; 
 scalar_t__ DESC_CTRL_EOT ; 
 scalar_t__ DESC_CTRL_IOC ; 
 scalar_t__ DESC_CTRL_LEN ; 
 scalar_t__ DESC_CTRL_SOF ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int GFP_ATOMIC ; 
 int GFP_DMA ; 
 int NETDEV_TX_BUSY ; 
 int NETDEV_TX_OK ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (struct b44*) ; 
 struct sk_buff* FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct b44*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct b44*,int /*<<< orphan*/ ,scalar_t__) ; 
 void* FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*,char*) ; 
 struct b44* FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC21 (int) ; 
 int /*<<< orphan*/  FUNC22 () ; 

__attribute__((used)) static netdev_tx_t FUNC23(struct sk_buff *skb, struct net_device *dev)
{
	struct b44 *bp = FUNC14(dev);
	int rc = NETDEV_TX_OK;
	dma_addr_t mapping;
	u32 len, entry, ctrl;
	unsigned long flags;

	len = skb->len;
	FUNC19(&bp->lock, flags);

	/* This is a hard error, log it. */
	if (FUNC21(FUNC2(bp) < 1)) {
		FUNC16(dev);
		FUNC13(dev, "BUG! Tx Ring full when queue awake!\n");
		goto err_out;
	}

	mapping = FUNC10(bp->sdev->dma_dev, skb->data, len, DMA_TO_DEVICE);
	if (FUNC11(bp->sdev->dma_dev, mapping) || mapping + len > FUNC0(30)) {
		struct sk_buff *bounce_skb;

		/* Chip can't handle DMA to/from >1GB, use bounce buffer */
		if (!FUNC11(bp->sdev->dma_dev, mapping))
			FUNC12(bp->sdev->dma_dev, mapping, len,
					     DMA_TO_DEVICE);

		bounce_skb = FUNC3(len, GFP_ATOMIC | GFP_DMA);
		if (!bounce_skb)
			goto err_out;

		mapping = FUNC10(bp->sdev->dma_dev, bounce_skb->data,
					 len, DMA_TO_DEVICE);
		if (FUNC11(bp->sdev->dma_dev, mapping) || mapping + len > FUNC0(30)) {
			if (!FUNC11(bp->sdev->dma_dev, mapping))
				FUNC12(bp->sdev->dma_dev, mapping,
						     len, DMA_TO_DEVICE);
			FUNC9(bounce_skb);
			goto err_out;
		}

		FUNC17(skb, FUNC18(bounce_skb, len), len);
		FUNC8(skb);
		skb = bounce_skb;
	}

	entry = bp->tx_prod;
	bp->tx_buffers[entry].skb = skb;
	bp->tx_buffers[entry].mapping = mapping;

	ctrl  = (len & DESC_CTRL_LEN);
	ctrl |= DESC_CTRL_IOC | DESC_CTRL_SOF | DESC_CTRL_EOF;
	if (entry == (B44_TX_RING_SIZE - 1))
		ctrl |= DESC_CTRL_EOT;

	bp->tx_ring[entry].ctrl = FUNC7(ctrl);
	bp->tx_ring[entry].addr = FUNC7((u32) mapping+bp->dma_offset);

	if (bp->flags & B44_FLAG_TX_RING_HACK)
		FUNC4(bp->sdev, bp->tx_ring_dma,
			                    entry * sizeof(bp->tx_ring[0]),
			                    DMA_TO_DEVICE);

	entry = FUNC1(entry);

	bp->tx_prod = entry;

	FUNC22();

	FUNC6(bp, B44_DMATX_PTR, entry * sizeof(struct dma_desc));
	if (bp->flags & B44_FLAG_BUGGY_TXPTR)
		FUNC6(bp, B44_DMATX_PTR, entry * sizeof(struct dma_desc));
	if (bp->flags & B44_FLAG_REORDER_BUG)
		FUNC5(bp, B44_DMATX_PTR);

	FUNC15(dev, skb->len);

	if (FUNC2(bp) < 1)
		FUNC16(dev);

out_unlock:
	FUNC20(&bp->lock, flags);

	return rc;

err_out:
	rc = NETDEV_TX_BUSY;
	goto out_unlock;
}