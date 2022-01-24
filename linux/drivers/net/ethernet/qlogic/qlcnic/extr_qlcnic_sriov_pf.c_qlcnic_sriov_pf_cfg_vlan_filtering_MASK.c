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
typedef  scalar_t__ u8 ;
struct TYPE_3__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_1__ req; } ;
struct qlcnic_adapter {TYPE_2__* pdev; int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int BIT_16 ; 
 int /*<<< orphan*/  QLCNIC_CMD_SET_NIC_INFO ; 
 int /*<<< orphan*/  QLCNIC_VLAN_FILTERING ; 
 int QLC_SRIOV_ALLOW_VLAN0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC1 (struct qlcnic_adapter*) ; 
 int FUNC2 (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qlcnic_cmd_args*) ; 
 int FUNC4 (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ; 

__attribute__((used)) static int FUNC5(struct qlcnic_adapter *adapter,
					      u8 enable)
{
	struct qlcnic_cmd_args cmd;
	int err;

	err = FUNC2(&cmd, adapter, QLCNIC_CMD_SET_NIC_INFO);
	if (err)
		return err;

	cmd.req.arg[1] = 0x4;
	if (enable) {
		adapter->flags |= QLCNIC_VLAN_FILTERING;
		cmd.req.arg[1] |= BIT_16;
		if (FUNC1(adapter))
			cmd.req.arg[1] |= QLC_SRIOV_ALLOW_VLAN0;
	} else {
		adapter->flags &= ~QLCNIC_VLAN_FILTERING;
	}

	err = FUNC4(adapter, &cmd);
	if (err)
		FUNC0(&adapter->pdev->dev,
			"Failed to configure VLAN filtering, err=%d\n", err);

	FUNC3(&cmd);
	return err;
}