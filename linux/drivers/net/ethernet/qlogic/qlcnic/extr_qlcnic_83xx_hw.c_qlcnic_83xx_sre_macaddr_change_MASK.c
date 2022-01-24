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
typedef  int u8 ;
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct qlcnic_macvlan_mbx {int mac_addr0; int mac_addr1; int mac_addr2; int mac_addr3; int mac_addr4; int mac_addr5; scalar_t__ vlan; } ;
struct TYPE_4__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_2__ req; int /*<<< orphan*/  type; } ;
struct qlcnic_adapter {TYPE_1__* recv_ctx; } ;
struct TYPE_3__ {scalar_t__ state; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  QLCNIC_CMD_CONFIG_MAC_VLAN ; 
 scalar_t__ QLCNIC_HOST_CTX_STATE_FREED ; 
 int QLCNIC_MAC_ADD ; 
 int QLCNIC_MAC_VLAN_ADD ; 
 int QLCNIC_MAC_VLAN_DEL ; 
 int /*<<< orphan*/  QLC_83XX_MBX_CMD_NO_WAIT ; 
 int /*<<< orphan*/  FUNC0 (struct qlcnic_cmd_args*) ; 
 struct qlcnic_cmd_args* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,struct qlcnic_macvlan_mbx*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct qlcnic_adapter*,int*) ; 
 int FUNC4 (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct qlcnic_cmd_args*) ; 
 int FUNC6 (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ; 

int FUNC7(struct qlcnic_adapter *adapter, u8 *addr,
				   u16 vlan_id, u8 op)
{
	struct qlcnic_cmd_args *cmd = NULL;
	struct qlcnic_macvlan_mbx mv;
	u32 *buf, temp = 0;
	int err;

	if (adapter->recv_ctx->state == QLCNIC_HOST_CTX_STATE_FREED)
		return -EIO;

	cmd = FUNC1(sizeof(*cmd), GFP_ATOMIC);
	if (!cmd)
		return -ENOMEM;

	err = FUNC4(cmd, adapter, QLCNIC_CMD_CONFIG_MAC_VLAN);
	if (err)
		goto out;

	cmd->type = QLC_83XX_MBX_CMD_NO_WAIT;

	if (vlan_id)
		op = (op == QLCNIC_MAC_ADD || op == QLCNIC_MAC_VLAN_ADD) ?
		     QLCNIC_MAC_VLAN_ADD : QLCNIC_MAC_VLAN_DEL;

	cmd->req.arg[1] = op | (1 << 8);
	FUNC3(adapter, &temp);
	cmd->req.arg[1] |= temp;
	mv.vlan = vlan_id;
	mv.mac_addr0 = addr[0];
	mv.mac_addr1 = addr[1];
	mv.mac_addr2 = addr[2];
	mv.mac_addr3 = addr[3];
	mv.mac_addr4 = addr[4];
	mv.mac_addr5 = addr[5];
	buf = &cmd->req.arg[2];
	FUNC2(buf, &mv, sizeof(struct qlcnic_macvlan_mbx));
	err = FUNC6(adapter, cmd);
	if (!err)
		return err;

	FUNC5(cmd);
out:
	FUNC0(cmd);
	return err;
}