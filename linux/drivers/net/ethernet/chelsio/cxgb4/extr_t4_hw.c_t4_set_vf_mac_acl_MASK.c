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
struct adapter {int pf; int /*<<< orphan*/  mbox; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  FW_ACL_MAC_CMD ; 
 unsigned int FUNC0 (int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FW_CMD_REQUEST_F ; 
 unsigned int FW_CMD_WRITE_F ; 
 scalar_t__ FUNC3 (struct fw_acl_mac_cmd) ; 
 void* FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct fw_acl_mac_cmd*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct adapter*,int /*<<< orphan*/ ,struct fw_acl_mac_cmd*,int,struct fw_acl_mac_cmd*) ; 

int FUNC8(struct adapter *adapter, unsigned int vf,
		      unsigned int naddr, u8 *addr)
{
	struct fw_acl_mac_cmd cmd;

	FUNC6(&cmd, 0, sizeof(cmd));
	cmd.op_to_vfn = FUNC4(FUNC2(FW_ACL_MAC_CMD) |
				    FW_CMD_REQUEST_F |
				    FW_CMD_WRITE_F |
				    FUNC0(adapter->pf) |
				    FUNC1(vf));

	/* Note: Do not enable the ACL */
	cmd.en_to_len16 = FUNC4((unsigned int)FUNC3(cmd));
	cmd.nmac = naddr;

	switch (adapter->pf) {
	case 3:
		FUNC5(cmd.macaddr3, addr, sizeof(cmd.macaddr3));
		break;
	case 2:
		FUNC5(cmd.macaddr2, addr, sizeof(cmd.macaddr2));
		break;
	case 1:
		FUNC5(cmd.macaddr1, addr, sizeof(cmd.macaddr1));
		break;
	case 0:
		FUNC5(cmd.macaddr0, addr, sizeof(cmd.macaddr0));
		break;
	}

	return FUNC7(adapter, adapter->mbox, &cmd, sizeof(cmd), &cmd);
}