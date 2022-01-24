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
struct hclge_hw {int /*<<< orphan*/  io_base; } ;
struct hclge_dev {int /*<<< orphan*/  num_req_vfs; struct hclge_hw hw; struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HCLGE_DRIVER_NAME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int FUNC8 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct hclge_dev *hdev)
{
	struct pci_dev *pdev = hdev->pdev;
	struct hclge_hw *hw;
	int ret;

	ret = FUNC6(pdev);
	if (ret) {
		FUNC1(&pdev->dev, "failed to enable PCI device\n");
		return ret;
	}

	ret = FUNC3(&pdev->dev, FUNC0(64));
	if (ret) {
		ret = FUNC3(&pdev->dev, FUNC0(32));
		if (ret) {
			FUNC1(&pdev->dev,
				"can't set consistent PCI DMA");
			goto err_disable_device;
		}
		FUNC2(&pdev->dev, "set DMA mask to 32 bits\n");
	}

	ret = FUNC8(pdev, HCLGE_DRIVER_NAME);
	if (ret) {
		FUNC1(&pdev->dev, "PCI request regions failed %d\n", ret);
		goto err_disable_device;
	}

	FUNC9(pdev);
	hw = &hdev->hw;
	hw->io_base = FUNC11(pdev, 2, 0);
	if (!hw->io_base) {
		FUNC1(&pdev->dev, "Can't map configuration register space\n");
		ret = -ENOMEM;
		goto err_clr_master;
	}

	hdev->num_req_vfs = FUNC10(pdev);

	return 0;
err_clr_master:
	FUNC4(pdev);
	FUNC7(pdev);
err_disable_device:
	FUNC5(pdev);

	return ret;
}