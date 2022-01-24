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
struct efx_nic {int /*<<< orphan*/  pci_dev; TYPE_1__* net_dev; struct efx_ef10_nic_data* nic_data; } ;
struct efx_ef10_nic_data {scalar_t__ vport_id; int /*<<< orphan*/  vport_mac; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 scalar_t__ EVB_PORT_ID_ASSIGNED ; 
 int /*<<< orphan*/  FUNC0 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC1 (struct efx_nic*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct efx_nic*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct efx_nic*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct efx_nic*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(struct efx_nic *efx)
{
	struct efx_ef10_nic_data *nic_data = efx->nic_data;

	FUNC0(efx);

	FUNC1(efx, nic_data->vport_id);

	if (nic_data->vport_id == EVB_PORT_ID_ASSIGNED)
		return; /* No vswitch was ever created */

	if (!FUNC6(nic_data->vport_mac)) {
		FUNC2(efx, nic_data->vport_id,
				       efx->net_dev->dev_addr);
		FUNC5(nic_data->vport_mac);
	}
	FUNC3(efx, nic_data->vport_id);
	nic_data->vport_id = EVB_PORT_ID_ASSIGNED;

	/* Only free the vswitch if no VFs are assigned */
	if (!FUNC7(efx->pci_dev))
		FUNC4(efx, nic_data->vport_id);
}