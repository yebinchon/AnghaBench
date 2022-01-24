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
typedef  int u32 ;
struct tw686x_dev {int /*<<< orphan*/ * snd_card; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_CHANNEL_ENABLE ; 
 int /*<<< orphan*/  DMA_CMD ; 
 int FUNC0 (struct tw686x_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tw686x_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(struct tw686x_dev *dev)
{
	unsigned long flags;
	u32 dma_ch_mask;
	u32 dma_cmd;

	FUNC3(&dev->lock, flags);
	dma_cmd = FUNC0(dev, DMA_CMD);
	dma_ch_mask = FUNC0(dev, DMA_CHANNEL_ENABLE);
	FUNC1(dev, DMA_CMD, dma_cmd & ~0xff00);
	FUNC1(dev, DMA_CHANNEL_ENABLE, dma_ch_mask & ~0xff00);
	FUNC4(&dev->lock, flags);

	if (!dev->snd_card)
		return;
	FUNC2(dev->snd_card);
	dev->snd_card = NULL;
}