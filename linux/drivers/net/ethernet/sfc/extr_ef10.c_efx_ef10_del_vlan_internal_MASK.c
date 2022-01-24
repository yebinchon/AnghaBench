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
struct efx_nic {int /*<<< orphan*/  filter_sem; scalar_t__ filter_state; struct efx_ef10_nic_data* nic_data; } ;
struct efx_ef10_vlan {int /*<<< orphan*/  list; int /*<<< orphan*/  vid; } ;
struct efx_ef10_nic_data {int /*<<< orphan*/  vlan_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct efx_nic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct efx_ef10_vlan*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct efx_nic *efx,
				       struct efx_ef10_vlan *vlan)
{
	struct efx_ef10_nic_data *nic_data = efx->nic_data;

	FUNC0(!FUNC5(&nic_data->vlan_lock));

	if (efx->filter_state) {
		FUNC1(&efx->filter_sem);
		FUNC2(efx, vlan->vid);
		FUNC6(&efx->filter_sem);
	}

	FUNC4(&vlan->list);
	FUNC3(vlan);
}