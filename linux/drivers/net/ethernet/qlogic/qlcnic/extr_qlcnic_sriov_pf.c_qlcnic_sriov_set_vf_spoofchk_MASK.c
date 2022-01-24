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
struct qlcnic_vport {int spoofchk; } ;
struct qlcnic_vf_info {int /*<<< orphan*/  state; struct qlcnic_vport* vp; } ;
struct qlcnic_sriov {int num_vfs; struct qlcnic_vf_info* vf_info; } ;
struct qlcnic_adapter {TYPE_1__* ahw; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {struct qlcnic_sriov* sriov; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  QLC_BC_VF_STATE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*,int) ; 
 struct qlcnic_adapter* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC4(struct net_device *netdev, int vf, bool chk)
{
	struct qlcnic_adapter *adapter = FUNC1(netdev);
	struct qlcnic_sriov *sriov = adapter->ahw->sriov;
	struct qlcnic_vf_info *vf_info;
	struct qlcnic_vport *vp;

	if (!FUNC2(adapter))
		return -EOPNOTSUPP;

	if (vf >= sriov->num_vfs)
		return -EINVAL;

	vf_info = &sriov->vf_info[vf];
	vp = vf_info->vp;
	if (FUNC3(QLC_BC_VF_STATE, &vf_info->state)) {
		FUNC0(netdev,
			   "Spoof check change failed for VF %d, as VF driver is loaded. Please unload VF driver and retry the operation\n",
			   vf);
		return -EOPNOTSUPP;
	}

	vp->spoofchk = chk;
	return 0;
}