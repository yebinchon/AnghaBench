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
struct sram_channel {int i; int /*<<< orphan*/  dma_ctl; int /*<<< orphan*/  int_msk; int /*<<< orphan*/  gpcnt_ctl; } ;
struct cx25821_dmaqueue {int dummy; } ;
struct cx25821_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dma; } ;
struct cx25821_buffer {TYPE_1__ risc; int /*<<< orphan*/  bpl; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_INT_MSK ; 
 int /*<<< orphan*/  VID_CH_MODE_SEL ; 
 int /*<<< orphan*/  FUNC0 (struct cx25821_dev*,struct sram_channel const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

int FUNC4(struct cx25821_dev *dev,
			    struct cx25821_dmaqueue *q,
			    struct cx25821_buffer *buf,
			    const struct sram_channel *channel)
{
	int tmp = 0;

	/* setup fifo + format */
	FUNC0(dev, channel, buf->bpl, buf->risc.dma);

	/* reset counter */
	FUNC3(channel->gpcnt_ctl, 3);

	/* enable irq */
	FUNC2(PCI_INT_MSK, FUNC1(PCI_INT_MSK) | (1 << channel->i));
	FUNC2(channel->int_msk, 0x11);

	/* start dma */
	FUNC3(channel->dma_ctl, 0x11);	/* FIFO and RISC enable */

	/* make sure upstream setting if any is reversed */
	tmp = FUNC1(VID_CH_MODE_SEL);
	FUNC3(VID_CH_MODE_SEL, tmp & 0xFFFFFE00);

	return 0;
}