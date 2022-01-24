#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {void* rcap32; } ;
struct TYPE_5__ {void* rcap; } ;
struct TYPE_7__ {TYPE_2__ l1cfg32; TYPE_1__ l1cfg; } ;
struct fw_port_cmd {TYPE_3__ u; void* action_to_len16; void* op_to_portid; } ;
struct TYPE_8__ {unsigned int fw_caps_support; } ;
struct adapter {TYPE_4__ params; } ;
typedef  int /*<<< orphan*/  c ;

/* Variables and functions */
 unsigned int FW_CAPS16 ; 
 int FW_CMD_EXEC_F ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FW_CMD_REQUEST_F ; 
 int FUNC1 (struct fw_port_cmd) ; 
 int /*<<< orphan*/  FW_PORT_ACTION_L1_CFG ; 
 int /*<<< orphan*/  FW_PORT_ACTION_L1_CFG32 ; 
 int FW_PORT_CAP32_ANEG ; 
 int FW_PORT_CAP_ANEG ; 
 int /*<<< orphan*/  FW_PORT_CMD ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (unsigned int) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct fw_port_cmd*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct adapter*,unsigned int,struct fw_port_cmd*,int,int /*<<< orphan*/ *) ; 

int FUNC7(struct adapter *adap, unsigned int mbox, unsigned int port)
{
	unsigned int fw_caps = adap->params.fw_caps_support;
	struct fw_port_cmd c;

	FUNC5(&c, 0, sizeof(c));
	c.op_to_portid = FUNC4(FUNC0(FW_PORT_CMD) |
				     FW_CMD_REQUEST_F | FW_CMD_EXEC_F |
				     FUNC3(port));
	c.action_to_len16 =
		FUNC4(FUNC2(fw_caps == FW_CAPS16
						 ? FW_PORT_ACTION_L1_CFG
						 : FW_PORT_ACTION_L1_CFG32) |
			    FUNC1(c));
	if (fw_caps == FW_CAPS16)
		c.u.l1cfg.rcap = FUNC4(FW_PORT_CAP_ANEG);
	else
		c.u.l1cfg32.rcap32 = FUNC4(FW_PORT_CAP32_ANEG);
	return FUNC6(adap, mbox, &c, sizeof(c), NULL);
}