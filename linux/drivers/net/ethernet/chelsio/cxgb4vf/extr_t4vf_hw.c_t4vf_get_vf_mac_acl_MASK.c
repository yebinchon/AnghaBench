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
typedef  int /*<<< orphan*/  u8 ;
struct fw_acl_mac_cmd {unsigned int nmac; int /*<<< orphan*/  macaddr0; int /*<<< orphan*/  macaddr1; int /*<<< orphan*/  macaddr2; int /*<<< orphan*/  macaddr3; void* en_to_len16; void* op_to_vfn; } ;
struct adapter {int dummy; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  FW_ACL_MAC_CMD ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FW_CMD_READ_F ; 
 unsigned int FW_CMD_REQUEST_F ; 
 scalar_t__ FUNC1 (struct fw_acl_mac_cmd) ; 
 void* FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct fw_acl_mac_cmd*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct adapter*,struct fw_acl_mac_cmd*,int,struct fw_acl_mac_cmd*) ; 

int FUNC6(struct adapter *adapter, unsigned int pf,
			unsigned int *naddr, u8 *addr)
{
	struct fw_acl_mac_cmd cmd;
	int ret;

	FUNC4(&cmd, 0, sizeof(cmd));
	cmd.op_to_vfn = FUNC2(FUNC0(FW_ACL_MAC_CMD) |
				    FW_CMD_REQUEST_F |
				    FW_CMD_READ_F);
	cmd.en_to_len16 = FUNC2((unsigned int)FUNC1(cmd));
	ret = FUNC5(adapter, &cmd, sizeof(cmd), &cmd);
	if (ret)
		return ret;

	if (cmd.nmac < *naddr)
		*naddr = cmd.nmac;

	switch (pf) {
	case 3:
		FUNC3(addr, cmd.macaddr3, sizeof(cmd.macaddr3));
		break;
	case 2:
		FUNC3(addr, cmd.macaddr2, sizeof(cmd.macaddr2));
		break;
	case 1:
		FUNC3(addr, cmd.macaddr1, sizeof(cmd.macaddr1));
		break;
	case 0:
		FUNC3(addr, cmd.macaddr0, sizeof(cmd.macaddr0));
		break;
	}

	return ret;
}