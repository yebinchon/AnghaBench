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
struct net_device {int dummy; } ;
struct macb_queue {int /*<<< orphan*/  tx_ring_dma; int /*<<< orphan*/  rx_ring_dma; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* mog_init_rings ) (struct macb*) ;} ;
struct macb {unsigned int num_queues; int rx_intr_mask; int hw_dma_cap; struct macb_queue* queues; TYPE_1__ macbgem_ops; struct net_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HRESP ; 
 int HW_DMA_CAP_64B ; 
 int /*<<< orphan*/  IDR ; 
 int /*<<< orphan*/  IER ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int MACB_TX_INT_FLAGS ; 
 int /*<<< orphan*/  NCR ; 
 int /*<<< orphan*/  RBQP ; 
 int /*<<< orphan*/  RBQPH ; 
 int /*<<< orphan*/  RE ; 
 int /*<<< orphan*/  TBQP ; 
 int /*<<< orphan*/  TBQPH ; 
 int /*<<< orphan*/  TE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct macb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct macb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct macb_queue*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct macb*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(unsigned long data)
{
	struct macb *bp = (struct macb *)data;
	struct net_device *dev = bp->dev;
	struct macb_queue *queue = bp->queues;
	unsigned int q;
	u32 ctrl;

	for (q = 0, queue = bp->queues; q < bp->num_queues; ++q, ++queue) {
		FUNC8(queue, IDR, bp->rx_intr_mask |
					 MACB_TX_INT_FLAGS |
					 FUNC0(HRESP));
	}
	ctrl = FUNC2(bp, NCR);
	ctrl &= ~(FUNC0(RE) | FUNC0(TE));
	FUNC3(bp, NCR, ctrl);

	FUNC7(dev);
	FUNC4(dev);

	bp->macbgem_ops.mog_init_rings(bp);

	/* Initialize TX and RX buffers */
	for (q = 0, queue = bp->queues; q < bp->num_queues; ++q, ++queue) {
		FUNC8(queue, RBQP, FUNC1(queue->rx_ring_dma));
#ifdef CONFIG_ARCH_DMA_ADDR_T_64BIT
		if (bp->hw_dma_cap & HW_DMA_CAP_64B)
			queue_writel(queue, RBQPH,
				     upper_32_bits(queue->rx_ring_dma));
#endif
		FUNC8(queue, TBQP, FUNC1(queue->tx_ring_dma));
#ifdef CONFIG_ARCH_DMA_ADDR_T_64BIT
		if (bp->hw_dma_cap & HW_DMA_CAP_64B)
			queue_writel(queue, TBQPH,
				     upper_32_bits(queue->tx_ring_dma));
#endif

		/* Enable interrupts */
		FUNC8(queue, IER,
			     bp->rx_intr_mask |
			     MACB_TX_INT_FLAGS |
			     FUNC0(HRESP));
	}

	ctrl |= FUNC0(RE) | FUNC0(TE);
	FUNC3(bp, NCR, ctrl);

	FUNC5(dev);
	FUNC6(dev);
}