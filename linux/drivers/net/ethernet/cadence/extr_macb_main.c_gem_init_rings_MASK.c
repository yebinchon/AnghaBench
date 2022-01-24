#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct macb_queue {scalar_t__ rx_prepared_head; scalar_t__ rx_tail; scalar_t__ tx_tail; scalar_t__ tx_head; } ;
struct macb_dma_desc {int /*<<< orphan*/  ctrl; } ;
struct macb {unsigned int num_queues; int tx_ring_size; struct macb_queue* queues; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TX_USED ; 
 int /*<<< orphan*/  TX_WRAP ; 
 int /*<<< orphan*/  FUNC1 (struct macb_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct macb*,struct macb_dma_desc*,int /*<<< orphan*/ ) ; 
 struct macb_dma_desc* FUNC3 (struct macb_queue*,int) ; 

__attribute__((used)) static void FUNC4(struct macb *bp)
{
	struct macb_queue *queue;
	struct macb_dma_desc *desc = NULL;
	unsigned int q;
	int i;

	for (q = 0, queue = bp->queues; q < bp->num_queues; ++q, ++queue) {
		for (i = 0; i < bp->tx_ring_size; i++) {
			desc = FUNC3(queue, i);
			FUNC2(bp, desc, 0);
			desc->ctrl = FUNC0(TX_USED);
		}
		desc->ctrl |= FUNC0(TX_WRAP);
		queue->tx_head = 0;
		queue->tx_tail = 0;

		queue->rx_tail = 0;
		queue->rx_prepared_head = 0;

		FUNC1(queue);
	}

}