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
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct pci_device_id {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  kobj; } ;
struct pci_dev {TYPE_3__ dev; } ;
struct cmodio_device {TYPE_1__* ctrl; int /*<<< orphan*/  hex; struct pci_dev* pdev; } ;
struct TYPE_5__ {int /*<<< orphan*/  int_disable; int /*<<< orphan*/  int_enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct cmodio_device*) ; 
 int /*<<< orphan*/  cmodio_sysfs_attr_group ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*) ; 
 struct cmodio_device* FUNC2 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int FUNC7 (struct pci_dev*) ; 
 TYPE_1__* FUNC8 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int FUNC10 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*,struct cmodio_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct pci_dev *dev,
				      const struct pci_device_id *id)
{
	struct cmodio_device *priv;
	int ret;

	priv = FUNC2(&dev->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	FUNC11(dev, priv);
	priv->pdev = dev;

	/* Hardware Initialization */
	ret = FUNC7(dev);
	if (ret) {
		FUNC1(&dev->dev, "unable to enable device\n");
		return ret;
	}

	FUNC12(dev);
	ret = FUNC10(dev, DRV_NAME);
	if (ret) {
		FUNC1(&dev->dev, "unable to request regions\n");
		goto out_pci_disable_device;
	}

	/* Onboard configuration registers */
	priv->ctrl = FUNC8(dev, 4);
	if (!priv->ctrl) {
		FUNC1(&dev->dev, "unable to remap onboard regs\n");
		ret = -ENOMEM;
		goto out_pci_release_regions;
	}

	/* Read the hex switch on the carrier board */
	priv->hex = FUNC3(&priv->ctrl->int_enable);

	/* Add the MODULbus number (hex switch value) to the device's sysfs */
	ret = FUNC13(&dev->dev.kobj, &cmodio_sysfs_attr_group);
	if (ret) {
		FUNC1(&dev->dev, "unable to create sysfs attributes\n");
		goto out_unmap_ctrl;
	}

	/*
	 * Disable all interrupt lines, each submodule will enable its
	 * own interrupt line if needed
	 */
	FUNC5(0xf, &priv->ctrl->int_disable);

	/* Register drivers for all submodules */
	ret = FUNC0(priv);
	if (ret) {
		FUNC1(&dev->dev, "unable to probe submodules\n");
		goto out_sysfs_remove_group;
	}

	return 0;

out_sysfs_remove_group:
	FUNC14(&dev->dev.kobj, &cmodio_sysfs_attr_group);
out_unmap_ctrl:
	FUNC4(priv->ctrl);
out_pci_release_regions:
	FUNC9(dev);
out_pci_disable_device:
	FUNC6(dev);

	return ret;
}