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
struct xgbe_prv_data {scalar_t__ channel_irq_mode; } ;
struct xgbe_channel {int /*<<< orphan*/  napi; int /*<<< orphan*/  dma_irq; struct xgbe_prv_data* pdata; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_CH_SR ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  RI ; 
 int /*<<< orphan*/  TI ; 
 int /*<<< orphan*/  FUNC0 (struct xgbe_channel*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct xgbe_prv_data*,struct xgbe_channel*) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *data)
{
	struct xgbe_channel *channel = data;
	struct xgbe_prv_data *pdata = channel->pdata;
	unsigned int dma_status;

	/* Per channel DMA interrupts are enabled, so we use the per
	 * channel napi structure and not the private data napi structure
	 */
	if (FUNC4(&channel->napi)) {
		/* Disable Tx and Rx interrupts */
		if (pdata->channel_irq_mode)
			FUNC5(pdata, channel);
		else
			FUNC3(channel->dma_irq);

		/* Turn on polling */
		FUNC2(&channel->napi);
	}

	/* Clear Tx/Rx signals */
	dma_status = 0;
	FUNC1(dma_status, DMA_CH_SR, TI, 1);
	FUNC1(dma_status, DMA_CH_SR, RI, 1);
	FUNC0(channel, DMA_CH_SR, dma_status);

	return IRQ_HANDLED;
}