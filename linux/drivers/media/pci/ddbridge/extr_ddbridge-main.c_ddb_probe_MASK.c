#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pci_device_id {int vendor; int device; int /*<<< orphan*/  subvendor; } ;
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  subsystem_device; } ;
struct ddb {int has_dma; TYPE_2__* link; int /*<<< orphan*/  regs; struct pci_dev* pdev; int /*<<< orphan*/  regs_len; int /*<<< orphan*/ * dev; int /*<<< orphan*/  mutex; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int vendor; int device; int devid; int hwid; int regmapid; int /*<<< orphan*/  subdevice; int /*<<< orphan*/  subvendor; } ;
struct TYPE_5__ {TYPE_1__ ids; TYPE_3__* info; struct ddb* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BASE_READ ; 
 int /*<<< orphan*/  DMA_BASE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENODEV ; 
 int ENOMEM ; 
 scalar_t__ FUNC1 (struct ddb*) ; 
 int /*<<< orphan*/  FUNC2 (struct ddb*) ; 
 int FUNC3 (struct ddb*) ; 
 int /*<<< orphan*/  FUNC4 (struct ddb*) ; 
 int /*<<< orphan*/  FUNC5 (struct ddb*) ; 
 int FUNC6 (struct ddb*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ddb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int,...) ; 
 TYPE_3__* FUNC10 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*) ; 
 scalar_t__ FUNC14 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC15 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct pci_dev*,struct ddb*) ; 
 int /*<<< orphan*/  FUNC19 (struct pci_dev*) ; 
 struct ddb* FUNC20 (int) ; 

__attribute__((used)) static int FUNC21(struct pci_dev *pdev,
		     const struct pci_device_id *id)
{
	struct ddb *dev;
	int stat = 0;

	if (FUNC14(pdev) < 0)
		return -ENODEV;

	FUNC19(pdev);

	if (FUNC17(pdev, FUNC0(64)))
		if (FUNC17(pdev, FUNC0(32)))
			return -ENODEV;

	dev = FUNC20(sizeof(*dev));
	if (!dev)
		return -ENOMEM;

	FUNC12(&dev->mutex);
	dev->has_dma = 1;
	dev->pdev = pdev;
	dev->dev = &pdev->dev;
	FUNC18(pdev, dev);

	dev->link[0].ids.vendor = id->vendor;
	dev->link[0].ids.device = id->device;
	dev->link[0].ids.subvendor = id->subvendor;
	dev->link[0].ids.subdevice = pdev->subsystem_device;
	dev->link[0].ids.devid = (id->device << 16) | id->vendor;

	dev->link[0].dev = dev;
	dev->link[0].info = FUNC10(id->vendor, id->device,
					 id->subvendor, pdev->subsystem_device);

	FUNC9(&pdev->dev, "detected %s\n", dev->link[0].info->name);

	dev->regs_len = FUNC15(dev->pdev, 0);
	dev->regs = FUNC11(FUNC16(dev->pdev, 0),
			    FUNC15(dev->pdev, 0));

	if (!dev->regs) {
		FUNC8(&pdev->dev, "not enough memory for register map\n");
		stat = -ENOMEM;
		goto fail;
	}
	if (FUNC6(dev, 0) == 0xffffffff) {
		FUNC8(&pdev->dev, "cannot read registers\n");
		stat = -ENODEV;
		goto fail;
	}

	dev->link[0].ids.hwid = FUNC6(dev, 0);
	dev->link[0].ids.regmapid = FUNC6(dev, 4);

	FUNC9(&pdev->dev, "HW %08x REGMAP %08x\n",
		 dev->link[0].ids.hwid, dev->link[0].ids.regmapid);

	FUNC7(dev, 0, DMA_BASE_READ);
	FUNC7(dev, 0, DMA_BASE_WRITE);

	stat = FUNC3(dev);
	if (stat < 0)
		goto fail0;

	if (FUNC1(dev) == 0)
		return 0;

	FUNC2(dev);
fail0:
	FUNC8(&pdev->dev, "fail0\n");
	FUNC4(dev);
fail:
	FUNC8(&pdev->dev, "fail\n");

	FUNC5(dev);
	FUNC18(pdev, NULL);
	FUNC13(pdev);
	return -1;
}