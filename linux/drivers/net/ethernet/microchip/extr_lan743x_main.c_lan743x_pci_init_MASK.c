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
struct pci_dev {int /*<<< orphan*/  device; int /*<<< orphan*/  vendor; } ;
struct lan743x_adapter {struct pci_dev* pdev; int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_NAME ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (struct lan743x_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int FUNC2 (struct pci_dev*) ; 
 int FUNC3 (struct pci_dev*,unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  probe ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long*) ; 

__attribute__((used)) static int FUNC7(struct lan743x_adapter *adapter,
			    struct pci_dev *pdev)
{
	unsigned long bars = 0;
	int ret;

	adapter->pdev = pdev;
	ret = FUNC2(pdev);
	if (ret)
		goto return_error;

	FUNC0(adapter, probe, adapter->netdev,
		   "PCI: Vendor ID = 0x%04X, Device ID = 0x%04X\n",
		   pdev->vendor, pdev->device);
	bars = FUNC4(pdev, IORESOURCE_MEM);
	if (!FUNC6(0, &bars))
		goto disable_device;

	ret = FUNC3(pdev, bars, DRIVER_NAME);
	if (ret)
		goto disable_device;

	FUNC5(pdev);
	return 0;

disable_device:
	FUNC1(adapter->pdev);

return_error:
	return ret;
}