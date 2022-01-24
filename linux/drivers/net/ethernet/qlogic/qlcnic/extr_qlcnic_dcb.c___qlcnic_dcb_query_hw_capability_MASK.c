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
typedef  int /*<<< orphan*/  u32 ;
struct qlcnic_dcb {struct qlcnic_adapter* adapter; } ;
struct TYPE_3__ {int /*<<< orphan*/ * arg; } ;
struct qlcnic_cmd_args {TYPE_1__ rsp; } ;
struct qlcnic_adapter {TYPE_2__* pdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  QLCNIC_CMD_DCB_QUERY_CAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qlcnic_cmd_args*) ; 
 int FUNC4 (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ; 

__attribute__((used)) static int FUNC5(struct qlcnic_dcb *dcb, char *buf)
{
	struct qlcnic_adapter *adapter = dcb->adapter;
	struct qlcnic_cmd_args cmd;
	u32 mbx_out;
	int err;

	err = FUNC2(&cmd, adapter, QLCNIC_CMD_DCB_QUERY_CAP);
	if (err)
		return err;

	err = FUNC4(adapter, &cmd);
	if (err) {
		FUNC0(&adapter->pdev->dev,
			"Failed to query DCBX capability, err %d\n", err);
	} else {
		mbx_out = cmd.rsp.arg[1];
		if (buf)
			FUNC1(buf, &mbx_out, sizeof(u32));
	}

	FUNC3(&cmd);

	return err;
}