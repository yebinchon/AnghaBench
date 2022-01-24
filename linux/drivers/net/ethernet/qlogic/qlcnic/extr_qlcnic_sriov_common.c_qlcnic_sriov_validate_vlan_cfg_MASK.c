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
typedef  int /*<<< orphan*/  u16 ;
struct qlcnic_vf_info {int dummy; } ;
struct qlcnic_sriov {scalar_t__ vlan_mode; int num_allowed_vlans; int /*<<< orphan*/ * allowed_vlans; scalar_t__ any_vlan; struct qlcnic_vf_info* vf_info; } ;
struct qlcnic_adapter {TYPE_1__* ahw; } ;
struct TYPE_2__ {struct qlcnic_sriov* sriov; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ QLC_GUEST_VLAN_MODE ; 
 scalar_t__ FUNC0 (struct qlcnic_adapter*) ; 
 int FUNC1 (struct qlcnic_vf_info*) ; 
 scalar_t__ FUNC2 (struct qlcnic_sriov*,struct qlcnic_vf_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct qlcnic_sriov*,struct qlcnic_vf_info*) ; 

__attribute__((used)) static int FUNC4(struct qlcnic_adapter *adapter,
					  u16 vid, u8 enable)
{
	struct qlcnic_sriov *sriov = adapter->ahw->sriov;
	struct qlcnic_vf_info *vf;
	bool vlan_exist;
	u8 allowed = 0;
	int i;

	vf = &adapter->ahw->sriov->vf_info[0];
	vlan_exist = FUNC1(vf);
	if (sriov->vlan_mode != QLC_GUEST_VLAN_MODE)
		return -EINVAL;

	if (enable) {
		if (FUNC0(adapter) && vlan_exist)
			return -EINVAL;

		if (FUNC3(sriov, vf))
			return -EINVAL;

		if (sriov->any_vlan) {
			for (i = 0; i < sriov->num_allowed_vlans; i++) {
				if (sriov->allowed_vlans[i] == vid)
					allowed = 1;
			}

			if (!allowed)
				return -EINVAL;
		}
	} else {
		if (!vlan_exist || FUNC2(sriov, vf, vid))
			return -EINVAL;
	}

	return 0;
}