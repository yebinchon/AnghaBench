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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC1 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int FUNC4 (struct pci_dev*,int) ; 
 int FUNC5 (struct pci_dev*) ; 
 scalar_t__ FUNC6 (struct pci_dev*) ; 

int FUNC7(struct pci_dev *pdev, int num_vfs)
{
	int current_vfs = FUNC5(pdev);
	int err = 0;

	if (current_vfs && FUNC6(pdev)) {
		FUNC0(&pdev->dev,
			"Cannot modify SR-IOV while VFs are assigned\n");
		num_vfs = current_vfs;
	} else {
		FUNC3(pdev);
		FUNC2(pdev);
	}

	/* allocate resources for the VFs */
	err = FUNC1(pdev, num_vfs);
	if (err)
		return err;

	/* allocate VFs if not already allocated */
	if (num_vfs && num_vfs != current_vfs) {
		err = FUNC4(pdev, num_vfs);
		if (err) {
			FUNC0(&pdev->dev,
				"Enable PCI SR-IOV failed: %d\n", err);
			return err;
		}
	}

	return num_vfs;
}