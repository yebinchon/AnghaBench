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
typedef  int u32 ;
struct TYPE_5__ {int* arg; } ;
struct TYPE_4__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_2__ rsp; TYPE_1__ req; } ;
struct qlcnic_adapter {TYPE_3__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_6__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  QLCNIC_CMD_GET_ESWITCH_PORT_CONFIG ; 
 int QLCNIC_RCODE_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int FUNC2 (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qlcnic_cmd_args*) ; 
 int FUNC4 (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ; 

__attribute__((used)) static int FUNC5(struct qlcnic_adapter *adapter,
					    u32 *arg1, u32 *arg2)
{
	struct device *dev = &adapter->pdev->dev;
	struct qlcnic_cmd_args cmd;
	u8 pci_func = *arg1 >> 8;
	int err;

	err = FUNC2(&cmd, adapter,
				    QLCNIC_CMD_GET_ESWITCH_PORT_CONFIG);
	if (err)
		return err;

	cmd.req.arg[1] = *arg1;
	err = FUNC4(adapter, &cmd);
	*arg1 = cmd.rsp.arg[1];
	*arg2 = cmd.rsp.arg[2];
	FUNC3(&cmd);

	if (err == QLCNIC_RCODE_SUCCESS)
		FUNC1(dev, "Get eSwitch port config for vNIC function %d\n",
			 pci_func);
	else
		FUNC0(dev, "Failed to get eswitch port config for vNIC function %d\n",
			pci_func);
	return err;
}