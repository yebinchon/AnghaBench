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
struct port_info {TYPE_2__* adapter; int /*<<< orphan*/  tx_chan; } ;
struct fw_port_cmd {void* action_to_len16; void* op_to_portid; } ;
typedef  int /*<<< orphan*/  port_cmd ;
typedef  int /*<<< orphan*/  __be64 ;
struct TYPE_3__ {unsigned int fw_caps_support; } ;
struct TYPE_4__ {int /*<<< orphan*/  mbox; TYPE_1__ params; } ;

/* Variables and functions */
 unsigned int FW_CAPS16 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FW_CMD_READ_F ; 
 int FW_CMD_REQUEST_F ; 
 int FUNC1 (struct fw_port_cmd) ; 
 int /*<<< orphan*/  FW_PORT_ACTION_GET_PORT_INFO ; 
 int /*<<< orphan*/  FW_PORT_ACTION_GET_PORT_INFO32 ; 
 int /*<<< orphan*/  FW_PORT_CMD ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct fw_port_cmd*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct port_info*,int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,struct fw_port_cmd*,int,struct fw_port_cmd*) ; 

int FUNC8(struct port_info *pi)
{
	unsigned int fw_caps = pi->adapter->params.fw_caps_support;
	struct fw_port_cmd port_cmd;
	int ret;

	FUNC5(&port_cmd, 0, sizeof(port_cmd));
	port_cmd.op_to_portid = FUNC4(FUNC0(FW_PORT_CMD) |
					    FW_CMD_REQUEST_F | FW_CMD_READ_F |
					    FUNC3(pi->tx_chan));
	port_cmd.action_to_len16 = FUNC4(
		FUNC2(fw_caps == FW_CAPS16
				     ? FW_PORT_ACTION_GET_PORT_INFO
				     : FW_PORT_ACTION_GET_PORT_INFO32) |
		FUNC1(port_cmd));
	ret = FUNC7(pi->adapter, pi->adapter->mbox,
			 &port_cmd, sizeof(port_cmd), &port_cmd);
	if (ret)
		return ret;

	FUNC6(pi, (__be64 *)&port_cmd);
	return 0;
}