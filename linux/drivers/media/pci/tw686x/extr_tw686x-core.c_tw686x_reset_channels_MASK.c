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
typedef  unsigned int u32 ;
struct tw686x_dev {unsigned int pending_dma_en; unsigned int pending_dma_cmd; TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_CHANNEL_ENABLE ; 
 int /*<<< orphan*/  DMA_CMD ; 
 unsigned int DMA_CMD_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 unsigned int FUNC1 (struct tw686x_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tw686x_dev*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC3(struct tw686x_dev *dev, unsigned int ch_mask)
{
	u32 dma_en, dma_cmd;

	dma_en = FUNC1(dev, DMA_CHANNEL_ENABLE);
	dma_cmd = FUNC1(dev, DMA_CMD);

	/*
	 * Save pending register status, the timer will
	 * restore them.
	 */
	dev->pending_dma_en |= dma_en;
	dev->pending_dma_cmd |= dma_cmd;

	/* Disable the reset channels */
	FUNC2(dev, DMA_CHANNEL_ENABLE, dma_en & ~ch_mask);

	if ((dma_en & ~ch_mask) == 0) {
		FUNC0(&dev->pci_dev->dev, "reset: stopping DMA\n");
		dma_cmd &= ~DMA_CMD_ENABLE;
	}
	FUNC2(dev, DMA_CMD, dma_cmd & ~ch_mask);
}