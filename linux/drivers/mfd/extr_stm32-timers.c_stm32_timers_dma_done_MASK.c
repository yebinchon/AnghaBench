#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct stm32_timers_dma {int /*<<< orphan*/  completion; TYPE_1__* chan; } ;
struct dma_tx_state {int dummy; } ;
typedef  enum dma_status { ____Placeholder_dma_status } dma_status ;
struct TYPE_2__ {int /*<<< orphan*/  cookie; } ;

/* Variables and functions */
 int DMA_COMPLETE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,struct dma_tx_state*) ; 

__attribute__((used)) static void FUNC2(void *p)
{
	struct stm32_timers_dma *dma = p;
	struct dma_tx_state state;
	enum dma_status status;

	status = FUNC1(dma->chan, dma->chan->cookie, &state);
	if (status == DMA_COMPLETE)
		FUNC0(&dma->completion);
}