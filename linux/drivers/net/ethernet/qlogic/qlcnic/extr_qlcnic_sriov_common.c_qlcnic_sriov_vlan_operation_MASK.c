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
typedef  int /*<<< orphan*/  u16 ;
struct qlcnic_vf_info {int /*<<< orphan*/  vlan_list_lock; int /*<<< orphan*/  sriov_vlans; struct qlcnic_adapter* adapter; } ;
struct qlcnic_sriov {int dummy; } ;
struct qlcnic_adapter {int /*<<< orphan*/  netdev; TYPE_1__* ahw; } ;
typedef  enum qlcnic_vlan_operations { ____Placeholder_qlcnic_vlan_operations } qlcnic_vlan_operations ;
struct TYPE_2__ {struct qlcnic_sriov* sriov; } ;

/* Variables and functions */
#define  QLC_VLAN_ADD 129 
#define  QLC_VLAN_DELETE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct qlcnic_sriov*,struct qlcnic_vf_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_sriov*,struct qlcnic_vf_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct qlcnic_vf_info *vf, u16 vlan_id,
					enum qlcnic_vlan_operations opcode)
{
	struct qlcnic_adapter *adapter = vf->adapter;
	struct qlcnic_sriov *sriov;

	sriov = adapter->ahw->sriov;

	if (!vf->sriov_vlans)
		return;

	FUNC3(&vf->vlan_list_lock);

	switch (opcode) {
	case QLC_VLAN_ADD:
		FUNC1(sriov, vf, vlan_id);
		break;
	case QLC_VLAN_DELETE:
		FUNC2(sriov, vf, vlan_id);
		break;
	default:
		FUNC0(adapter->netdev, "Invalid VLAN operation\n");
	}

	FUNC4(&vf->vlan_list_lock);
	return;
}