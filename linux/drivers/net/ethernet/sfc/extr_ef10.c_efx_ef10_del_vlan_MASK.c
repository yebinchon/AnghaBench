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
typedef  scalar_t__ u16 ;
struct efx_nic {int /*<<< orphan*/  net_dev; struct efx_ef10_nic_data* nic_data; } ;
struct efx_ef10_vlan {int dummy; } ;
struct efx_ef10_nic_data {int /*<<< orphan*/  vlan_lock; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC0 (struct efx_nic*,struct efx_ef10_vlan*) ; 
 struct efx_ef10_vlan* FUNC1 (struct efx_nic*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct efx_nic *efx, u16 vid)
{
	struct efx_ef10_nic_data *nic_data = efx->nic_data;
	struct efx_ef10_vlan *vlan;
	int rc = 0;

	/* 8021q removes VID 0 on module unload for all interfaces
	 * with VLAN filtering feature. We need to keep it to receive
	 * untagged traffic.
	 */
	if (vid == 0)
		return 0;

	FUNC2(&nic_data->vlan_lock);

	vlan = FUNC1(efx, vid);
	if (!vlan) {
		FUNC4(efx, drv, efx->net_dev,
			  "VLAN %u to be deleted not found\n", vid);
		rc = -ENOENT;
	} else {
		FUNC0(efx, vlan);
	}

	FUNC3(&nic_data->vlan_lock);

	return rc;
}