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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  HINIC_DRV_NAME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int FUNC8 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC12(struct pci_dev *pdev,
		       const struct pci_device_id *id)
{
	int err = FUNC6(pdev);

	if (err) {
		FUNC1(&pdev->dev, "Failed to enable PCI device\n");
		return err;
	}

	err = FUNC8(pdev, HINIC_DRV_NAME);
	if (err) {
		FUNC1(&pdev->dev, "Failed to request PCI regions\n");
		goto err_pci_regions;
	}

	FUNC11(pdev);

	err = FUNC10(pdev, FUNC0(64));
	if (err) {
		FUNC3(&pdev->dev, "Couldn't set 64-bit DMA mask\n");
		err = FUNC10(pdev, FUNC0(32));
		if (err) {
			FUNC1(&pdev->dev, "Failed to set DMA mask\n");
			goto err_dma_mask;
		}
	}

	err = FUNC9(pdev, FUNC0(64));
	if (err) {
		FUNC3(&pdev->dev,
			 "Couldn't set 64-bit consistent DMA mask\n");
		err = FUNC9(pdev, FUNC0(32));
		if (err) {
			FUNC1(&pdev->dev,
				"Failed to set consistent DMA mask\n");
			goto err_dma_consistent_mask;
		}
	}

	err = FUNC4(pdev);
	if (err) {
		FUNC1(&pdev->dev, "Failed to initialize NIC device\n");
		goto err_nic_dev_init;
	}

	FUNC2(&pdev->dev, "HiNIC driver - probed\n");
	return 0;

err_nic_dev_init:
err_dma_consistent_mask:
err_dma_mask:
	FUNC7(pdev);

err_pci_regions:
	FUNC5(pdev);
	return err;
}