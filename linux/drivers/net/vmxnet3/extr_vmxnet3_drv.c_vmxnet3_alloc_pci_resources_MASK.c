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
struct vmxnet3_adapter {void* hw_addr0; void* hw_addr1; struct pci_dev* pdev; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 void* FUNC1 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int) ; 
 int FUNC6 (struct pci_dev*,int,int /*<<< orphan*/ ) ; 
 unsigned long FUNC7 (struct pci_dev*,int) ; 
 unsigned long FUNC8 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  vmxnet3_driver_name ; 

__attribute__((used)) static int
FUNC10(struct vmxnet3_adapter *adapter)
{
	int err;
	unsigned long mmio_start, mmio_len;
	struct pci_dev *pdev = adapter->pdev;

	err = FUNC4(pdev);
	if (err) {
		FUNC0(&pdev->dev, "Failed to enable adapter: error %d\n", err);
		return err;
	}

	err = FUNC6(pdev, (1 << 2) - 1,
					   vmxnet3_driver_name);
	if (err) {
		FUNC0(&pdev->dev,
			"Failed to request region for adapter: error %d\n", err);
		goto err_enable_device;
	}

	FUNC9(pdev);

	mmio_start = FUNC8(pdev, 0);
	mmio_len = FUNC7(pdev, 0);
	adapter->hw_addr0 = FUNC1(mmio_start, mmio_len);
	if (!adapter->hw_addr0) {
		FUNC0(&pdev->dev, "Failed to map bar0\n");
		err = -EIO;
		goto err_ioremap;
	}

	mmio_start = FUNC8(pdev, 1);
	mmio_len = FUNC7(pdev, 1);
	adapter->hw_addr1 = FUNC1(mmio_start, mmio_len);
	if (!adapter->hw_addr1) {
		FUNC0(&pdev->dev, "Failed to map bar1\n");
		err = -EIO;
		goto err_bar1;
	}
	return 0;

err_bar1:
	FUNC2(adapter->hw_addr0);
err_ioremap:
	FUNC5(pdev, (1 << 2) - 1);
err_enable_device:
	FUNC3(pdev);
	return err;
}