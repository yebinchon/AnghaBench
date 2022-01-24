#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct qlcnic_vf_info {TYPE_1__* vp; int /*<<< orphan*/  vlan_list_lock; scalar_t__* sriov_vlans; scalar_t__ num_vlan; } ;
struct qlcnic_sriov {int num_allowed_vlans; } ;
struct qlcnic_adapter {TYPE_2__* ahw; } ;
struct TYPE_4__ {struct qlcnic_sriov* sriov; } ;
struct TYPE_3__ {scalar_t__ vlan_mode; } ;

/* Variables and functions */
 scalar_t__ QLC_PVID_MODE ; 
 scalar_t__ FUNC0 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct qlcnic_adapter*,struct qlcnic_vf_info*,scalar_t__,int) ; 
 scalar_t__ FUNC2 (struct qlcnic_vf_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct qlcnic_adapter *adapter,
					     struct qlcnic_vf_info *vf,
					     int opcode)
{
	struct qlcnic_sriov *sriov;
	u16 vlan;
	int i;

	sriov = adapter->ahw->sriov;

	FUNC3(&vf->vlan_list_lock);
	if (vf->num_vlan) {
		for (i = 0; i < sriov->num_allowed_vlans; i++) {
			vlan = vf->sriov_vlans[i];
			if (vlan)
				FUNC1(adapter, vf, vlan,
							    opcode);
		}
	}
	FUNC4(&vf->vlan_list_lock);

	if (vf->vp->vlan_mode != QLC_PVID_MODE) {
		if (FUNC0(adapter) &&
		    FUNC2(vf))
			return;
		FUNC1(adapter, vf, 0, opcode);
	}
}