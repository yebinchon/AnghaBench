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
struct r852_device {scalar_t__ dma_stage; scalar_t__ phys_bounce_buffer; int dma_error; scalar_t__ phys_dma_addr; scalar_t__ dma_dir; TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  R852_DMA_ADDR ; 
 int /*<<< orphan*/  R852_DMA_IRQ_ENABLE ; 
 int /*<<< orphan*/  R852_DMA_IRQ_STA ; 
 int /*<<< orphan*/  R852_DMA_LEN ; 
 int /*<<< orphan*/  R852_DMA_SETTINGS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct r852_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct r852_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct r852_device *dev, int error)
{
	FUNC0(dev->dma_stage == 0);

	FUNC4(dev, R852_DMA_IRQ_STA,
			FUNC3(dev, R852_DMA_IRQ_STA));

	FUNC4(dev, R852_DMA_SETTINGS, 0);
	FUNC4(dev, R852_DMA_IRQ_ENABLE, 0);

	/* Precaution to make sure HW doesn't write to random kernel memory */
	FUNC4(dev, R852_DMA_ADDR,
		FUNC1(dev->phys_bounce_buffer));
	FUNC3(dev, R852_DMA_ADDR);

	dev->dma_error = error;
	dev->dma_stage = 0;

	if (dev->phys_dma_addr && dev->phys_dma_addr != dev->phys_bounce_buffer)
		FUNC2(&dev->pci_dev->dev, dev->phys_dma_addr,
			R852_DMA_LEN,
			dev->dma_dir ? DMA_FROM_DEVICE : DMA_TO_DEVICE);
}