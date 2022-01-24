#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct xcv {int dummy; } ;
struct pci_device_id {int dummy; } ;
struct device {int dummy; } ;
struct pci_dev {struct device dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  reg_base; struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PCI_CFG_REG_BAR_NUM ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,TYPE_1__*) ; 
 TYPE_1__* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int FUNC6 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* xcv ; 

__attribute__((used)) static int FUNC9(struct pci_dev *pdev, const struct pci_device_id *ent)
{
	int err;
	struct device *dev = &pdev->dev;

	xcv = FUNC2(dev, sizeof(struct xcv), GFP_KERNEL);
	if (!xcv)
		return -ENOMEM;
	xcv->pdev = pdev;

	FUNC7(pdev, xcv);

	err = FUNC4(pdev);
	if (err) {
		FUNC0(dev, "Failed to enable PCI device\n");
		goto err_kfree;
	}

	err = FUNC6(pdev, DRV_NAME);
	if (err) {
		FUNC0(dev, "PCI request regions failed 0x%x\n", err);
		goto err_disable_device;
	}

	/* MAP configuration registers */
	xcv->reg_base = FUNC8(pdev, PCI_CFG_REG_BAR_NUM, 0);
	if (!xcv->reg_base) {
		FUNC0(dev, "XCV: Cannot map CSR memory space, aborting\n");
		err = -ENOMEM;
		goto err_release_regions;
	}

	return 0;

err_release_regions:
	FUNC5(pdev);
err_disable_device:
	FUNC3(pdev);
err_kfree:
	FUNC1(dev, xcv);
	xcv = NULL;
	return err;
}