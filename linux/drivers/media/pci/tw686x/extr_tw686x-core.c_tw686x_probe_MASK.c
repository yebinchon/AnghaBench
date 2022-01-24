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
struct TYPE_2__ {int /*<<< orphan*/  release; } ;
struct tw686x_dev {struct tw686x_dev* video_channels; struct tw686x_dev* audio_channels; int /*<<< orphan*/  mmio; TYPE_1__ v4l2_dev; int /*<<< orphan*/  dma_delay_timer; int /*<<< orphan*/  name; int /*<<< orphan*/  lock; struct pci_dev* pci_dev; int /*<<< orphan*/  dma_mode; int /*<<< orphan*/  type; } ;
struct pci_device_id {int /*<<< orphan*/  driver_data; } ;
struct pci_dev {int device; int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DMA_CHANNEL_ENABLE ; 
 int /*<<< orphan*/  DMA_CHANNEL_TIMEOUT ; 
 int /*<<< orphan*/  DMA_CMD ; 
 int /*<<< orphan*/  DMA_CONFIG ; 
 int /*<<< orphan*/  DMA_TIMER_INTERVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/ * SRST ; 
 int /*<<< orphan*/  SYS_SOFT_RST ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int dma_interval ; 
 int /*<<< orphan*/  dma_mode ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct tw686x_dev*) ; 
 void* FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tw686x_dev*) ; 
 struct tw686x_dev* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct tw686x_dev*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 scalar_t__ FUNC11 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC15 (struct pci_dev*) ; 
 int FUNC16 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct pci_dev*,struct tw686x_dev*) ; 
 int /*<<< orphan*/  FUNC20 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC21 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct tw686x_dev*,int /*<<< orphan*/ ,int) ; 
 int FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tw686x_dev*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC27 (struct tw686x_dev*) ; 
 int /*<<< orphan*/  tw686x_dev_release ; 
 int /*<<< orphan*/  tw686x_dma_delay ; 
 int /*<<< orphan*/  tw686x_irq ; 
 int FUNC28 (struct tw686x_dev*) ; 

__attribute__((used)) static int FUNC29(struct pci_dev *pci_dev,
			const struct pci_device_id *pci_id)
{
	struct tw686x_dev *dev;
	int err;

	dev = FUNC7(sizeof(*dev), GFP_KERNEL);
	if (!dev)
		return -ENOMEM;
	dev->type = pci_id->driver_data;
	dev->dma_mode = dma_mode;
	FUNC25(dev->name, "tw%04X", pci_dev->device);

	dev->video_channels = FUNC5(FUNC8(dev),
		sizeof(*dev->video_channels), GFP_KERNEL);
	if (!dev->video_channels) {
		err = -ENOMEM;
		goto free_dev;
	}

	dev->audio_channels = FUNC5(FUNC8(dev),
		sizeof(*dev->audio_channels), GFP_KERNEL);
	if (!dev->audio_channels) {
		err = -ENOMEM;
		goto free_video;
	}

	FUNC21("%s: PCI %s, IRQ %d, MMIO 0x%lx (%s mode)\n", dev->name,
		FUNC14(pci_dev), pci_dev->irq,
		(unsigned long)FUNC17(pci_dev, 0),
		FUNC3(dma_mode));

	dev->pci_dev = pci_dev;
	if (FUNC11(pci_dev)) {
		err = -EIO;
		goto free_audio;
	}

	FUNC20(pci_dev);
	err = FUNC18(pci_dev, FUNC0(32));
	if (err) {
		FUNC1(&pci_dev->dev, "32-bit PCI DMA not supported\n");
		err = -EIO;
		goto disable_pci;
	}

	err = FUNC16(pci_dev, dev->name);
	if (err) {
		FUNC1(&pci_dev->dev, "unable to request PCI region\n");
		goto disable_pci;
	}

	dev->mmio = FUNC12(pci_dev, 0);
	if (!dev->mmio) {
		FUNC1(&pci_dev->dev, "unable to remap PCI region\n");
		err = -ENOMEM;
		goto free_region;
	}

	/* Reset all subsystems */
	FUNC22(dev, SYS_SOFT_RST, 0x0f);
	FUNC9(1);

	FUNC22(dev, SRST[0], 0x3f);
	if (FUNC8(dev) > 4)
		FUNC22(dev, SRST[1], 0x3f);

	/* Disable the DMA engine */
	FUNC22(dev, DMA_CMD, 0);
	FUNC22(dev, DMA_CHANNEL_ENABLE, 0);

	/* Enable DMA FIFO overflow and pointer check */
	FUNC22(dev, DMA_CONFIG, 0xffffff04);
	FUNC22(dev, DMA_CHANNEL_TIMEOUT, 0x140c8584);
	FUNC22(dev, DMA_TIMER_INTERVAL, dma_interval);

	FUNC24(&dev->lock);

	err = FUNC23(pci_dev->irq, tw686x_irq, IRQF_SHARED,
			  dev->name, dev);
	if (err < 0) {
		FUNC1(&pci_dev->dev, "unable to request interrupt\n");
		goto iounmap;
	}

	FUNC26(&dev->dma_delay_timer, tw686x_dma_delay, 0);

	/*
	 * This must be set right before initializing v4l2_dev.
	 * It's used to release resources after the last handle
	 * held is released.
	 */
	dev->v4l2_dev.release = tw686x_dev_release;
	err = FUNC28(dev);
	if (err) {
		FUNC1(&pci_dev->dev, "can't register video\n");
		goto free_irq;
	}

	err = FUNC27(dev);
	if (err)
		FUNC2(&pci_dev->dev, "can't register audio\n");

	FUNC19(pci_dev, dev);
	return 0;

free_irq:
	FUNC4(pci_dev->irq, dev);
iounmap:
	FUNC13(pci_dev, dev->mmio);
free_region:
	FUNC15(pci_dev);
disable_pci:
	FUNC10(pci_dev);
free_audio:
	FUNC6(dev->audio_channels);
free_video:
	FUNC6(dev->video_channels);
free_dev:
	FUNC6(dev);
	return err;
}