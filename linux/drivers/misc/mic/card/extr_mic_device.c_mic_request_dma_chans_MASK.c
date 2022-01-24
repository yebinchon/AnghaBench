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
struct mic_driver {scalar_t__ num_dma_ch; int /*<<< orphan*/  dev; struct dma_chan** dma_ch; } ;
struct dma_chan {int dummy; } ;
typedef  int /*<<< orphan*/  dma_cap_mask_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_MEMCPY ; 
 scalar_t__ MIC_MAX_DMA_CHAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct dma_chan* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct mic_driver *mdrv)
{
	dma_cap_mask_t mask;
	struct dma_chan *chan;

	FUNC2(mask);
	FUNC1(DMA_MEMCPY, mask);

	do {
		chan = FUNC3(mask, NULL, NULL);
		if (chan) {
			mdrv->dma_ch[mdrv->num_dma_ch++] = chan;
			if (mdrv->num_dma_ch >= MIC_MAX_DMA_CHAN)
				break;
		}
	} while (chan);
	FUNC0(mdrv->dev, "DMA channels # %d\n", mdrv->num_dma_ch);
	return mdrv->num_dma_ch;
}