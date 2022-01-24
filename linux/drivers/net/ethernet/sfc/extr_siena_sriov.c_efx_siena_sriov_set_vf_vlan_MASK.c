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
typedef  int u8 ;
typedef  int u16 ;
struct TYPE_2__ {int /*<<< orphan*/  tci; } ;
struct siena_vf {int /*<<< orphan*/  status_lock; TYPE_1__ addr; } ;
struct siena_nic_data {struct siena_vf* vf; } ;
struct efx_nic {int vf_init_count; struct siena_nic_data* nic_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int VLAN_PRIO_SHIFT ; 
 int VLAN_VID_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct siena_vf*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct efx_nic *efx, int vf_i,
				u16 vlan, u8 qos)
{
	struct siena_nic_data *nic_data = efx->nic_data;
	struct siena_vf *vf;
	u16 tci;

	if (vf_i >= efx->vf_init_count)
		return -EINVAL;
	vf = nic_data->vf + vf_i;

	FUNC2(&vf->status_lock);
	tci = (vlan & VLAN_VID_MASK) | ((qos & 0x7) << VLAN_PRIO_SHIFT);
	vf->addr.tci = FUNC1(tci);
	FUNC0(vf);
	FUNC3(&vf->status_lock);

	return 0;
}