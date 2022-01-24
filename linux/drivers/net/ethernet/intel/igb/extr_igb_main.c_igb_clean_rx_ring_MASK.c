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
struct igb_rx_buffer {int /*<<< orphan*/  pagecnt_bias; int /*<<< orphan*/  page; int /*<<< orphan*/  dma; int /*<<< orphan*/  page_offset; } ;
struct igb_ring {size_t next_to_clean; size_t next_to_alloc; size_t count; scalar_t__ next_to_use; int /*<<< orphan*/  dev; struct igb_rx_buffer* rx_buffer_info; int /*<<< orphan*/ * skb; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  IGB_RX_DMA_ATTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct igb_ring*) ; 
 int /*<<< orphan*/  FUNC5 (struct igb_ring*) ; 

__attribute__((used)) static void FUNC6(struct igb_ring *rx_ring)
{
	u16 i = rx_ring->next_to_clean;

	FUNC1(rx_ring->skb);
	rx_ring->skb = NULL;

	/* Free all the Rx ring sk_buffs */
	while (i != rx_ring->next_to_alloc) {
		struct igb_rx_buffer *buffer_info = &rx_ring->rx_buffer_info[i];

		/* Invalidate cache lines that may have been written to by
		 * device so that we avoid corrupting memory.
		 */
		FUNC2(rx_ring->dev,
					      buffer_info->dma,
					      buffer_info->page_offset,
					      FUNC4(rx_ring),
					      DMA_FROM_DEVICE);

		/* free resources associated with mapping */
		FUNC3(rx_ring->dev,
				     buffer_info->dma,
				     FUNC5(rx_ring),
				     DMA_FROM_DEVICE,
				     IGB_RX_DMA_ATTR);
		FUNC0(buffer_info->page,
					buffer_info->pagecnt_bias);

		i++;
		if (i == rx_ring->count)
			i = 0;
	}

	rx_ring->next_to_alloc = 0;
	rx_ring->next_to_clean = 0;
	rx_ring->next_to_use = 0;
}