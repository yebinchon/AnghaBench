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
typedef  int /*<<< orphan*/  u8 ;
struct link_config {int pcaps; scalar_t__ autoneg; } ;
struct TYPE_7__ {void* rcap32; } ;
struct TYPE_6__ {void* rcap; } ;
struct TYPE_8__ {TYPE_3__ l1cfg32; TYPE_2__ l1cfg; } ;
struct fw_port_cmd {TYPE_4__ u; void* action_to_len16; void* op_to_portid; } ;
struct TYPE_5__ {unsigned int fw_caps_support; } ;
struct adapter {int /*<<< orphan*/  pdev_dev; TYPE_1__ params; } ;
typedef  int fw_port_cap32_t ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 scalar_t__ AUTONEG_ENABLE ; 
 int EINVAL ; 
 unsigned int FW_CAPS16 ; 
 int FW_CMD_EXEC_F ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FW_CMD_REQUEST_F ; 
 int FUNC1 (struct fw_port_cmd) ; 
 int /*<<< orphan*/  FW_PORT_ACTION_L1_CFG ; 
 int /*<<< orphan*/  FW_PORT_ACTION_L1_CFG32 ; 
 int FW_PORT_CAP32_ANEG ; 
 int /*<<< orphan*/  FW_PORT_CMD ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (unsigned int) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct fw_port_cmd*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct adapter*,unsigned int,struct link_config*) ; 
 int FUNC9 (struct adapter*,unsigned int,struct fw_port_cmd*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int FUNC10(struct adapter *adapter, unsigned int mbox,
		       unsigned int port, struct link_config *lc,
		       u8 sleep_ok, int timeout)
{
	unsigned int fw_caps = adapter->params.fw_caps_support;
	struct fw_port_cmd cmd;
	fw_port_cap32_t rcap;
	int ret;

	if (!(lc->pcaps & FW_PORT_CAP32_ANEG) &&
	    lc->autoneg == AUTONEG_ENABLE) {
		return -EINVAL;
	}

	/* Compute our Requested Port Capabilities and send that on to the
	 * Firmware.
	 */
	rcap = FUNC8(adapter, port, lc);
	FUNC7(&cmd, 0, sizeof(cmd));
	cmd.op_to_portid = FUNC4(FUNC0(FW_PORT_CMD) |
				       FW_CMD_REQUEST_F | FW_CMD_EXEC_F |
				       FUNC3(port));
	cmd.action_to_len16 =
		FUNC4(FUNC2(fw_caps == FW_CAPS16
						 ? FW_PORT_ACTION_L1_CFG
						 : FW_PORT_ACTION_L1_CFG32) |
						 FUNC1(cmd));
	if (fw_caps == FW_CAPS16)
		cmd.u.l1cfg.rcap = FUNC4(FUNC6(rcap));
	else
		cmd.u.l1cfg32.rcap32 = FUNC4(rcap);

	ret = FUNC9(adapter, mbox, &cmd, sizeof(cmd), NULL,
				      sleep_ok, timeout);

	/* Unfortunately, even if the Requested Port Capabilities "fit" within
	 * the Physical Port Capabilities, some combinations of features may
	 * still not be legal.  For example, 40Gb/s and Reed-Solomon Forward
	 * Error Correction.  So if the Firmware rejects the L1 Configure
	 * request, flag that here.
	 */
	if (ret) {
		FUNC5(adapter->pdev_dev,
			"Requested Port Capabilities %#x rejected, error %d\n",
			rcap, -ret);
		return ret;
	}
	return 0;
}