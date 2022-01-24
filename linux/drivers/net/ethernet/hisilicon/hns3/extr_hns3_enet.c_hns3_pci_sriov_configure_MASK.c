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

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_PCI_IOV ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int FUNC5 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC7(struct pci_dev *pdev, int num_vfs)
{
	int ret;

	if (!(FUNC3(pdev) && FUNC0(CONFIG_PCI_IOV))) {
		FUNC2(&pdev->dev, "Can not config SRIOV\n");
		return -EINVAL;
	}

	if (num_vfs) {
		ret = FUNC5(pdev, num_vfs);
		if (ret)
			FUNC1(&pdev->dev, "SRIOV enable failed %d\n", ret);
		else
			return num_vfs;
	} else if (!FUNC6(pdev)) {
		FUNC4(pdev);
	} else {
		FUNC2(&pdev->dev,
			 "Unable to free VFs because some are assigned to VMs.\n");
	}

	return 0;
}