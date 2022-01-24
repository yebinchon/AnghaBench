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
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct cxl {int slices; int /*<<< orphan*/ * afu; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (struct cxl*) ; 
 int FUNC1 (struct cxl*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 struct cxl* FUNC4 (struct pci_dev*) ; 
 scalar_t__ FUNC5 (struct pci_dev*) ; 
 scalar_t__ FUNC6 (struct pci_dev*) ; 
 scalar_t__ cxl_verbose ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 int FUNC11 (struct cxl*,int,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static int FUNC13(struct pci_dev *dev, const struct pci_device_id *id)
{
	struct cxl *adapter;
	int slice;
	int rc;

	if (FUNC5(dev)) {
		FUNC7(&dev->dev, "cxl_init_adapter: Ignoring cxl vphb device\n");
		return -ENODEV;
	}

	if (FUNC6(dev)) {
		FUNC9(&dev->dev, "Ignoring card on incompatible PCI slot\n");
		return -ENODEV;
	}

	if (FUNC3() && !FUNC12()) {
		FUNC9(&dev->dev, "Only Radix mode supported\n");
		return -ENODEV;
	}

	if (cxl_verbose)
		FUNC10(dev);

	adapter = FUNC4(dev);
	if (FUNC0(adapter)) {
		FUNC8(&dev->dev, "cxl_init_adapter failed: %li\n", FUNC1(adapter));
		return FUNC1(adapter);
	}

	for (slice = 0; slice < adapter->slices; slice++) {
		if ((rc = FUNC11(adapter, slice, dev))) {
			FUNC8(&dev->dev, "AFU %i failed to initialise: %i\n", slice, rc);
			continue;
		}

		rc = FUNC2(adapter->afu[slice]);
		if (rc)
			FUNC8(&dev->dev, "AFU %i failed to start: %i\n", slice, rc);
	}

	return 0;
}