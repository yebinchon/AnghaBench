#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct fw_acl_vlan_cmd {int /*<<< orphan*/ * vlanid; int /*<<< orphan*/  en_to_len16; int /*<<< orphan*/  op_to_vfn; } ;
struct adapter {int dummy; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  FW_ACL_VLAN_CMD ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FW_CMD_READ_F ; 
 int FW_CMD_REQUEST_F ; 
 scalar_t__ FUNC1 (struct fw_acl_vlan_cmd) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct adapter*,struct fw_acl_vlan_cmd*,int,struct fw_acl_vlan_cmd*) ; 

int FUNC6(struct adapter *adapter)
{
	struct fw_acl_vlan_cmd cmd;
	int vlan = 0;
	int ret = 0;

	cmd.op_to_vfn = FUNC4(FUNC0(FW_ACL_VLAN_CMD) |
			      FW_CMD_REQUEST_F | FW_CMD_READ_F);

	/* Note: Do not enable the ACL */
	cmd.en_to_len16 = FUNC3((unsigned int)FUNC1(cmd));

	ret = FUNC5(adapter, &cmd, sizeof(cmd), &cmd);

	if (!ret)
		vlan = FUNC2(cmd.vlanid[0]);

	return vlan;
}