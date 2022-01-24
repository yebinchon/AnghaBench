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
struct xgbe_ring_data {int /*<<< orphan*/  rdesc_dma; } ;
struct xgbe_ring {scalar_t__ dirty; scalar_t__ cur; } ;
struct xgbe_desc_if {scalar_t__ (* map_rx_buffer ) (struct xgbe_prv_data*,struct xgbe_ring*,struct xgbe_ring_data*) ;int /*<<< orphan*/  (* unmap_rdata ) (struct xgbe_prv_data*,struct xgbe_ring_data*) ;} ;
struct xgbe_hw_if {int /*<<< orphan*/  (* rx_desc_reset ) (struct xgbe_prv_data*,struct xgbe_ring_data*,scalar_t__) ;} ;
struct xgbe_prv_data {struct xgbe_desc_if desc_if; struct xgbe_hw_if hw_if; } ;
struct xgbe_channel {struct xgbe_ring* rx_ring; struct xgbe_prv_data* pdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_CH_RDTR_LO ; 
 struct xgbe_ring_data* FUNC0 (struct xgbe_ring*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct xgbe_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xgbe_prv_data*,struct xgbe_ring_data*) ; 
 scalar_t__ FUNC4 (struct xgbe_prv_data*,struct xgbe_ring*,struct xgbe_ring_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct xgbe_prv_data*,struct xgbe_ring_data*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(struct xgbe_channel *channel)
{
	struct xgbe_prv_data *pdata = channel->pdata;
	struct xgbe_hw_if *hw_if = &pdata->hw_if;
	struct xgbe_desc_if *desc_if = &pdata->desc_if;
	struct xgbe_ring *ring = channel->rx_ring;
	struct xgbe_ring_data *rdata;

	while (ring->dirty != ring->cur) {
		rdata = FUNC0(ring, ring->dirty);

		/* Reset rdata values */
		desc_if->unmap_rdata(pdata, rdata);

		if (desc_if->map_rx_buffer(pdata, ring, rdata))
			break;

		hw_if->rx_desc_reset(pdata, rdata, ring->dirty);

		ring->dirty++;
	}

	/* Make sure everything is written before the register write */
	FUNC6();

	/* Update the Rx Tail Pointer Register with address of
	 * the last cleaned entry */
	rdata = FUNC0(ring, ring->dirty - 1);
	FUNC1(channel, DMA_CH_RDTR_LO,
			  FUNC2(rdata->rdesc_dma));
}