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
struct xlgmac_ring {scalar_t__ dirty; scalar_t__ cur; } ;
struct xlgmac_hw_ops {int /*<<< orphan*/  (* rx_desc_reset ) (struct xlgmac_pdata*,struct xlgmac_desc_data*,scalar_t__) ;} ;
struct xlgmac_desc_ops {scalar_t__ (* map_rx_buffer ) (struct xlgmac_pdata*,struct xlgmac_ring*,struct xlgmac_desc_data*) ;int /*<<< orphan*/  (* unmap_desc_data ) (struct xlgmac_pdata*,struct xlgmac_desc_data*) ;} ;
struct xlgmac_pdata {struct xlgmac_hw_ops hw_ops; struct xlgmac_desc_ops desc_ops; } ;
struct xlgmac_desc_data {int /*<<< orphan*/  dma_desc_addr; } ;
struct xlgmac_channel {struct xlgmac_ring* rx_ring; struct xlgmac_pdata* pdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_CH_RDTR_LO ; 
 int /*<<< orphan*/  FUNC0 (struct xlgmac_channel*,int /*<<< orphan*/ ) ; 
 struct xlgmac_desc_data* FUNC1 (struct xlgmac_ring*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xlgmac_pdata*,struct xlgmac_desc_data*) ; 
 scalar_t__ FUNC4 (struct xlgmac_pdata*,struct xlgmac_ring*,struct xlgmac_desc_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct xlgmac_pdata*,struct xlgmac_desc_data*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct xlgmac_channel *channel)
{
	struct xlgmac_pdata *pdata = channel->pdata;
	struct xlgmac_ring *ring = channel->rx_ring;
	struct xlgmac_desc_data *desc_data;
	struct xlgmac_desc_ops *desc_ops;
	struct xlgmac_hw_ops *hw_ops;

	desc_ops = &pdata->desc_ops;
	hw_ops = &pdata->hw_ops;

	while (ring->dirty != ring->cur) {
		desc_data = FUNC1(ring, ring->dirty);

		/* Reset desc_data values */
		desc_ops->unmap_desc_data(pdata, desc_data);

		if (desc_ops->map_rx_buffer(pdata, ring, desc_data))
			break;

		hw_ops->rx_desc_reset(pdata, desc_data, ring->dirty);

		ring->dirty++;
	}

	/* Make sure everything is written before the register write */
	FUNC6();

	/* Update the Rx Tail Pointer Register with address of
	 * the last cleaned entry
	 */
	desc_data = FUNC1(ring, ring->dirty - 1);
	FUNC7(FUNC2(desc_data->dma_desc_addr),
	       FUNC0(channel, DMA_CH_RDTR_LO));
}