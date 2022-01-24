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
typedef  union ixgbe_adv_tx_desc {int dummy; } ixgbe_adv_tx_desc ;
typedef  size_t u16 ;
struct ixgbevf_tx_buffer {union ixgbe_adv_tx_desc* next_to_watch; int /*<<< orphan*/  skb; int /*<<< orphan*/  data; } ;
struct ixgbevf_ring {size_t next_to_clean; size_t next_to_use; size_t count; struct ixgbevf_tx_buffer* tx_buffer_info; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 union ixgbe_adv_tx_desc* FUNC0 (struct ixgbevf_ring*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dma ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbevf_tx_buffer*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct ixgbevf_tx_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  len ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct ixgbevf_ring*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct ixgbevf_ring *tx_ring)
{
	u16 i = tx_ring->next_to_clean;
	struct ixgbevf_tx_buffer *tx_buffer = &tx_ring->tx_buffer_info[i];

	while (i != tx_ring->next_to_use) {
		union ixgbe_adv_tx_desc *eop_desc, *tx_desc;

		/* Free all the Tx ring sk_buffs */
		if (FUNC7(tx_ring))
			FUNC6(tx_buffer->data);
		else
			FUNC1(tx_buffer->skb);

		/* unmap skb header data */
		FUNC5(tx_ring->dev,
				 FUNC2(tx_buffer, dma),
				 FUNC3(tx_buffer, len),
				 DMA_TO_DEVICE);

		/* check for eop_desc to determine the end of the packet */
		eop_desc = tx_buffer->next_to_watch;
		tx_desc = FUNC0(tx_ring, i);

		/* unmap remaining buffers */
		while (tx_desc != eop_desc) {
			tx_buffer++;
			tx_desc++;
			i++;
			if (FUNC8(i == tx_ring->count)) {
				i = 0;
				tx_buffer = tx_ring->tx_buffer_info;
				tx_desc = FUNC0(tx_ring, 0);
			}

			/* unmap any remaining paged data */
			if (FUNC3(tx_buffer, len))
				FUNC4(tx_ring->dev,
					       FUNC2(tx_buffer, dma),
					       FUNC3(tx_buffer, len),
					       DMA_TO_DEVICE);
		}

		/* move us one more past the eop_desc for start of next pkt */
		tx_buffer++;
		i++;
		if (FUNC8(i == tx_ring->count)) {
			i = 0;
			tx_buffer = tx_ring->tx_buffer_info;
		}
	}

	/* reset next_to_use and next_to_clean */
	tx_ring->next_to_use = 0;
	tx_ring->next_to_clean = 0;

}