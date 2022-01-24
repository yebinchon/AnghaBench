#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u16 ;
struct efx_nic {int vf_count; int /*<<< orphan*/  net_dev; struct efx_ef10_nic_data* nic_data; } ;
struct efx_ef10_nic_data {struct ef10_vf* vf; } ;
struct ef10_vf {scalar_t__ vlan; int vport_assigned; TYPE_2__* efx; scalar_t__ vport_id; int /*<<< orphan*/  mac; } ;
struct TYPE_10__ {int /*<<< orphan*/  mac_lock; int /*<<< orphan*/  filter_sem; int /*<<< orphan*/  net_dev; TYPE_1__* type; } ;
struct TYPE_9__ {int (* filter_table_probe ) (TYPE_2__*) ;int /*<<< orphan*/  (* filter_table_remove ) (TYPE_2__*) ;} ;

/* Variables and functions */
 scalar_t__ EFX_EF10_NO_VLAN ; 
 int EINVAL ; 
 int /*<<< orphan*/  EVB_PORT_ID_ASSIGNED ; 
 scalar_t__ EVB_PORT_ID_NULL ; 
 int /*<<< orphan*/  MC_CMD_VPORT_ALLOC_IN_VPORT_TYPE_NORMAL ; 
 int /*<<< orphan*/  RESET_TYPE_DATAPATH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (struct efx_nic*,scalar_t__,int) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct efx_nic*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__*) ; 
 int FUNC8 (struct efx_nic*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct efx_nic*,scalar_t__) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC18 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*) ; 
 int FUNC20 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 

int FUNC22(struct efx_nic *efx, int vf_i, u16 vlan,
			       u8 qos)
{
	struct efx_ef10_nic_data *nic_data = efx->nic_data;
	struct ef10_vf *vf;
	u16 new_vlan;
	int rc = 0, rc2 = 0;

	if (vf_i >= efx->vf_count)
		return -EINVAL;
	if (qos != 0)
		return -EINVAL;

	vf = nic_data->vf + vf_i;

	new_vlan = (vlan == 0) ? EFX_EF10_NO_VLAN : vlan;
	if (new_vlan == vf->vlan)
		return 0;

	if (vf->efx) {
		FUNC2(vf->efx);
		FUNC11(vf->efx->net_dev);

		FUNC15(&vf->efx->mac_lock);
		FUNC0(&vf->efx->filter_sem);
		vf->efx->type->filter_table_remove(vf->efx);

		rc = FUNC5(vf->efx, EVB_PORT_ID_ASSIGNED);
		if (rc)
			goto restore_filters;
	}

	if (vf->vport_assigned) {
		rc = FUNC3(efx, EVB_PORT_ID_NULL, vf_i);
		if (rc) {
			FUNC18(efx, drv, efx->net_dev,
				   "Failed to change vlan on VF %d.\n", vf_i);
			FUNC18(efx, drv, efx->net_dev,
				   "This is likely because the VF is bound to a driver in a VM.\n");
			FUNC18(efx, drv, efx->net_dev,
				   "Please unload the driver in the VM.\n");
			goto restore_vadaptor;
		}
		vf->vport_assigned = 0;
	}

	if (!FUNC14(vf->mac)) {
		rc = FUNC8(efx, vf->vport_id, vf->mac);
		if (rc)
			goto restore_evb_port;
	}

	if (vf->vport_id) {
		rc = FUNC9(efx, vf->vport_id);
		if (rc)
			goto restore_mac;
		vf->vport_id = 0;
	}

	/* Do the actual vlan change */
	vf->vlan = new_vlan;

	/* Restore everything in reverse order */
	rc = FUNC7(efx, EVB_PORT_ID_ASSIGNED,
				  MC_CMD_VPORT_ALLOC_IN_VPORT_TYPE_NORMAL,
				  vf->vlan, &vf->vport_id);
	if (rc)
		goto reset_nic_up_write;

restore_mac:
	if (!FUNC14(vf->mac)) {
		rc2 = FUNC6(efx, vf->vport_id, vf->mac);
		if (rc2) {
			FUNC13(vf->mac);
			goto reset_nic_up_write;
		}
	}

restore_evb_port:
	rc2 = FUNC3(efx, vf->vport_id, vf_i);
	if (rc2)
		goto reset_nic_up_write;
	else
		vf->vport_assigned = 1;

restore_vadaptor:
	if (vf->efx) {
		rc2 = FUNC4(vf->efx, EVB_PORT_ID_ASSIGNED);
		if (rc2)
			goto reset_nic_up_write;
	}

restore_filters:
	if (vf->efx) {
		rc2 = vf->efx->type->filter_table_probe(vf->efx);
		if (rc2)
			goto reset_nic_up_write;

		FUNC21(&vf->efx->filter_sem);
		FUNC16(&vf->efx->mac_lock);

		rc2 = FUNC10(vf->efx->net_dev);
		if (rc2)
			goto reset_nic;

		FUNC1(vf->efx);
	}
	return rc;

reset_nic_up_write:
	if (vf->efx) {
		FUNC21(&vf->efx->filter_sem);
		FUNC16(&vf->efx->mac_lock);
	}
reset_nic:
	if (vf->efx) {
		FUNC17(efx, drv, efx->net_dev,
			  "Failed to restore VF - scheduling reset.\n");
		FUNC12(vf->efx, RESET_TYPE_DATAPATH);
	} else {
		FUNC17(efx, drv, efx->net_dev,
			  "Failed to restore the VF and cannot reset the VF "
			  "- VF is not functional.\n");
		FUNC17(efx, drv, efx->net_dev,
			  "Please reload the driver attached to the VF.\n");
	}

	return rc ? rc : rc2;
}