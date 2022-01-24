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
struct efx_nic {int vf_count; int /*<<< orphan*/  net_dev; struct pci_dev* pci_dev; } ;

/* Variables and functions */
 int FUNC0 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC1 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC2 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  probe ; 

__attribute__((used)) static int FUNC4(struct efx_nic *efx, int num_vfs)
{
	int rc = 0;
	struct pci_dev *dev = efx->pci_dev;

	efx->vf_count = num_vfs;

	rc = FUNC0(efx);
	if (rc)
		goto fail1;

	rc = FUNC3(dev, num_vfs);
	if (rc)
		goto fail2;

	return 0;
fail2:
	FUNC1(efx);
fail1:
	efx->vf_count = 0;
	FUNC2(efx, probe, efx->net_dev,
		  "Failed to enable SRIOV VFs\n");
	return rc;
}