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
struct xgbe_ring {unsigned int cur; unsigned int rdesc_count; } ;
struct xgbe_prv_data {int dummy; } ;
struct xgbe_channel {struct xgbe_ring* rx_ring; struct xgbe_prv_data* pdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DMA_CH_RDLR_HI ; 
 int /*<<< orphan*/  DMA_CH_RDLR_LO ; 
 int /*<<< orphan*/  DMA_CH_RDRLR ; 
 int /*<<< orphan*/  DMA_CH_RDTR_LO ; 
 struct xgbe_ring_data* FUNC1 (struct xgbe_ring*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct xgbe_channel*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct xgbe_prv_data*,struct xgbe_ring_data*,unsigned int) ; 

__attribute__((used)) static void FUNC6(struct xgbe_channel *channel)
{
	struct xgbe_prv_data *pdata = channel->pdata;
	struct xgbe_ring *ring = channel->rx_ring;
	struct xgbe_ring_data *rdata;
	unsigned int start_index = ring->cur;
	unsigned int i;

	FUNC0("-->rx_desc_init\n");

	/* Initialize all descriptors */
	for (i = 0; i < ring->rdesc_count; i++) {
		rdata = FUNC1(ring, i);

		/* Initialize Rx descriptor */
		FUNC5(pdata, rdata, i);
	}

	/* Update the total number of Rx descriptors */
	FUNC2(channel, DMA_CH_RDRLR, ring->rdesc_count - 1);

	/* Update the starting address of descriptor ring */
	rdata = FUNC1(ring, start_index);
	FUNC2(channel, DMA_CH_RDLR_HI,
			  FUNC4(rdata->rdesc_dma));
	FUNC2(channel, DMA_CH_RDLR_LO,
			  FUNC3(rdata->rdesc_dma));

	/* Update the Rx Descriptor Tail Pointer */
	rdata = FUNC1(ring, start_index + ring->rdesc_count - 1);
	FUNC2(channel, DMA_CH_RDTR_LO,
			  FUNC3(rdata->rdesc_dma));

	FUNC0("<--rx_desc_init\n");
}