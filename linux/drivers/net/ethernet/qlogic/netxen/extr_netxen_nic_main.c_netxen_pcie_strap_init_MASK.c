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
typedef  int u32 ;
struct pci_dev {int devfn; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {scalar_t__ revision_id; } ;
struct netxen_adapter {TYPE_1__ ahw; struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct netxen_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct netxen_adapter*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ NX_P3_B0 ; 
 int /*<<< orphan*/  PCIE_CHICKEN3 ; 
 int /*<<< orphan*/  PCI_CAP_ID_GEN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int,int) ; 

__attribute__((used)) static void FUNC7(struct netxen_adapter *adapter)
{
	u32 pdevfuncsave;
	u32 c8c9value = 0;
	u32 chicken = 0;
	u32 control = 0;
	int i, pos;
	struct pci_dev *pdev;

	pdev = adapter->pdev;

	chicken = FUNC1(adapter, FUNC0(PCIE_CHICKEN3));
	/* clear chicken3.25:24 */
	chicken &= 0xFCFFFFFF;
	/*
	 * if gen1 and B0, set F1020 - if gen 2, do nothing
	 * if gen2 set to F1000
	 */
	pos = FUNC4(pdev, PCI_CAP_ID_GEN);
	if (pos == 0xC0) {
		FUNC5(pdev, pos + 0x10, &control);
		if ((control & 0x000F0000) != 0x00020000) {
			/*  set chicken3.24 if gen1 */
			chicken |= 0x01000000;
		}
		FUNC3(&adapter->pdev->dev, "Gen2 strapping detected\n");
		c8c9value = 0xF1000;
	} else {
		/* set chicken3.24 if gen1 */
		chicken |= 0x01000000;
		FUNC3(&adapter->pdev->dev, "Gen1 strapping detected\n");
		if (adapter->ahw.revision_id == NX_P3_B0)
			c8c9value = 0xF1020;
		else
			c8c9value = 0;
	}

	FUNC2(adapter, FUNC0(PCIE_CHICKEN3), chicken);

	if (!c8c9value)
		return;

	pdevfuncsave = pdev->devfn;
	if (pdevfuncsave & 0x07)
		return;

	for (i = 0; i < 8; i++) {
		FUNC5(pdev, pos + 8, &control);
		FUNC5(pdev, pos + 8, &control);
		FUNC6(pdev, pos + 8, c8c9value);
		pdev->devfn++;
	}
	pdev->devfn = pdevfuncsave;
}