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
typedef  int /*<<< orphan*/  u8 ;
struct qlcnic_vf_info {int /*<<< orphan*/  state; TYPE_2__* vp; } ;
struct qlcnic_sriov {int num_vfs; struct qlcnic_vf_info* vf_info; } ;
struct qlcnic_adapter {int /*<<< orphan*/ * mac_addr; TYPE_1__* ahw; } ;
struct net_device {int /*<<< orphan*/  addr_len; } ;
struct TYPE_4__ {int /*<<< orphan*/ * mac; } ;
struct TYPE_3__ {struct qlcnic_sriov* sriov; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  QLC_BC_VF_STATE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*,int /*<<< orphan*/ *,int) ; 
 struct qlcnic_adapter* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC8(struct net_device *netdev, int vf, u8 *mac)
{
	struct qlcnic_adapter *adapter = FUNC5(netdev);
	struct qlcnic_sriov *sriov = adapter->ahw->sriov;
	int i, num_vfs;
	struct qlcnic_vf_info *vf_info;
	u8 *curr_mac;

	if (!FUNC6(adapter))
		return -EOPNOTSUPP;

	num_vfs = sriov->num_vfs;

	if (!FUNC1(mac) || vf >= num_vfs)
		return -EINVAL;

	if (FUNC0(adapter->mac_addr, mac)) {
		FUNC3(netdev, "MAC address is already in use by the PF\n");
		return -EINVAL;
	}

	for (i = 0; i < num_vfs; i++) {
		vf_info = &sriov->vf_info[i];
		if (FUNC0(vf_info->vp->mac, mac)) {
			FUNC3(netdev,
				   "MAC address is already in use by VF %d\n",
				   i);
			return -EINVAL;
		}
	}

	vf_info = &sriov->vf_info[vf];
	curr_mac = vf_info->vp->mac;

	if (FUNC7(QLC_BC_VF_STATE, &vf_info->state)) {
		FUNC3(netdev,
			   "MAC address change failed for VF %d, as VF driver is loaded. Please unload VF driver and retry the operation\n",
			   vf);
		return -EOPNOTSUPP;
	}

	FUNC2(curr_mac, mac, netdev->addr_len);
	FUNC4(netdev, "MAC Address %pM  is configured for VF %d\n",
		    mac, vf);
	return 0;
}