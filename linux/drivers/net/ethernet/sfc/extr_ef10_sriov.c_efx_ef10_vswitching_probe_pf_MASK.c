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
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct efx_nic {int /*<<< orphan*/  pci_dev; struct net_device* net_dev; struct efx_ef10_nic_data* nic_data; } ;
struct efx_ef10_nic_data {int /*<<< orphan*/  vport_id; int /*<<< orphan*/  vport_mac; } ;

/* Variables and functions */
 int /*<<< orphan*/  EFX_EF10_NO_VLAN ; 
 int /*<<< orphan*/  EVB_PORT_ID_ASSIGNED ; 
 int /*<<< orphan*/  MC_CMD_VPORT_ALLOC_IN_VPORT_TYPE_NORMAL ; 
 int /*<<< orphan*/  MC_CMD_VSWITCH_ALLOC_IN_VSWITCH_TYPE_VEB ; 
 int FUNC0 (struct efx_nic*) ; 
 int FUNC1 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct efx_nic*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct efx_nic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

int FUNC10(struct efx_nic *efx)
{
	struct efx_ef10_nic_data *nic_data = efx->nic_data;
	struct net_device *net_dev = efx->net_dev;
	int rc;

	if (FUNC9(efx->pci_dev) <= 0) {
		/* vswitch not needed as we have no VFs */
		FUNC0(efx);
		return 0;
	}

	rc = FUNC5(efx, EVB_PORT_ID_ASSIGNED,
				    MC_CMD_VSWITCH_ALLOC_IN_VSWITCH_TYPE_VEB);
	if (rc)
		goto fail1;

	rc = FUNC2(efx, EVB_PORT_ID_ASSIGNED,
				  MC_CMD_VPORT_ALLOC_IN_VPORT_TYPE_NORMAL,
				  EFX_EF10_NO_VLAN, &nic_data->vport_id);
	if (rc)
		goto fail2;

	rc = FUNC1(efx, nic_data->vport_id, net_dev->dev_addr);
	if (rc)
		goto fail3;
	FUNC8(nic_data->vport_mac, net_dev->dev_addr);

	rc = FUNC0(efx);
	if (rc)
		goto fail4;

	return 0;
fail4:
	FUNC3(efx, nic_data->vport_id, nic_data->vport_mac);
	FUNC7(nic_data->vport_mac);
fail3:
	FUNC4(efx, nic_data->vport_id);
	nic_data->vport_id = EVB_PORT_ID_ASSIGNED;
fail2:
	FUNC6(efx, EVB_PORT_ID_ASSIGNED);
fail1:
	return rc;
}