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
typedef  void* u8 ;
typedef  int u32 ;
struct port_info {int viid; int tx_chan; int lport; unsigned int rss_size; int port_type; int mdio_addr; int /*<<< orphan*/  link_cfg; int /*<<< orphan*/  mod_type; void* vin; void* vivld; struct adapter* adapter; int /*<<< orphan*/  rx_cchan; } ;
struct TYPE_6__ {int /*<<< orphan*/  acaps32; int /*<<< orphan*/  pcaps32; int /*<<< orphan*/  lstatus32_to_cbllen32; } ;
struct TYPE_5__ {int /*<<< orphan*/  acap; int /*<<< orphan*/  pcap; int /*<<< orphan*/  lstatus_to_modtype; } ;
struct TYPE_7__ {TYPE_2__ info32; TYPE_1__ info; } ;
struct fw_port_cmd {TYPE_3__ u; void* action_to_len16; void* op_to_portid; } ;
struct TYPE_8__ {unsigned int fw_caps_support; scalar_t__ viid_smt_extn_support; } ;
struct adapter {TYPE_4__ params; } ;
typedef  void* fw_port_cap32_t ;
typedef  enum fw_port_type { ____Placeholder_fw_port_type } fw_port_type ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 unsigned int FW_CAPS16 ; 
 unsigned int FW_CAPS32 ; 
 unsigned int FW_CAPS_UNKNOWN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FW_CMD_READ_F ; 
 int FW_CMD_REQUEST_F ; 
 int FUNC1 (struct fw_port_cmd) ; 
 int /*<<< orphan*/  FW_PARAMS_MNEM_PFVF ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FW_PARAMS_PARAM_PFVF_PORT_CAPS32 ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FW_PORT_ACTION_GET_PORT_INFO ; 
 int /*<<< orphan*/  FW_PORT_ACTION_GET_PORT_INFO32 ; 
 int /*<<< orphan*/  FW_PORT_CMD ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FW_PORT_CMD_MDIOCAP32_F ; 
 int FW_PORT_CMD_MDIOCAP_F ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int) ; 
 int /*<<< orphan*/  FW_PORT_MOD_TYPE_NA ; 
 void* FUNC10 (int) ; 
 void* FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 void* FUNC13 (int /*<<< orphan*/ ) ; 
 void* FUNC14 (int) ; 
 void* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,void*,void*) ; 
 int /*<<< orphan*/  FUNC17 (struct fw_port_cmd*,int /*<<< orphan*/ ,int) ; 
 int FUNC18 (struct adapter*,int,int,int,int,int,void**,unsigned int*,void**,void**) ; 
 int /*<<< orphan*/  FUNC19 (struct adapter*,int) ; 
 int FUNC20 (struct adapter*,int,int,int,int,int*,int*) ; 
 int FUNC21 (struct adapter*,int,struct fw_port_cmd*,int,struct fw_port_cmd*) ; 

int FUNC22(struct port_info *pi, int mbox,
		     int port, int pf, int vf, u8 mac[])
{
	struct adapter *adapter = pi->adapter;
	unsigned int fw_caps = adapter->params.fw_caps_support;
	struct fw_port_cmd cmd;
	unsigned int rss_size;
	enum fw_port_type port_type;
	int mdio_addr;
	fw_port_cap32_t pcaps, acaps;
	u8 vivld = 0, vin = 0;
	int ret;

	/* If we haven't yet determined whether we're talking to Firmware
	 * which knows the new 32-bit Port Capabilities, it's time to find
	 * out now.  This will also tell new Firmware to send us Port Status
	 * Updates using the new 32-bit Port Capabilities version of the
	 * Port Information message.
	 */
	if (fw_caps == FW_CAPS_UNKNOWN) {
		u32 param, val;

		param = (FUNC2(FW_PARAMS_MNEM_PFVF) |
			 FUNC3(FW_PARAMS_PARAM_PFVF_PORT_CAPS32));
		val = 1;
		ret = FUNC20(adapter, mbox, pf, vf, 1, &param, &val);
		fw_caps = (ret == 0 ? FW_CAPS32 : FW_CAPS16);
		adapter->params.fw_caps_support = fw_caps;
	}

	FUNC17(&cmd, 0, sizeof(cmd));
	cmd.op_to_portid = FUNC14(FUNC0(FW_PORT_CMD) |
				       FW_CMD_REQUEST_F | FW_CMD_READ_F |
				       FUNC7(port));
	cmd.action_to_len16 = FUNC14(
		FUNC4(fw_caps == FW_CAPS16
				     ? FW_PORT_ACTION_GET_PORT_INFO
				     : FW_PORT_ACTION_GET_PORT_INFO32) |
		FUNC1(cmd));
	ret = FUNC21(pi->adapter, mbox, &cmd, sizeof(cmd), &cmd);
	if (ret)
		return ret;

	/* Extract the various fields from the Port Information message.
	 */
	if (fw_caps == FW_CAPS16) {
		u32 lstatus = FUNC13(cmd.u.info.lstatus_to_modtype);

		port_type = FUNC9(lstatus);
		mdio_addr = ((lstatus & FW_PORT_CMD_MDIOCAP_F)
			     ? FUNC6(lstatus)
			     : -1);
		pcaps = FUNC15(FUNC12(cmd.u.info.pcap));
		acaps = FUNC15(FUNC12(cmd.u.info.acap));
	} else {
		u32 lstatus32 = FUNC13(cmd.u.info32.lstatus32_to_cbllen32);

		port_type = FUNC8(lstatus32);
		mdio_addr = ((lstatus32 & FW_PORT_CMD_MDIOCAP32_F)
			     ? FUNC5(lstatus32)
			     : -1);
		pcaps = FUNC13(cmd.u.info32.pcaps32);
		acaps = FUNC13(cmd.u.info32.acaps32);
	}

	ret = FUNC18(pi->adapter, mbox, port, pf, vf, 1, mac, &rss_size,
			  &vivld, &vin);
	if (ret < 0)
		return ret;

	pi->viid = ret;
	pi->tx_chan = port;
	pi->lport = port;
	pi->rss_size = rss_size;
	pi->rx_cchan = FUNC19(pi->adapter, port);

	/* If fw supports returning the VIN as part of FW_VI_CMD,
	 * save the returned values.
	 */
	if (adapter->params.viid_smt_extn_support) {
		pi->vivld = vivld;
		pi->vin = vin;
	} else {
		/* Retrieve the values from VIID */
		pi->vivld = FUNC11(pi->viid);
		pi->vin =  FUNC10(pi->viid);
	}

	pi->port_type = port_type;
	pi->mdio_addr = mdio_addr;
	pi->mod_type = FW_PORT_MOD_TYPE_NA;

	FUNC16(&pi->link_cfg, pcaps, acaps);
	return 0;
}