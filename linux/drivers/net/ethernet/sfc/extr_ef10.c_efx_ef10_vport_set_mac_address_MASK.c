#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct efx_nic {TYPE_1__* net_dev; int /*<<< orphan*/  filter_sem; struct efx_ef10_nic_data* nic_data; } ;
struct efx_ef10_nic_data {int /*<<< orphan*/  vport_id; int /*<<< orphan*/ * vport_mac; } ;
struct TYPE_4__ {int /*<<< orphan*/ * dev_addr; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  RESET_TYPE_DATAPATH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC1 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC2 (struct efx_nic*) ; 
 int FUNC3 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC4 (struct efx_nic*) ; 
 int FUNC5 (struct efx_nic*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct efx_nic*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (struct efx_nic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct efx_nic*,int /*<<< orphan*/ ,TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct efx_nic *efx)
{
	struct efx_ef10_nic_data *nic_data = efx->nic_data;
	u8 mac_old[ETH_ALEN];
	int rc, rc2;

	/* Only reconfigure a PF-created vport */
	if (FUNC14(nic_data->vport_mac))
		return 0;

	FUNC2(efx);
	FUNC10(efx->net_dev);
	FUNC0(&efx->filter_sem);
	FUNC4(efx);
	FUNC16(&efx->filter_sem);

	rc = FUNC6(efx, nic_data->vport_id);
	if (rc)
		goto restore_filters;

	FUNC13(mac_old, nic_data->vport_mac);
	rc = FUNC8(efx, nic_data->vport_id,
				    nic_data->vport_mac);
	if (rc)
		goto restore_vadaptor;

	rc = FUNC7(efx, nic_data->vport_id,
				    efx->net_dev->dev_addr);
	if (!rc) {
		FUNC13(nic_data->vport_mac, efx->net_dev->dev_addr);
	} else {
		rc2 = FUNC7(efx, nic_data->vport_id, mac_old);
		if (rc2) {
			/* Failed to add original MAC, so clear vport_mac */
			FUNC12(nic_data->vport_mac);
			goto reset_nic;
		}
	}

restore_vadaptor:
	rc2 = FUNC5(efx, nic_data->vport_id);
	if (rc2)
		goto reset_nic;
restore_filters:
	FUNC0(&efx->filter_sem);
	rc2 = FUNC3(efx);
	FUNC16(&efx->filter_sem);
	if (rc2)
		goto reset_nic;

	rc2 = FUNC9(efx->net_dev);
	if (rc2)
		goto reset_nic;

	FUNC1(efx);

	return rc;

reset_nic:
	FUNC15(efx, drv, efx->net_dev,
		  "Failed to restore when changing MAC address - scheduling reset\n");
	FUNC11(efx, RESET_TYPE_DATAPATH);

	return rc ? rc : rc2;
}