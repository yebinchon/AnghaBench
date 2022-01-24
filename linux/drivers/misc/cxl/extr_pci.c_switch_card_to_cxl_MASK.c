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
typedef  int u8 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (struct pci_dev*,int,int*) ; 
 int CXL_VSEC_PROTOCOL_256TB ; 
 int CXL_VSEC_PROTOCOL_ENABLE ; 
 int CXL_VSEC_PROTOCOL_MASK ; 
 int FUNC1 (struct pci_dev*,int,int) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct pci_dev *dev)
{
	int vsec;
	u8 val;
	int rc;

	FUNC3(&dev->dev, "switch card to CXL\n");

	if (!(vsec = FUNC4(dev))) {
		FUNC2(&dev->dev, "ABORTING: CXL VSEC not found!\n");
		return -ENODEV;
	}

	if ((rc = FUNC0(dev, vsec, &val))) {
		FUNC2(&dev->dev, "failed to read current mode control: %i", rc);
		return rc;
	}
	val &= ~CXL_VSEC_PROTOCOL_MASK;
	val |= CXL_VSEC_PROTOCOL_256TB | CXL_VSEC_PROTOCOL_ENABLE;
	if ((rc = FUNC1(dev, vsec, val))) {
		FUNC2(&dev->dev, "failed to enable CXL protocol: %i", rc);
		return rc;
	}
	/*
	 * The CAIA spec (v0.12 11.6 Bi-modal Device Support) states
	 * we must wait 100ms after this mode switch before touching
	 * PCIe config space.
	 */
	FUNC5(100);

	return 0;
}