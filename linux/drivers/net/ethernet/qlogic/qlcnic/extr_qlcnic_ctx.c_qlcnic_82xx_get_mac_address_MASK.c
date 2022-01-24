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
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int BIT_8 ; 
 int EIO ; 
 int /*<<< orphan*/  QLCNIC_CMD_MAC_ADDRESS ; 
 int QLCNIC_RCODE_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_cmd_args*) ; 
 int FUNC3 (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ; 

int FUNC4(struct qlcnic_adapter *adapter, u8 *mac,
				u8 function)
{
	int err, i;
	struct qlcnic_cmd_args cmd;
	u32 mac_low, mac_high;

	err = FUNC1(&cmd, adapter, QLCNIC_CMD_MAC_ADDRESS);
	if (err)
		return err;

	cmd.req.arg[1] = function | BIT_8;
	err = FUNC3(adapter, &cmd);

	if (err == QLCNIC_RCODE_SUCCESS) {
		mac_low = cmd.rsp.arg[1];
		mac_high = cmd.rsp.arg[2];

		for (i = 0; i < 2; i++)
			mac[i] = (u8) (mac_high >> ((1 - i) * 8));
		for (i = 2; i < 6; i++)
			mac[i] = (u8) (mac_low >> ((5 - i) * 8));
	} else {
		FUNC0(&adapter->pdev->dev,
			"Failed to get mac address%d\n", err);
		err = -EIO;
	}
	FUNC2(&cmd);
	return err;
}