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
struct page {int dummy; } ;
struct ef4_rx_queue {int removed_count; int added_count; int ptr_mask; int page_ptr_mask; struct page** page_ring; scalar_t__ buffer; int /*<<< orphan*/  slow_fill; struct ef4_nic* efx; } ;
struct ef4_rx_page_state {int /*<<< orphan*/  dma_addr; } ;
struct ef4_rx_buffer {int dummy; } ;
struct ef4_nic {int rx_buffer_order; TYPE_1__* pci_dev; int /*<<< orphan*/  net_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC2 (struct ef4_rx_queue*,struct ef4_rx_buffer*) ; 
 struct ef4_rx_buffer* FUNC3 (struct ef4_rx_queue*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct ef4_rx_queue*) ; 
 int /*<<< orphan*/  FUNC5 (struct page**) ; 
 int /*<<< orphan*/  FUNC6 (struct ef4_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct ef4_rx_page_state* FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 

void FUNC9(struct ef4_rx_queue *rx_queue)
{
	int i;
	struct ef4_nic *efx = rx_queue->efx;
	struct ef4_rx_buffer *rx_buf;

	FUNC6(rx_queue->efx, drv, rx_queue->efx->net_dev,
		  "shutting down RX queue %d\n", FUNC4(rx_queue));

	FUNC0(&rx_queue->slow_fill);

	/* Release RX buffers from the current read ptr to the write ptr */
	if (rx_queue->buffer) {
		for (i = rx_queue->removed_count; i < rx_queue->added_count;
		     i++) {
			unsigned index = i & rx_queue->ptr_mask;
			rx_buf = FUNC3(rx_queue, index);
			FUNC2(rx_queue, rx_buf);
		}
	}

	/* Unmap and release the pages in the recycle ring. Remove the ring. */
	for (i = 0; i <= rx_queue->page_ptr_mask; i++) {
		struct page *page = rx_queue->page_ring[i];
		struct ef4_rx_page_state *state;

		if (page == NULL)
			continue;

		state = FUNC7(page);
		FUNC1(&efx->pci_dev->dev, state->dma_addr,
			       PAGE_SIZE << efx->rx_buffer_order,
			       DMA_FROM_DEVICE);
		FUNC8(page);
	}
	FUNC5(rx_queue->page_ring);
	rx_queue->page_ring = NULL;
}