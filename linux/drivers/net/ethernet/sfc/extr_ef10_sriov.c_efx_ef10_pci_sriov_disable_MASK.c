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
struct efx_nic {scalar_t__ vf_count; int /*<<< orphan*/  net_dev; struct pci_dev* pci_dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC0 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC1 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 unsigned int FUNC3 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC4(struct efx_nic *efx, bool force)
{
	struct pci_dev *dev = efx->pci_dev;
	unsigned int vfs_assigned = 0;

	vfs_assigned = FUNC3(dev);

	if (vfs_assigned && !force) {
		FUNC1(efx, drv, efx->net_dev, "VFs are assigned to guests; "
			   "please detach them before disabling SR-IOV\n");
		return -EBUSY;
	}

	if (!vfs_assigned)
		FUNC2(dev);

	FUNC0(efx);
	efx->vf_count = 0;
	return 0;
}