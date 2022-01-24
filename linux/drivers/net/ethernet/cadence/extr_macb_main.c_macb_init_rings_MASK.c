#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct macb_dma_desc {int /*<<< orphan*/  ctrl; } ;
struct macb {int tx_ring_size; TYPE_1__* queues; } ;
struct TYPE_3__ {scalar_t__ tx_tail; scalar_t__ tx_head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TX_USED ; 
 int /*<<< orphan*/  TX_WRAP ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct macb*,struct macb_dma_desc*,int /*<<< orphan*/ ) ; 
 struct macb_dma_desc* FUNC3 (TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC4(struct macb *bp)
{
	int i;
	struct macb_dma_desc *desc = NULL;

	FUNC1(&bp->queues[0]);

	for (i = 0; i < bp->tx_ring_size; i++) {
		desc = FUNC3(&bp->queues[0], i);
		FUNC2(bp, desc, 0);
		desc->ctrl = FUNC0(TX_USED);
	}
	bp->queues[0].tx_head = 0;
	bp->queues[0].tx_tail = 0;
	desc->ctrl |= FUNC0(TX_WRAP);
}