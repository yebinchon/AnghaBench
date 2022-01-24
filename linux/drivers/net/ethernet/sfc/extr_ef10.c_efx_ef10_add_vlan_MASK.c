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
struct efx_nic {int /*<<< orphan*/  mac_lock; int /*<<< orphan*/  filter_sem; scalar_t__ filter_state; int /*<<< orphan*/  net_dev; struct efx_ef10_nic_data* nic_data; } ;
struct efx_ef10_vlan {int /*<<< orphan*/  list; scalar_t__ vid; } ;
struct efx_ef10_nic_data {int /*<<< orphan*/  vlan_lock; int /*<<< orphan*/  vlan_list; } ;

/* Variables and functions */
 int EALREADY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  drv ; 
 int FUNC1 (struct efx_nic*,scalar_t__) ; 
 struct efx_ef10_vlan* FUNC2 (struct efx_nic*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct efx_ef10_vlan*) ; 
 struct efx_ef10_vlan* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct efx_nic *efx, u16 vid)
{
	struct efx_ef10_nic_data *nic_data = efx->nic_data;
	struct efx_ef10_vlan *vlan;
	int rc;

	FUNC7(&nic_data->vlan_lock);

	vlan = FUNC2(efx, vid);
	if (vlan) {
		/* We add VID 0 on init. 8021q adds it on module init
		 * for all interfaces with VLAN filtring feature.
		 */
		if (vid == 0)
			goto done_unlock;
		FUNC9(efx, drv, efx->net_dev,
			   "VLAN %u already added\n", vid);
		rc = -EALREADY;
		goto fail_exist;
	}

	rc = -ENOMEM;
	vlan = FUNC4(sizeof(*vlan), GFP_KERNEL);
	if (!vlan)
		goto fail_alloc;

	vlan->vid = vid;

	FUNC5(&vlan->list, &nic_data->vlan_list);

	if (efx->filter_state) {
		FUNC7(&efx->mac_lock);
		FUNC0(&efx->filter_sem);
		rc = FUNC1(efx, vlan->vid);
		FUNC10(&efx->filter_sem);
		FUNC8(&efx->mac_lock);
		if (rc)
			goto fail_filter_add_vlan;
	}

done_unlock:
	FUNC8(&nic_data->vlan_lock);
	return 0;

fail_filter_add_vlan:
	FUNC6(&vlan->list);
	FUNC3(vlan);
fail_alloc:
fail_exist:
	FUNC8(&nic_data->vlan_lock);
	return rc;
}