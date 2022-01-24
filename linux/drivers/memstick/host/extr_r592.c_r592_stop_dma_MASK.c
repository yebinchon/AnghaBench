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
struct r592_device {int dma_error; int /*<<< orphan*/  dummy_dma_page_physical_address; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_IRQ_ACK_MASK ; 
 int /*<<< orphan*/  DMA_IRQ_EN_MASK ; 
 int /*<<< orphan*/  R592_FIFO_DMA ; 
 int /*<<< orphan*/  R592_FIFO_DMA_SETTINGS ; 
 int /*<<< orphan*/  R592_FIFO_DMA_SETTINGS_EN ; 
 int /*<<< orphan*/  R592_REG_MSC ; 
 int /*<<< orphan*/  FUNC0 (struct r592_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct r592_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct r592_device *dev, int error)
{
	FUNC0(dev, R592_FIFO_DMA_SETTINGS,
		R592_FIFO_DMA_SETTINGS_EN);

	/* This is only a precation */
	FUNC1(dev, R592_FIFO_DMA,
			dev->dummy_dma_page_physical_address);

	FUNC0(dev, R592_REG_MSC, DMA_IRQ_EN_MASK);
	FUNC0(dev, R592_REG_MSC, DMA_IRQ_ACK_MASK);
	dev->dma_error = error;
}