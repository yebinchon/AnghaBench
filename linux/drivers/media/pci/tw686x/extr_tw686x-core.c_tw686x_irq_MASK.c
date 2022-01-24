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
typedef  int u32 ;
struct tw686x_dev {int /*<<< orphan*/  dma_delay_timer; int /*<<< orphan*/  lock; TYPE_1__* pci_dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_CHANNEL_ENABLE ; 
 int /*<<< orphan*/  INT_STATUS ; 
 int INT_STATUS_DMA_TOUT ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  PB_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  VIDEO_FIFO_STATUS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (struct tw686x_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct tw686x_dev*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct tw686x_dev*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct tw686x_dev*,unsigned int,int,int,unsigned int*) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *dev_id)
{
	struct tw686x_dev *dev = (struct tw686x_dev *)dev_id;
	unsigned int video_requests, audio_requests, reset_ch;
	u32 fifo_status, fifo_signal, fifo_ov, fifo_bad, fifo_errors;
	u32 int_status, dma_en, video_en, pb_status;
	unsigned long flags;

	int_status = FUNC4(dev, INT_STATUS); /* cleared on read */
	fifo_status = FUNC4(dev, VIDEO_FIFO_STATUS);

	/* INT_STATUS does not include FIFO_STATUS errors! */
	if (!int_status && !FUNC0(fifo_status))
		return IRQ_NONE;

	if (int_status & INT_STATUS_DMA_TOUT) {
		FUNC1(&dev->pci_dev->dev,
			"DMA timeout. Resetting DMA for all channels\n");
		reset_ch = ~0;
		goto reset_channels;
	}

	FUNC5(&dev->lock, flags);
	dma_en = FUNC4(dev, DMA_CHANNEL_ENABLE);
	FUNC6(&dev->lock, flags);

	video_en = dma_en & 0xff;
	fifo_signal = ~(fifo_status & 0xff) & video_en;
	fifo_ov = fifo_status >> 24;
	fifo_bad = fifo_status >> 16;

	/* Mask of channels with signal and FIFO errors */
	fifo_errors = fifo_signal & (fifo_ov | fifo_bad);

	reset_ch = 0;
	pb_status = FUNC4(dev, PB_STATUS);

	/* Coalesce video frame/error events */
	video_requests = (int_status & video_en) | fifo_errors;
	audio_requests = (int_status & dma_en) >> 8;

	if (video_requests)
		FUNC9(dev, video_requests, pb_status,
				 fifo_status, &reset_ch);
	if (audio_requests)
		FUNC7(dev, audio_requests, pb_status);

reset_channels:
	if (reset_ch) {
		FUNC5(&dev->lock, flags);
		FUNC8(dev, reset_ch);
		FUNC6(&dev->lock, flags);
		FUNC2(&dev->dma_delay_timer,
			  jiffies + FUNC3(100));
	}

	return IRQ_HANDLED;
}