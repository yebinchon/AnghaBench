#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {TYPE_2__* runtime; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_5__ {unsigned int blocks; unsigned int blksize; unsigned int bufsize; int /*<<< orphan*/ * vaddr; int /*<<< orphan*/  pt; int /*<<< orphan*/  sglen; int /*<<< orphan*/  sglist; } ;
struct saa7134_dev {TYPE_1__ dmasound; int /*<<< orphan*/  pci; } ;
struct TYPE_7__ {struct saa7134_dev* dev; } ;
typedef  TYPE_3__ snd_card_saa7134_t ;
struct TYPE_6__ {unsigned int dma_bytes; scalar_t__ dma_addr; int /*<<< orphan*/ * dma_area; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct saa7134_dev*) ; 
 int FUNC1 (struct saa7134_dev*) ; 
 unsigned int FUNC2 (struct snd_pcm_hw_params*) ; 
 unsigned int FUNC3 (struct snd_pcm_hw_params*) ; 
 int FUNC4 (struct saa7134_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct saa7134_dev*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC9 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC10(struct snd_pcm_substream * substream,
				      struct snd_pcm_hw_params * hw_params)
{
	snd_card_saa7134_t *saa7134 = FUNC9(substream);
	struct saa7134_dev *dev;
	unsigned int period_size, periods;
	int err;

	period_size = FUNC2(hw_params);
	periods = FUNC3(hw_params);

	if (period_size < 0x100 || period_size > 0x10000)
		return -EINVAL;
	if (periods < 4)
		return -EINVAL;
	if (period_size * periods > 1024 * 1024)
		return -EINVAL;

	dev = saa7134->dev;

	if (dev->dmasound.blocks == periods &&
	    dev->dmasound.blksize == period_size)
		return 0;

	/* release the old buffer */
	if (substream->runtime->dma_area) {
		FUNC8(dev->pci, &dev->dmasound.pt);
		FUNC5(dev);
		FUNC0(dev);
		substream->runtime->dma_area = NULL;
	}
	dev->dmasound.blocks  = periods;
	dev->dmasound.blksize = period_size;
	dev->dmasound.bufsize = period_size * periods;

	err = FUNC1(dev);
	if (0 != err) {
		dev->dmasound.blocks  = 0;
		dev->dmasound.blksize = 0;
		dev->dmasound.bufsize = 0;
		return err;
	}

	err = FUNC4(dev);
	if (err) {
		FUNC0(dev);
		return err;
	}
	err = FUNC6(dev->pci, &dev->dmasound.pt);
	if (err) {
		FUNC5(dev);
		FUNC0(dev);
		return err;
	}
	err = FUNC7(dev->pci, &dev->dmasound.pt,
				dev->dmasound.sglist, dev->dmasound.sglen, 0);
	if (err) {
		FUNC8(dev->pci, &dev->dmasound.pt);
		FUNC5(dev);
		FUNC0(dev);
		return err;
	}

	/* I should be able to use runtime->dma_addr in the control
	   byte, but it doesn't work. So I allocate the DMA using the
	   V4L functions, and force ALSA to use that as the DMA area */

	substream->runtime->dma_area = dev->dmasound.vaddr;
	substream->runtime->dma_bytes = dev->dmasound.bufsize;
	substream->runtime->dma_addr = 0;

	return 0;

}