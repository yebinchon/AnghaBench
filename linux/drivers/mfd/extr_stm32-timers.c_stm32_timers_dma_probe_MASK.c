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
struct TYPE_2__ {void** chans; int /*<<< orphan*/  lock; int /*<<< orphan*/  completion; } ;
struct stm32_timers {TYPE_1__ dma; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int STM32_TIMERS_DMA_CH1 ; 
 int STM32_TIMERS_DMA_CH4 ; 
 size_t STM32_TIMERS_DMA_COM ; 
 size_t STM32_TIMERS_DMA_TRIG ; 
 size_t STM32_TIMERS_DMA_UP ; 
 void* FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC5(struct device *dev,
				   struct stm32_timers *ddata)
{
	int i;
	char name[4];

	FUNC2(&ddata->dma.completion);
	FUNC3(&ddata->dma.lock);

	/* Optional DMA support: get valid DMA channel(s) or NULL */
	for (i = STM32_TIMERS_DMA_CH1; i <= STM32_TIMERS_DMA_CH4; i++) {
		FUNC4(name, FUNC0(name), "ch%1d", i + 1);
		ddata->dma.chans[i] = FUNC1(dev, name);
	}
	ddata->dma.chans[STM32_TIMERS_DMA_UP] =
		FUNC1(dev, "up");
	ddata->dma.chans[STM32_TIMERS_DMA_TRIG] =
		FUNC1(dev, "trig");
	ddata->dma.chans[STM32_TIMERS_DMA_COM] =
		FUNC1(dev, "com");
}