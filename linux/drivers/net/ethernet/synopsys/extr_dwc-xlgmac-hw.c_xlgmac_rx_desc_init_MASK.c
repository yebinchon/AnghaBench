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
struct xlgmac_ring {unsigned int cur; unsigned int dma_desc_count; } ;
struct xlgmac_pdata {int dummy; } ;
struct xlgmac_desc_data {int /*<<< orphan*/  dma_desc_addr; } ;
struct xlgmac_channel {struct xlgmac_ring* rx_ring; struct xlgmac_pdata* pdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_CH_RDLR_HI ; 
 int /*<<< orphan*/  DMA_CH_RDLR_LO ; 
 int /*<<< orphan*/  DMA_CH_RDRLR ; 
 int /*<<< orphan*/  DMA_CH_RDTR_LO ; 
 int /*<<< orphan*/  FUNC0 (struct xlgmac_channel*,int /*<<< orphan*/ ) ; 
 struct xlgmac_desc_data* FUNC1 (struct xlgmac_ring*,unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct xlgmac_pdata*,struct xlgmac_desc_data*,unsigned int) ; 

__attribute__((used)) static void FUNC6(struct xlgmac_channel *channel)
{
	struct xlgmac_pdata *pdata = channel->pdata;
	struct xlgmac_ring *ring = channel->rx_ring;
	unsigned int start_index = ring->cur;
	struct xlgmac_desc_data *desc_data;
	unsigned int i;

	/* Initialize all descriptors */
	for (i = 0; i < ring->dma_desc_count; i++) {
		desc_data = FUNC1(ring, i);

		/* Initialize Rx descriptor */
		FUNC5(pdata, desc_data, i);
	}

	/* Update the total number of Rx descriptors */
	FUNC4(ring->dma_desc_count - 1, FUNC0(channel, DMA_CH_RDRLR));

	/* Update the starting address of descriptor ring */
	desc_data = FUNC1(ring, start_index);
	FUNC4(FUNC3(desc_data->dma_desc_addr),
	       FUNC0(channel, DMA_CH_RDLR_HI));
	FUNC4(FUNC2(desc_data->dma_desc_addr),
	       FUNC0(channel, DMA_CH_RDLR_LO));

	/* Update the Rx Descriptor Tail Pointer */
	desc_data = FUNC1(ring, start_index +
					  ring->dma_desc_count - 1);
	FUNC4(FUNC2(desc_data->dma_desc_addr),
	       FUNC0(channel, DMA_CH_RDTR_LO));
}