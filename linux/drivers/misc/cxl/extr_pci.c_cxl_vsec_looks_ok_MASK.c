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
struct cxl {int vsec_status; scalar_t__ ps_size; TYPE_1__* native; int /*<<< orphan*/  slices; int /*<<< orphan*/  caia_major; } ;
struct TYPE_2__ {scalar_t__ ps_off; int /*<<< orphan*/  afu_desc_size; int /*<<< orphan*/  afu_desc_off; } ;

/* Variables and functions */
 int CXL_STATUS_SECOND_PORT ; 
 int CXL_UNSUPPORTED_FEATURES ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct cxl*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC4(struct cxl *adapter, struct pci_dev *dev)
{
	if (adapter->vsec_status & CXL_STATUS_SECOND_PORT)
		return -EBUSY;

	if (adapter->vsec_status & CXL_UNSUPPORTED_FEATURES) {
		FUNC1(&dev->dev, "ABORTING: CXL requires unsupported features\n");
		return -EINVAL;
	}

	if (!FUNC0(adapter)) {
		FUNC2(&dev->dev, "Ignoring card. PSL type is not supported (caia version: %d)\n",
			 adapter->caia_major);
		return -ENODEV;
	}

	if (!adapter->slices) {
		/* Once we support dynamic reprogramming we can use the card if
		 * it supports loadable AFUs */
		FUNC1(&dev->dev, "ABORTING: Device has no AFUs\n");
		return -EINVAL;
	}

	if (!adapter->native->afu_desc_off || !adapter->native->afu_desc_size) {
		FUNC1(&dev->dev, "ABORTING: VSEC shows no AFU descriptors\n");
		return -EINVAL;
	}

	if (adapter->ps_size > FUNC3(dev) - adapter->native->ps_off) {
		FUNC1(&dev->dev, "ABORTING: Problem state size larger than "
				   "available in BAR2: 0x%llx > 0x%llx\n",
			 adapter->ps_size, FUNC3(dev) - adapter->native->ps_off);
		return -EINVAL;
	}

	return 0;
}