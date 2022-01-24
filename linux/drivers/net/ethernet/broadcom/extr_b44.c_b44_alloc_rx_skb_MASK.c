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
typedef  int u32 ;
struct sk_buff {scalar_t__ data; } ;
struct rx_header {scalar_t__ flags; scalar_t__ len; } ;
struct ring_info {struct sk_buff* skb; scalar_t__ mapping; } ;
struct dma_desc {void* addr; void* ctrl; } ;
struct b44 {int force_copybreak; int flags; int /*<<< orphan*/  rx_ring_dma; TYPE_1__* sdev; int /*<<< orphan*/  dma_offset; struct dma_desc* rx_ring; int /*<<< orphan*/  dev; struct ring_info* rx_buffers; } ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  dma_dev; } ;

/* Variables and functions */
 int B44_FLAG_RX_RING_HACK ; 
 int B44_RX_RING_SIZE ; 
 int DESC_CTRL_EOT ; 
 int DESC_CTRL_LEN ; 
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int ENOMEM ; 
 int GFP_ATOMIC ; 
 int GFP_DMA ; 
 int RX_PKT_BUF_SZ ; 
 struct sk_buff* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC8 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct b44 *bp, int src_idx, u32 dest_idx_unmasked)
{
	struct dma_desc *dp;
	struct ring_info *src_map, *map;
	struct rx_header *rh;
	struct sk_buff *skb;
	dma_addr_t mapping;
	int dest_idx;
	u32 ctrl;

	src_map = NULL;
	if (src_idx >= 0)
		src_map = &bp->rx_buffers[src_idx];
	dest_idx = dest_idx_unmasked & (B44_RX_RING_SIZE - 1);
	map = &bp->rx_buffers[dest_idx];
	skb = FUNC8(bp->dev, RX_PKT_BUF_SZ);
	if (skb == NULL)
		return -ENOMEM;

	mapping = FUNC5(bp->sdev->dma_dev, skb->data,
				 RX_PKT_BUF_SZ,
				 DMA_FROM_DEVICE);

	/* Hardware bug work-around, the chip is unable to do PCI DMA
	   to/from anything above 1GB :-( */
	if (FUNC6(bp->sdev->dma_dev, mapping) ||
		mapping + RX_PKT_BUF_SZ > FUNC0(30)) {
		/* Sigh... */
		if (!FUNC6(bp->sdev->dma_dev, mapping))
			FUNC7(bp->sdev->dma_dev, mapping,
					     RX_PKT_BUF_SZ, DMA_FROM_DEVICE);
		FUNC4(skb);
		skb = FUNC1(RX_PKT_BUF_SZ, GFP_ATOMIC | GFP_DMA);
		if (skb == NULL)
			return -ENOMEM;
		mapping = FUNC5(bp->sdev->dma_dev, skb->data,
					 RX_PKT_BUF_SZ,
					 DMA_FROM_DEVICE);
		if (FUNC6(bp->sdev->dma_dev, mapping) ||
		    mapping + RX_PKT_BUF_SZ > FUNC0(30)) {
			if (!FUNC6(bp->sdev->dma_dev, mapping))
				FUNC7(bp->sdev->dma_dev, mapping, RX_PKT_BUF_SZ,DMA_FROM_DEVICE);
			FUNC4(skb);
			return -ENOMEM;
		}
		bp->force_copybreak = 1;
	}

	rh = (struct rx_header *) skb->data;

	rh->len = 0;
	rh->flags = 0;

	map->skb = skb;
	map->mapping = mapping;

	if (src_map != NULL)
		src_map->skb = NULL;

	ctrl = (DESC_CTRL_LEN & RX_PKT_BUF_SZ);
	if (dest_idx == (B44_RX_RING_SIZE - 1))
		ctrl |= DESC_CTRL_EOT;

	dp = &bp->rx_ring[dest_idx];
	dp->ctrl = FUNC3(ctrl);
	dp->addr = FUNC3((u32) mapping + bp->dma_offset);

	if (bp->flags & B44_FLAG_RX_RING_HACK)
		FUNC2(bp->sdev, bp->rx_ring_dma,
			                    dest_idx * sizeof(*dp),
			                    DMA_BIDIRECTIONAL);

	return RX_PKT_BUF_SZ;
}