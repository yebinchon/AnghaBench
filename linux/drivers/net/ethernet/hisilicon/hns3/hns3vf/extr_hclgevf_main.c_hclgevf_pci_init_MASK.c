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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct hclgevf_hw {int /*<<< orphan*/  io_base; struct hclgevf_dev* hdev; } ;
struct hclgevf_dev {struct hclgevf_hw hw; struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HCLGEVF_DRIVER_NAME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int FUNC8 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC10(struct hclgevf_dev *hdev)
{
	struct pci_dev *pdev = hdev->pdev;
	struct hclgevf_hw *hw;
	int ret;

	ret = FUNC5(pdev);
	if (ret) {
		FUNC1(&pdev->dev, "failed to enable PCI device\n");
		return ret;
	}

	ret = FUNC2(&pdev->dev, FUNC0(64));
	if (ret) {
		FUNC1(&pdev->dev, "can't set consistent PCI DMA, exiting");
		goto err_disable_device;
	}

	ret = FUNC8(pdev, HCLGEVF_DRIVER_NAME);
	if (ret) {
		FUNC1(&pdev->dev, "PCI request regions failed %d\n", ret);
		goto err_disable_device;
	}

	FUNC9(pdev);
	hw = &hdev->hw;
	hw->hdev = hdev;
	hw->io_base = FUNC6(pdev, 2, 0);
	if (!hw->io_base) {
		FUNC1(&pdev->dev, "can't map configuration register space\n");
		ret = -ENOMEM;
		goto err_clr_master;
	}

	return 0;

err_clr_master:
	FUNC3(pdev);
	FUNC7(pdev);
err_disable_device:
	FUNC4(pdev);

	return ret;
}