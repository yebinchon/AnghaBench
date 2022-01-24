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
struct sram_channel {int /*<<< orphan*/  dma_ctl; } ;
struct file {int dummy; } ;
struct cx25821_dev {int dummy; } ;
struct cx25821_channel {struct sram_channel* sram_channels; struct cx25821_dev* dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 struct cx25821_channel* FUNC2 (struct file*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv)
{
	struct cx25821_channel *chan = FUNC2(file);
	struct cx25821_dev *dev = chan->dev;
	const struct sram_channel *sram_ch = chan->sram_channels;
	u32 tmp = 0;

	tmp = FUNC0(sram_ch->dma_ctl);
	FUNC1("Video input 0 is %s\n",
		(tmp & 0x11) ? "streaming" : "stopped");
	return 0;
}