#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int status; } ;
union ixgbe_adv_tx_desc {TYPE_1__ wb; } ;
struct TYPE_5__ {scalar_t__ length; } ;
struct TYPE_6__ {TYPE_2__ upper; } ;
union ixgbe_adv_rx_desc {TYPE_3__ wb; } ;
typedef  size_t u16 ;
struct ixgbe_tx_buffer {int /*<<< orphan*/  skb; } ;
struct ixgbe_rx_buffer {int /*<<< orphan*/  dma; } ;
struct ixgbe_ring {size_t next_to_clean; size_t next_to_use; size_t count; int /*<<< orphan*/  dev; struct ixgbe_rx_buffer* rx_buffer_info; struct ixgbe_tx_buffer* tx_buffer_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 union ixgbe_adv_rx_desc* FUNC0 (struct ixgbe_ring*,size_t) ; 
 int /*<<< orphan*/  IXGBE_TXD_STAT_DD ; 
 union ixgbe_adv_tx_desc* FUNC1 (struct ixgbe_ring*,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dma ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_tx_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ixgbe_tx_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ixgbe_tx_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ixgbe_ring*,size_t) ; 
 scalar_t__ FUNC11 (struct ixgbe_rx_buffer*,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (struct ixgbe_ring*) ; 
 int /*<<< orphan*/  len ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct ixgbe_ring*) ; 

__attribute__((used)) static u16 FUNC15(struct ixgbe_ring *rx_ring,
				  struct ixgbe_ring *tx_ring,
				  unsigned int size)
{
	union ixgbe_adv_rx_desc *rx_desc;
	u16 rx_ntc, tx_ntc, count = 0;

	/* initialize next to clean and descriptor values */
	rx_ntc = rx_ring->next_to_clean;
	tx_ntc = tx_ring->next_to_clean;
	rx_desc = FUNC0(rx_ring, rx_ntc);

	while (tx_ntc != tx_ring->next_to_use) {
		union ixgbe_adv_tx_desc *tx_desc;
		struct ixgbe_tx_buffer *tx_buffer;

		tx_desc = FUNC1(tx_ring, tx_ntc);

		/* if DD is not set transmit has not completed */
		if (!(tx_desc->wb.status & FUNC2(IXGBE_TXD_STAT_DD)))
			return count;

		/* unmap buffer on Tx side */
		tx_buffer = &tx_ring->tx_buffer_info[tx_ntc];

		/* Free all the Tx ring sk_buffs */
		FUNC3(tx_buffer->skb);

		/* unmap skb header data */
		FUNC9(tx_ring->dev,
				 FUNC6(tx_buffer, dma),
				 FUNC7(tx_buffer, len),
				 DMA_TO_DEVICE);
		FUNC8(tx_buffer, len, 0);

		/* increment Tx next to clean counter */
		tx_ntc++;
		if (tx_ntc == tx_ring->count)
			tx_ntc = 0;
	}

	while (rx_desc->wb.upper.length) {
		struct ixgbe_rx_buffer *rx_buffer;

		/* check Rx buffer */
		rx_buffer = &rx_ring->rx_buffer_info[rx_ntc];

		/* sync Rx buffer for CPU read */
		FUNC4(rx_ring->dev,
					rx_buffer->dma,
					FUNC12(rx_ring),
					DMA_FROM_DEVICE);

		/* verify contents of skb */
		if (FUNC11(rx_buffer, size))
			count++;
		else
			break;

		/* sync Rx buffer for device write */
		FUNC5(rx_ring->dev,
					   rx_buffer->dma,
					   FUNC12(rx_ring),
					   DMA_FROM_DEVICE);

		/* increment Rx next to clean counter */
		rx_ntc++;
		if (rx_ntc == rx_ring->count)
			rx_ntc = 0;

		/* fetch next descriptor */
		rx_desc = FUNC0(rx_ring, rx_ntc);
	}

	FUNC13(FUNC14(tx_ring));

	/* re-map buffers to ring, store next to clean values */
	FUNC10(rx_ring, count);
	rx_ring->next_to_clean = rx_ntc;
	tx_ring->next_to_clean = tx_ntc;

	return count;
}