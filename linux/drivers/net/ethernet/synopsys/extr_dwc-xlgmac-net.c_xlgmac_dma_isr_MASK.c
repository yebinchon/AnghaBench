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
struct xlgmac_channel {int /*<<< orphan*/  napi; int /*<<< orphan*/  dma_irq; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *data)
{
	struct xlgmac_channel *channel = data;

	/* Per channel DMA interrupts are enabled, so we use the per
	 * channel napi structure and not the private data napi structure
	 */
	if (FUNC2(&channel->napi)) {
		/* Disable Tx and Rx interrupts */
		FUNC1(channel->dma_irq);

		/* Turn on polling */
		FUNC0(&channel->napi);
	}

	return IRQ_HANDLED;
}