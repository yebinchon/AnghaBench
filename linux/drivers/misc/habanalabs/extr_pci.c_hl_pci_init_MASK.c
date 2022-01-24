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
struct pci_dev {int dummy; } ;
struct hl_device {int /*<<< orphan*/  dev; TYPE_1__* asic_funcs; scalar_t__ reset_pcilink; struct pci_dev* pdev; } ;
struct TYPE_2__ {int (* init_iatu ) (struct hl_device*) ;int (* pci_bars_map ) (struct hl_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct hl_device*) ; 
 int FUNC2 (struct hl_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int FUNC7 (struct hl_device*) ; 
 int FUNC8 (struct hl_device*) ; 

int FUNC9(struct hl_device *hdev, u8 dma_mask)
{
	struct pci_dev *pdev = hdev->pdev;
	int rc;

	rc = FUNC2(hdev, dma_mask);
	if (rc)
		return rc;

	if (hdev->reset_pcilink)
		FUNC1(hdev);

	rc = FUNC5(pdev);
	if (rc) {
		FUNC0(hdev->dev, "can't enable PCI device\n");
		return rc;
	}

	FUNC6(pdev);

	rc = hdev->asic_funcs->init_iatu(hdev);
	if (rc) {
		FUNC0(hdev->dev, "Failed to initialize iATU\n");
		goto disable_device;
	}

	rc = hdev->asic_funcs->pci_bars_map(hdev);
	if (rc) {
		FUNC0(hdev->dev, "Failed to initialize PCI BARs\n");
		goto disable_device;
	}

	return 0;

disable_device:
	FUNC3(pdev);
	FUNC4(pdev);

	return rc;
}