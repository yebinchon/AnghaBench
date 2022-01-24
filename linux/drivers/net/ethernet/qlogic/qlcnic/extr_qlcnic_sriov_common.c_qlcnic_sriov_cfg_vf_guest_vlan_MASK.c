#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u16 ;
struct qlcnic_vf_info {int dummy; } ;
struct qlcnic_sriov {int /*<<< orphan*/  bc; struct qlcnic_vf_info* vf_info; } ;
struct TYPE_5__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_2__ req; } ;
struct qlcnic_adapter {TYPE_3__* pdev; TYPE_1__* ahw; struct net_device* netdev; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {struct qlcnic_sriov* sriov; } ;

/* Variables and functions */
 int /*<<< orphan*/  QLCNIC_BC_CMD_CFG_GUEST_VLAN ; 
 int /*<<< orphan*/  QLC_VLAN_ADD ; 
 int /*<<< orphan*/  QLC_VLAN_DELETE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct qlcnic_cmd_args*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct qlcnic_cmd_args*) ; 
 int FUNC6 (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int FUNC8 (struct qlcnic_cmd_args*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (struct qlcnic_adapter*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct qlcnic_vf_info*,int,int /*<<< orphan*/ ) ; 

int FUNC12(struct qlcnic_adapter *adapter,
				   u16 vid, u8 enable)
{
	struct qlcnic_sriov *sriov = adapter->ahw->sriov;
	struct net_device *netdev = adapter->netdev;
	struct qlcnic_vf_info *vf;
	struct qlcnic_cmd_args cmd;
	int ret;

	FUNC1(&cmd, 0, sizeof(cmd));
	if (vid == 0)
		return 0;

	vf = &adapter->ahw->sriov->vf_info[0];
	ret = FUNC10(adapter, vid, enable);
	if (ret)
		return ret;

	ret = FUNC8(&cmd,
					     QLCNIC_BC_CMD_CFG_GUEST_VLAN);
	if (ret)
		return ret;

	cmd.req.arg[1] = (enable & 1) | vid << 16;

	FUNC9(&sriov->bc);
	ret = FUNC6(adapter, &cmd);
	if (ret) {
		FUNC0(&adapter->pdev->dev,
			"Failed to configure guest VLAN, err=%d\n", ret);
	} else {
		FUNC2(netdev);
		FUNC4(adapter);
		FUNC3(netdev);

		if (enable)
			FUNC11(vf, vid, QLC_VLAN_ADD);
		else
			FUNC11(vf, vid, QLC_VLAN_DELETE);

		FUNC2(netdev);
		FUNC7(netdev);
		FUNC3(netdev);
	}

	FUNC5(&cmd);
	return ret;
}