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
struct tw5864_dev {int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  mmio; struct pci_dev* pci; int /*<<< orphan*/  slock; int /*<<< orphan*/  name; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  TW5864_H264REV ; 
 int /*<<< orphan*/  TW5864_HW_VERSION ; 
 int /*<<< orphan*/  TW5864_UNDECLARED_H264REV_PART2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 struct tw5864_dev* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct tw5864_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 char* FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 int FUNC11 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tw5864_isr ; 
 int /*<<< orphan*/  FUNC16 (struct tw5864_dev*) ; 
 int FUNC17 (struct tw5864_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  video_nr ; 

__attribute__((used)) static int FUNC21(struct pci_dev *pci_dev,
			  const struct pci_device_id *pci_id)
{
	struct tw5864_dev *dev;
	int err;

	dev = FUNC3(&pci_dev->dev, sizeof(*dev), GFP_KERNEL);
	if (!dev)
		return -ENOMEM;

	FUNC14(dev->name, sizeof(dev->name), "tw5864:%s", FUNC9(pci_dev));

	err = FUNC19(&pci_dev->dev, &dev->v4l2_dev);
	if (err)
		return err;

	/* pci init */
	dev->pci = pci_dev;
	err = FUNC7(pci_dev);
	if (err) {
		FUNC1(&dev->pci->dev, "pci_enable_device() failed\n");
		goto unreg_v4l2;
	}

	FUNC13(pci_dev);

	err = FUNC12(pci_dev, FUNC0(32));
	if (err) {
		FUNC1(&dev->pci->dev, "32 bit PCI DMA is not supported\n");
		goto disable_pci;
	}

	/* get mmio */
	err = FUNC11(pci_dev, dev->name);
	if (err) {
		FUNC1(&dev->pci->dev, "Cannot request regions for MMIO\n");
		goto disable_pci;
	}
	dev->mmio = FUNC8(pci_dev, 0);
	if (!dev->mmio) {
		err = -EIO;
		FUNC1(&dev->pci->dev, "can't ioremap() MMIO memory\n");
		goto release_mmio;
	}

	FUNC15(&dev->slock);

	FUNC2(&pci_dev->dev, "TW5864 hardware version: %04x\n",
		 FUNC18(TW5864_HW_VERSION));
	FUNC2(&pci_dev->dev, "TW5864 H.264 core version: %04x:%04x\n",
		 FUNC18(TW5864_H264REV),
		 FUNC18(TW5864_UNDECLARED_H264REV_PART2));

	err = FUNC17(dev, video_nr);
	if (err)
		goto unmap_mmio;

	/* get irq */
	err = FUNC4(&pci_dev->dev, pci_dev->irq, tw5864_isr,
			       IRQF_SHARED, "tw5864", dev);
	if (err < 0) {
		FUNC1(&dev->pci->dev, "can't get IRQ %d\n", pci_dev->irq);
		goto fini_video;
	}

	FUNC2(&pci_dev->dev, "Note: there are known video quality issues. For details\n");
	FUNC2(&pci_dev->dev, "see the comment in drivers/media/pci/tw5864/tw5864-core.c.\n");

	return 0;

fini_video:
	FUNC16(dev);
unmap_mmio:
	FUNC5(dev->mmio);
release_mmio:
	FUNC10(pci_dev);
disable_pci:
	FUNC6(pci_dev);
unreg_v4l2:
	FUNC20(&dev->v4l2_dev);
	return err;
}