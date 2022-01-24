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
struct efx_nic {int vf_count; struct efx_ef10_nic_data* nic_data; } ;
struct efx_ef10_nic_data {struct ef10_vf* vf; } ;
struct ef10_vf {int /*<<< orphan*/ * efx; scalar_t__ vport_id; int /*<<< orphan*/  mac; scalar_t__ vport_assigned; TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int dev_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVB_PORT_ID_NULL ; 
 int PCI_DEV_FLAGS_ASSIGNED ; 
 int /*<<< orphan*/  FUNC0 (struct efx_nic*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct efx_nic*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct efx_nic*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct efx_nic *efx)
{
	struct efx_ef10_nic_data *nic_data = efx->nic_data;
	int i;

	if (!nic_data->vf)
		return;

	for (i = 0; i < efx->vf_count; i++) {
		struct ef10_vf *vf = nic_data->vf + i;

		/* If VF is assigned, do not free the vport  */
		if (vf->pci_dev &&
		    vf->pci_dev->dev_flags & PCI_DEV_FLAGS_ASSIGNED)
			continue;

		if (vf->vport_assigned) {
			FUNC0(efx, EVB_PORT_ID_NULL, i);
			vf->vport_assigned = 0;
		}

		if (!FUNC4(vf->mac)) {
			FUNC1(efx, vf->vport_id, vf->mac);
			FUNC3(vf->mac);
		}

		if (vf->vport_id) {
			FUNC2(efx, vf->vport_id);
			vf->vport_id = 0;
		}

		vf->efx = NULL;
	}
}