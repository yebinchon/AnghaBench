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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct cxl {scalar_t__ perst_same_image; TYPE_1__ dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct cxl*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pcie_warm_reset ; 
 struct pci_dev* FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(struct cxl *adapter)
{
	struct pci_dev *dev = FUNC5(adapter->dev.parent);
	int rc;

	if (adapter->perst_same_image) {
		FUNC3(&dev->dev,
			 "cxl: refusing to reset/reflash when perst_reloads_same_image is set.\n");
		return -EINVAL;
	}

	FUNC2(&dev->dev, "CXL reset\n");

	/*
	 * The adapter is about to be reset, so ignore errors.
	 */
	FUNC0(adapter);

	/* pcie_warm_reset requests a fundamental pci reset which includes a
	 * PERST assert/deassert.  PERST triggers a loading of the image
	 * if "user" or "factory" is selected in sysfs */
	if ((rc = FUNC4(dev, pcie_warm_reset))) {
		FUNC1(&dev->dev, "cxl: pcie_warm_reset failed\n");
		return rc;
	}

	return rc;
}