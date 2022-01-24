#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ length; } ;
struct TYPE_4__ {TYPE_1__ upper; } ;
union e1000_adv_rx_desc {TYPE_2__ wb; } ;
typedef  size_t u16 ;
struct igb_tx_buffer {int /*<<< orphan*/  skb; } ;
struct igb_rx_buffer {int /*<<< orphan*/  dma; } ;
struct igb_ring {size_t next_to_clean; size_t count; int /*<<< orphan*/  dev; struct igb_tx_buffer* tx_buffer_info; struct igb_rx_buffer* rx_buffer_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 union e1000_adv_rx_desc* FUNC0 (struct igb_ring*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dma ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct igb_tx_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct igb_tx_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct igb_tx_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct igb_ring*,size_t) ; 
 scalar_t__ FUNC9 (struct igb_rx_buffer*,unsigned int) ; 
 int /*<<< orphan*/  len ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct igb_ring*) ; 

__attribute__((used)) static int FUNC12(struct igb_ring *rx_ring,
				struct igb_ring *tx_ring,
				unsigned int size)
{
	union e1000_adv_rx_desc *rx_desc;
	struct igb_rx_buffer *rx_buffer_info;
	struct igb_tx_buffer *tx_buffer_info;
	u16 rx_ntc, tx_ntc, count = 0;

	/* initialize next to clean and descriptor values */
	rx_ntc = rx_ring->next_to_clean;
	tx_ntc = tx_ring->next_to_clean;
	rx_desc = FUNC0(rx_ring, rx_ntc);

	while (rx_desc->wb.upper.length) {
		/* check Rx buffer */
		rx_buffer_info = &rx_ring->rx_buffer_info[rx_ntc];

		/* sync Rx buffer for CPU read */
		FUNC2(rx_ring->dev,
					rx_buffer_info->dma,
					size,
					DMA_FROM_DEVICE);

		/* verify contents of skb */
		if (FUNC9(rx_buffer_info, size))
			count++;

		/* sync Rx buffer for device write */
		FUNC3(rx_ring->dev,
					   rx_buffer_info->dma,
					   size,
					   DMA_FROM_DEVICE);

		/* unmap buffer on Tx side */
		tx_buffer_info = &tx_ring->tx_buffer_info[tx_ntc];

		/* Free all the Tx ring sk_buffs */
		FUNC1(tx_buffer_info->skb);

		/* unmap skb header data */
		FUNC7(tx_ring->dev,
				 FUNC4(tx_buffer_info, dma),
				 FUNC5(tx_buffer_info, len),
				 DMA_TO_DEVICE);
		FUNC6(tx_buffer_info, len, 0);

		/* increment Rx/Tx next to clean counters */
		rx_ntc++;
		if (rx_ntc == rx_ring->count)
			rx_ntc = 0;
		tx_ntc++;
		if (tx_ntc == tx_ring->count)
			tx_ntc = 0;

		/* fetch next descriptor */
		rx_desc = FUNC0(rx_ring, rx_ntc);
	}

	FUNC10(FUNC11(tx_ring));

	/* re-map buffers to ring, store next to clean values */
	FUNC8(rx_ring, count);
	rx_ring->next_to_clean = rx_ntc;
	tx_ring->next_to_clean = tx_ntc;

	return count;
}