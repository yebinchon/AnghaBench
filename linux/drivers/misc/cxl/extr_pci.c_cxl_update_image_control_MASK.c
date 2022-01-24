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
typedef  int /*<<< orphan*/  u8 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct cxl {scalar_t__ perst_select_user; scalar_t__ perst_loads_image; TYPE_1__ dev; } ;

/* Variables and functions */
 int FUNC0 (struct pci_dev*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CXL_VSEC_PERST_LOADS_IMAGE ; 
 int /*<<< orphan*/  CXL_VSEC_PERST_SELECT_USER ; 
 int FUNC1 (struct pci_dev*,int,int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC3 (struct pci_dev*) ; 
 struct pci_dev* FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct cxl *adapter)
{
	struct pci_dev *dev = FUNC4(adapter->dev.parent);
	int rc;
	int vsec;
	u8 image_state;

	if (!(vsec = FUNC3(dev))) {
		FUNC2(&dev->dev, "ABORTING: CXL VSEC not found!\n");
		return -ENODEV;
	}

	if ((rc = FUNC0(dev, vsec, &image_state))) {
		FUNC2(&dev->dev, "failed to read image state: %i\n", rc);
		return rc;
	}

	if (adapter->perst_loads_image)
		image_state |= CXL_VSEC_PERST_LOADS_IMAGE;
	else
		image_state &= ~CXL_VSEC_PERST_LOADS_IMAGE;

	if (adapter->perst_select_user)
		image_state |= CXL_VSEC_PERST_SELECT_USER;
	else
		image_state &= ~CXL_VSEC_PERST_SELECT_USER;

	if ((rc = FUNC1(dev, vsec, image_state))) {
		FUNC2(&dev->dev, "failed to update image control: %i\n", rc);
		return rc;
	}

	return 0;
}