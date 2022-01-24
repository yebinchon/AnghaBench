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
struct macb_tx_skb {int dummy; } ;
struct macb_queue {void* rx_ring; scalar_t__ rx_ring_dma; int /*<<< orphan*/  tx_skb; void* tx_ring; scalar_t__ tx_ring_dma; } ;
struct TYPE_4__ {scalar_t__ (* mog_alloc_rx_buffers ) (struct macb*) ;} ;
struct macb {unsigned int num_queues; int tx_bd_rd_prefetch; int tx_ring_size; int rx_bd_rd_prefetch; TYPE_2__ macbgem_ops; int /*<<< orphan*/  dev; TYPE_1__* pdev; struct macb_queue* queues; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct macb*) ; 
 int FUNC1 (struct macb*) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct macb*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,unsigned long,unsigned long,...) ; 
 scalar_t__ FUNC6 (struct macb*) ; 

__attribute__((used)) static int FUNC7(struct macb *bp)
{
	struct macb_queue *queue;
	unsigned int q;
	int size;

	for (q = 0, queue = bp->queues; q < bp->num_queues; ++q, ++queue) {
		size = FUNC1(bp) + bp->tx_bd_rd_prefetch;
		queue->tx_ring = FUNC2(&bp->pdev->dev, size,
						    &queue->tx_ring_dma,
						    GFP_KERNEL);
		if (!queue->tx_ring)
			goto out_err;
		FUNC5(bp->dev,
			   "Allocated TX ring for queue %u of %d bytes at %08lx (mapped %p)\n",
			   q, size, (unsigned long)queue->tx_ring_dma,
			   queue->tx_ring);

		size = bp->tx_ring_size * sizeof(struct macb_tx_skb);
		queue->tx_skb = FUNC3(size, GFP_KERNEL);
		if (!queue->tx_skb)
			goto out_err;

		size = FUNC0(bp) + bp->rx_bd_rd_prefetch;
		queue->rx_ring = FUNC2(&bp->pdev->dev, size,
						 &queue->rx_ring_dma, GFP_KERNEL);
		if (!queue->rx_ring)
			goto out_err;
		FUNC5(bp->dev,
			   "Allocated RX ring of %d bytes at %08lx (mapped %p)\n",
			   size, (unsigned long)queue->rx_ring_dma, queue->rx_ring);
	}
	if (bp->macbgem_ops.mog_alloc_rx_buffers(bp))
		goto out_err;

	return 0;

out_err:
	FUNC4(bp);
	return -ENOMEM;
}