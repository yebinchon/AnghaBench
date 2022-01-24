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
struct pci_dev {int dummy; } ;
struct hl_device {scalar_t__* pcie_bar; int /*<<< orphan*/  dev; struct pci_dev* pdev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  HL_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (struct pci_dev*,int) ; 
 scalar_t__ FUNC3 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int FUNC5 (struct pci_dev*,int /*<<< orphan*/ ) ; 

int FUNC6(struct hl_device *hdev, const char * const name[3],
			bool is_wc[3])
{
	struct pci_dev *pdev = hdev->pdev;
	int rc, i, bar;

	rc = FUNC5(pdev, HL_NAME);
	if (rc) {
		FUNC0(hdev->dev, "Cannot obtain PCI resources\n");
		return rc;
	}

	for (i = 0 ; i < 3 ; i++) {
		bar = i * 2; /* 64-bit BARs */
		hdev->pcie_bar[bar] = is_wc[i] ?
				FUNC3(pdev, bar) :
				FUNC2(pdev, bar);
		if (!hdev->pcie_bar[bar]) {
			FUNC0(hdev->dev, "pci_ioremap%s_bar failed for %s\n",
					is_wc[i] ? "_wc" : "", name[i]);
			rc = -ENODEV;
			goto err;
		}
	}

	return 0;

err:
	for (i = 2 ; i >= 0 ; i--) {
		bar = i * 2; /* 64-bit BARs */
		if (hdev->pcie_bar[bar])
			FUNC1(hdev->pcie_bar[bar]);
	}

	FUNC4(pdev);

	return rc;
}