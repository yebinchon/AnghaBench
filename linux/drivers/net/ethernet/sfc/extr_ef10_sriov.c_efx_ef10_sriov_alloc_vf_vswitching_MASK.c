#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct efx_nic {unsigned int vf_count; struct efx_ef10_nic_data* nic_data; } ;
struct efx_ef10_nic_data {TYPE_1__* vf; } ;
struct ef10_vf {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  vlan; int /*<<< orphan*/ * efx; int /*<<< orphan*/  mac; } ;

/* Variables and functions */
 int /*<<< orphan*/  EFX_EF10_NO_VLAN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct efx_nic*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(struct efx_nic *efx)
{
	struct efx_ef10_nic_data *nic_data = efx->nic_data;
	unsigned int i;
	int rc;

	nic_data->vf = FUNC3(efx->vf_count, sizeof(struct ef10_vf),
			       GFP_KERNEL);
	if (!nic_data->vf)
		return -ENOMEM;

	for (i = 0; i < efx->vf_count; i++) {
		FUNC2(nic_data->vf[i].mac);
		nic_data->vf[i].efx = NULL;
		nic_data->vf[i].vlan = EFX_EF10_NO_VLAN;

		rc = FUNC0(efx, i);
		if (rc)
			goto fail;
	}

	return 0;
fail:
	FUNC1(efx);
	FUNC4(nic_data->vf);
	nic_data->vf = NULL;
	return rc;
}