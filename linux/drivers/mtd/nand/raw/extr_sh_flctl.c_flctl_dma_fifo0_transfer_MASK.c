#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct sh_flctl {TYPE_1__* pdev; int /*<<< orphan*/  dma_complete; struct dma_chan* chan_fifo0_tx; struct dma_chan* chan_fifo0_rx; } ;
struct dma_chan {TYPE_2__* device; } ;
struct dma_async_tx_descriptor {struct sh_flctl* callback_param; int /*<<< orphan*/  callback; } ;
typedef  enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef  int /*<<< orphan*/  dma_cookie_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DMA_CTRL_ACK ; 
 int DMA_DEV_TO_MEM ; 
 int DMA_FROM_DEVICE ; 
 int DMA_MEM_TO_DEV ; 
 int DMA_PREP_INTERRUPT ; 
 int /*<<< orphan*/  DREQ0EN ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct sh_flctl*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct dma_async_tx_descriptor* FUNC8 (struct dma_chan*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  FUNC10 (struct dma_chan*) ; 
 int /*<<< orphan*/  flctl_dma_complete ; 
 int /*<<< orphan*/  FUNC11 (struct sh_flctl*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct sh_flctl *flctl, unsigned long *buf,
					int len, enum dma_data_direction dir)
{
	struct dma_async_tx_descriptor *desc = NULL;
	struct dma_chan *chan;
	enum dma_transfer_direction tr_dir;
	dma_addr_t dma_addr;
	dma_cookie_t cookie;
	uint32_t reg;
	int ret;

	if (dir == DMA_FROM_DEVICE) {
		chan = flctl->chan_fifo0_rx;
		tr_dir = DMA_DEV_TO_MEM;
	} else {
		chan = flctl->chan_fifo0_tx;
		tr_dir = DMA_MEM_TO_DEV;
	}

	dma_addr = FUNC4(chan->device->dev, buf, len, dir);

	if (!FUNC5(chan->device->dev, dma_addr))
		desc = FUNC8(chan, dma_addr, len,
			tr_dir, DMA_PREP_INTERRUPT | DMA_CTRL_ACK);

	if (desc) {
		reg = FUNC13(FUNC0(flctl));
		reg |= DREQ0EN;
		FUNC15(reg, FUNC0(flctl));

		desc->callback = flctl_dma_complete;
		desc->callback_param = flctl;
		cookie = FUNC9(desc);
		if (FUNC6(cookie)) {
			ret = FUNC6(cookie);
			FUNC2(&flctl->pdev->dev,
				 "DMA submit failed, falling back to PIO\n");
			goto out;
		}

		FUNC3(chan);
	} else {
		/* DMA failed, fall back to PIO */
		FUNC11(flctl);
		FUNC2(&flctl->pdev->dev,
			 "DMA failed, falling back to PIO\n");
		ret = -EIO;
		goto out;
	}

	ret =
	FUNC14(&flctl->dma_complete,
				FUNC12(3000));

	if (ret <= 0) {
		FUNC10(chan);
		FUNC1(&flctl->pdev->dev, "wait_for_completion_timeout\n");
	}

out:
	reg = FUNC13(FUNC0(flctl));
	reg &= ~DREQ0EN;
	FUNC15(reg, FUNC0(flctl));

	FUNC7(chan->device->dev, dma_addr, len, dir);

	/* ret > 0 is success */
	return ret;
}