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
typedef  size_t u16 ;
struct i40e_rx_buffer {scalar_t__ page_offset; int /*<<< orphan*/ * page; int /*<<< orphan*/  pagecnt_bias; int /*<<< orphan*/  dma; } ;
struct i40e_ring {size_t count; unsigned long size; scalar_t__ next_to_use; scalar_t__ next_to_clean; scalar_t__ next_to_alloc; struct i40e_rx_buffer* desc; struct i40e_rx_buffer* rx_bi; int /*<<< orphan*/  dev; int /*<<< orphan*/  rx_buf_len; scalar_t__ xsk_umem; int /*<<< orphan*/ * skb; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  I40E_RX_DMA_ATTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_ring*) ; 
 int /*<<< orphan*/  FUNC5 (struct i40e_ring*) ; 
 int /*<<< orphan*/  FUNC6 (struct i40e_rx_buffer*,int /*<<< orphan*/ ,unsigned long) ; 

void FUNC7(struct i40e_ring *rx_ring)
{
	unsigned long bi_size;
	u16 i;

	/* ring already cleared, nothing to do */
	if (!rx_ring->rx_bi)
		return;

	if (rx_ring->skb) {
		FUNC1(rx_ring->skb);
		rx_ring->skb = NULL;
	}

	if (rx_ring->xsk_umem) {
		FUNC5(rx_ring);
		goto skip_free;
	}

	/* Free all the Rx ring sk_buffs */
	for (i = 0; i < rx_ring->count; i++) {
		struct i40e_rx_buffer *rx_bi = &rx_ring->rx_bi[i];

		if (!rx_bi->page)
			continue;

		/* Invalidate cache lines that may have been written to by
		 * device so that we avoid corrupting memory.
		 */
		FUNC2(rx_ring->dev,
					      rx_bi->dma,
					      rx_bi->page_offset,
					      rx_ring->rx_buf_len,
					      DMA_FROM_DEVICE);

		/* free resources associated with mapping */
		FUNC3(rx_ring->dev, rx_bi->dma,
				     FUNC4(rx_ring),
				     DMA_FROM_DEVICE,
				     I40E_RX_DMA_ATTR);

		FUNC0(rx_bi->page, rx_bi->pagecnt_bias);

		rx_bi->page = NULL;
		rx_bi->page_offset = 0;
	}

skip_free:
	bi_size = sizeof(struct i40e_rx_buffer) * rx_ring->count;
	FUNC6(rx_ring->rx_bi, 0, bi_size);

	/* Zero out the descriptor ring */
	FUNC6(rx_ring->desc, 0, rx_ring->size);

	rx_ring->next_to_alloc = 0;
	rx_ring->next_to_clean = 0;
	rx_ring->next_to_use = 0;
}