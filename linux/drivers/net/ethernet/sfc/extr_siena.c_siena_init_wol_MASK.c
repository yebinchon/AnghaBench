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
struct siena_nic_data {int wol_filter_id; } ;
struct efx_nic {int /*<<< orphan*/  pci_dev; struct siena_nic_data* nic_data; } ;

/* Variables and functions */
 int FUNC0 (struct efx_nic*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct efx_nic *efx)
{
	struct siena_nic_data *nic_data = efx->nic_data;
	int rc;

	rc = FUNC0(efx, &nic_data->wol_filter_id);

	if (rc != 0) {
		/* If it failed, attempt to get into a synchronised
		 * state with MC by resetting any set WoL filters */
		FUNC1(efx);
		nic_data->wol_filter_id = -1;
	} else if (nic_data->wol_filter_id != -1) {
		FUNC2(efx->pci_dev, true);
	}
}