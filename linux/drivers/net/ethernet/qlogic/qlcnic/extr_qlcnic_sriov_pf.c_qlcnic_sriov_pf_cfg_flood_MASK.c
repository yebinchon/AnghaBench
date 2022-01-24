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
struct qlcnic_adapter {TYPE_2__* pdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  QLCNIC_CMD_SET_NIC_INFO ; 
 int QLC_FLOOD_MODE ; 
 int QLC_VF_FLOOD_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_cmd_args*) ; 
 int FUNC3 (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ; 

__attribute__((used)) static int FUNC4(struct qlcnic_adapter *adapter)
{
	struct qlcnic_cmd_args cmd;
	int err;

	err = FUNC1(&cmd, adapter, QLCNIC_CMD_SET_NIC_INFO);
	if (err)
		return err;

	cmd.req.arg[1] = QLC_FLOOD_MODE | QLC_VF_FLOOD_BIT;

	err = FUNC3(adapter, &cmd);
	if (err)
		FUNC0(&adapter->pdev->dev,
			"Failed to configure VF Flood bit on PF, err=%d\n",
			err);

	FUNC2(&cmd);
	return err;
}