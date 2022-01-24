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
typedef  size_t u16 ;
struct sk_buff {int dummy; } ;
struct ixgbe_rx_buffer {int /*<<< orphan*/  pagecnt_bias; int /*<<< orphan*/  page; int /*<<< orphan*/  dma; int /*<<< orphan*/  page_offset; struct sk_buff* skb; } ;
struct ixgbe_ring {size_t next_to_clean; size_t next_to_alloc; size_t count; scalar_t__ next_to_use; struct ixgbe_rx_buffer* rx_buffer_info; int /*<<< orphan*/  dev; scalar_t__ xsk_umem; } ;
struct TYPE_2__ {int /*<<< orphan*/  dma; scalar_t__ page_released; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  IXGBE_RX_DMA_ATTR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_ring*) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_ring*) ; 
 int /*<<< orphan*/  FUNC7 (struct ixgbe_ring*) ; 

__attribute__((used)) static void FUNC8(struct ixgbe_ring *rx_ring)
{
	u16 i = rx_ring->next_to_clean;
	struct ixgbe_rx_buffer *rx_buffer = &rx_ring->rx_buffer_info[i];

	if (rx_ring->xsk_umem) {
		FUNC7(rx_ring);
		goto skip_free;
	}

	/* Free all the Rx ring sk_buffs */
	while (i != rx_ring->next_to_alloc) {
		if (rx_buffer->skb) {
			struct sk_buff *skb = rx_buffer->skb;
			if (FUNC0(skb)->page_released)
				FUNC4(rx_ring->dev,
						     FUNC0(skb)->dma,
						     FUNC6(rx_ring),
						     DMA_FROM_DEVICE,
						     IXGBE_RX_DMA_ATTR);
			FUNC2(skb);
		}

		/* Invalidate cache lines that may have been written to by
		 * device so that we avoid corrupting memory.
		 */
		FUNC3(rx_ring->dev,
					      rx_buffer->dma,
					      rx_buffer->page_offset,
					      FUNC5(rx_ring),
					      DMA_FROM_DEVICE);

		/* free resources associated with mapping */
		FUNC4(rx_ring->dev, rx_buffer->dma,
				     FUNC6(rx_ring),
				     DMA_FROM_DEVICE,
				     IXGBE_RX_DMA_ATTR);
		FUNC1(rx_buffer->page,
					rx_buffer->pagecnt_bias);

		i++;
		rx_buffer++;
		if (i == rx_ring->count) {
			i = 0;
			rx_buffer = rx_ring->rx_buffer_info;
		}
	}

skip_free:
	rx_ring->next_to_alloc = 0;
	rx_ring->next_to_clean = 0;
	rx_ring->next_to_use = 0;
}