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
struct siena_vf {int /*<<< orphan*/  reset_work; int /*<<< orphan*/  req; } ;
struct siena_nic_data {int /*<<< orphan*/  vfdi_status; struct siena_vf* vf; int /*<<< orphan*/  peer_work; TYPE_1__* vfdi_channel; } ;
struct efx_nic {scalar_t__ vf_init_count; unsigned int vf_count; int /*<<< orphan*/  pci_dev; struct siena_nic_data* nic_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct efx_nic*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct efx_nic*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC5 (struct efx_nic*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC7 (struct siena_vf*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 

void FUNC11(struct efx_nic *efx)
{
	struct siena_vf *vf;
	unsigned int pos;
	struct siena_nic_data *nic_data = efx->nic_data;

	if (efx->vf_init_count == 0)
		return;

	/* Disable all interfaces to reconfiguration */
	FUNC0(nic_data->vfdi_channel->enabled);
	FUNC5(efx, false);
	FUNC9();
	efx->vf_init_count = 0;
	FUNC10();

	/* Flush all reconfiguration work */
	for (pos = 0; pos < efx->vf_count; ++pos) {
		vf = nic_data->vf + pos;
		FUNC1(&vf->req);
		FUNC1(&vf->reset_work);
	}
	FUNC1(&nic_data->peer_work);

	FUNC8(efx->pci_dev);

	/* Tear down back-end state */
	FUNC6(efx);
	FUNC4(efx);
	FUNC7(nic_data->vf);
	FUNC2(efx, &nic_data->vfdi_status);
	FUNC3(efx, false, NULL, NULL);
}