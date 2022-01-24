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
struct siena_vf {int rx_filtering; struct efx_nic* efx; } ;
struct siena_nic_data {int /*<<< orphan*/  peer_work; } ;
struct efx_nic {struct siena_nic_data* nic_data; } ;

/* Variables and functions */
 int VFDI_RC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct siena_vf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vfdi_workqueue ; 

__attribute__((used)) static int FUNC2(struct siena_vf *vf)
{
	struct efx_nic *efx = vf->efx;
	struct siena_nic_data *nic_data = efx->nic_data;

	vf->rx_filtering = false;
	FUNC0(vf);
	FUNC1(vfdi_workqueue, &nic_data->peer_work);

	return VFDI_RC_SUCCESS;
}