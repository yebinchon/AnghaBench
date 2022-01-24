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
struct TYPE_3__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_1__ req; } ;
struct qlcnic_adapter {TYPE_2__* pdev; scalar_t__ dcb; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  QLCNIC_CMD_INIT_NIC_FUNC ; 
 int /*<<< orphan*/  QLCNIC_CMD_STOP_NIC_FUNC ; 
 int QLC_INIT_FW_RESOURCES ; 
 int QLC_REGISTER_DCB_AEN ; 
 int QLC_REGISTER_LB_IDC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 int FUNC1 (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_cmd_args*) ; 
 int FUNC3 (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ; 
 scalar_t__ FUNC4 (struct qlcnic_adapter*) ; 

void FUNC5(struct qlcnic_adapter *adapter, int enable)
{
	struct qlcnic_cmd_args cmd;
	int status;

	if (FUNC4(adapter))
		return;

	if (enable)
		status = FUNC1(&cmd, adapter,
					       QLCNIC_CMD_INIT_NIC_FUNC);
	else
		status = FUNC1(&cmd, adapter,
					       QLCNIC_CMD_STOP_NIC_FUNC);

	if (status)
		return;

	cmd.req.arg[1] = QLC_REGISTER_LB_IDC | QLC_INIT_FW_RESOURCES;

	if (adapter->dcb)
		cmd.req.arg[1] |= QLC_REGISTER_DCB_AEN;

	status = FUNC3(adapter, &cmd);
	if (status)
		FUNC0(&adapter->pdev->dev,
			"Failed to %s in NIC IDC function event.\n",
			(enable ? "register" : "unregister"));

	FUNC2(&cmd);
}