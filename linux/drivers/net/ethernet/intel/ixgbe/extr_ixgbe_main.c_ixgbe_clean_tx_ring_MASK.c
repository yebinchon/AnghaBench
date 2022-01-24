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
struct ixgbe_tx_buffer {union ixgbe_adv_tx_desc* next_to_watch; int /*<<< orphan*/  skb; int /*<<< orphan*/  xdpf; } ;
struct ixgbe_ring {size_t next_to_clean; size_t next_to_use; size_t count; struct ixgbe_tx_buffer* tx_buffer_info; int /*<<< orphan*/  dev; scalar_t__ xsk_umem; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 union ixgbe_adv_tx_desc* FUNC0 (struct ixgbe_ring*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dma ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_tx_buffer*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct ixgbe_tx_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_ring*) ; 
 int /*<<< orphan*/  len ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct ixgbe_ring*) ; 
 int /*<<< orphan*/  FUNC9 (struct ixgbe_ring*) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct ixgbe_ring *tx_ring)
{
	u16 i = tx_ring->next_to_clean;
	struct ixgbe_tx_buffer *tx_buffer = &tx_ring->tx_buffer_info[i];

	if (tx_ring->xsk_umem) {
		FUNC6(tx_ring);
		goto out;
	}

	while (i != tx_ring->next_to_use) {
		union ixgbe_adv_tx_desc *eop_desc, *tx_desc;

		/* Free all the Tx ring sk_buffs */
		if (FUNC8(tx_ring))
			FUNC11(tx_buffer->xdpf);
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
			if (FUNC10(i == tx_ring->count)) {
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
		if (FUNC10(i == tx_ring->count)) {
			i = 0;
			tx_buffer = tx_ring->tx_buffer_info;
		}
	}

	/* reset BQL for queue */
	if (!FUNC8(tx_ring))
		FUNC7(FUNC9(tx_ring));

out:
	/* reset next_to_use and next_to_clean */
	tx_ring->next_to_use = 0;
	tx_ring->next_to_clean = 0;
}