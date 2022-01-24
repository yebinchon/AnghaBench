#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct port_info {TYPE_5__* adapter; int /*<<< orphan*/  tx_chan; } ;
struct TYPE_8__ {int /*<<< orphan*/  auxlinfo32_mtu32; int /*<<< orphan*/  linkattr32; int /*<<< orphan*/  lstatus32_to_cbllen32; } ;
struct TYPE_7__ {int /*<<< orphan*/  mtu; int /*<<< orphan*/  lstatus_to_modtype; } ;
struct TYPE_9__ {TYPE_3__ info32; TYPE_2__ info; } ;
struct fw_port_cmd {TYPE_4__ u; void* action_to_len16; void* op_to_portid; } ;
typedef  int /*<<< orphan*/  port_cmd ;
typedef  void* fw_port_cap32_t ;
struct TYPE_6__ {unsigned int fw_caps_support; } ;
struct TYPE_10__ {int /*<<< orphan*/  mbox; TYPE_1__ params; } ;

/* Variables and functions */
 unsigned int FW_CAPS16 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FW_CMD_READ_F ; 
 int FW_CMD_REQUEST_F ; 
 int FUNC1 (struct fw_port_cmd) ; 
 unsigned int FW_PORT_ACTION_GET_PORT_INFO ; 
 unsigned int FW_PORT_ACTION_GET_PORT_INFO32 ; 
 int /*<<< orphan*/  FW_PORT_CMD ; 
 int FUNC2 (unsigned int) ; 
 int FW_PORT_CMD_LSTATUS32_F ; 
 int FW_PORT_CMD_LSTATUS_F ; 
 unsigned int FUNC3 (void*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 void* FUNC7 (int) ; 
 unsigned int FUNC8 (void*) ; 
 void* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct fw_port_cmd*,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (TYPE_5__*,int /*<<< orphan*/ ,struct fw_port_cmd*,int,struct fw_port_cmd*) ; 

int FUNC12(struct port_info *pi, unsigned int *link_okp,
		       unsigned int *speedp, unsigned int *mtup)
{
	unsigned int fw_caps = pi->adapter->params.fw_caps_support;
	struct fw_port_cmd port_cmd;
	unsigned int action, link_ok, mtu;
	fw_port_cap32_t linkattr;
	int ret;

	FUNC10(&port_cmd, 0, sizeof(port_cmd));
	port_cmd.op_to_portid = FUNC7(FUNC0(FW_PORT_CMD) |
					    FW_CMD_REQUEST_F | FW_CMD_READ_F |
					    FUNC4(pi->tx_chan));
	action = (fw_caps == FW_CAPS16
		  ? FW_PORT_ACTION_GET_PORT_INFO
		  : FW_PORT_ACTION_GET_PORT_INFO32);
	port_cmd.action_to_len16 = FUNC7(
		FUNC2(action) |
		FUNC1(port_cmd));
	ret = FUNC11(pi->adapter, pi->adapter->mbox,
			 &port_cmd, sizeof(port_cmd), &port_cmd);
	if (ret)
		return ret;

	if (action == FW_PORT_ACTION_GET_PORT_INFO) {
		u32 lstatus = FUNC6(port_cmd.u.info.lstatus_to_modtype);

		link_ok = !!(lstatus & FW_PORT_CMD_LSTATUS_F);
		linkattr = FUNC9(lstatus);
		mtu = FUNC5(port_cmd.u.info.mtu);
	} else {
		u32 lstatus32 =
			   FUNC6(port_cmd.u.info32.lstatus32_to_cbllen32);

		link_ok = !!(lstatus32 & FW_PORT_CMD_LSTATUS32_F);
		linkattr = FUNC6(port_cmd.u.info32.linkattr32);
		mtu = FUNC3(
			FUNC6(port_cmd.u.info32.auxlinfo32_mtu32));
	}

	*link_okp = link_ok;
	*speedp = FUNC8(linkattr);
	*mtup = mtu;

	return 0;
}