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
struct pci_dev {int dummy; } ;
struct ice_pf {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ice_pf*) ; 
 scalar_t__ FUNC2 (struct ice_pf*) ; 
 int FUNC3 (struct ice_pf*,int) ; 
 struct ice_pf* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 

int FUNC6(struct pci_dev *pdev, int num_vfs)
{
	struct ice_pf *pf = FUNC4(pdev);

	if (FUNC2(pf)) {
		FUNC0(&pf->pdev->dev,
			"SR-IOV cannot be configured - Device is in Safe Mode\n");
		return -EOPNOTSUPP;
	}

	if (num_vfs)
		return FUNC3(pf, num_vfs);

	if (!FUNC5(pdev)) {
		FUNC1(pf);
	} else {
		FUNC0(&pf->pdev->dev,
			"can't free VFs because some are assigned to VMs.\n");
		return -EBUSY;
	}

	return 0;
}