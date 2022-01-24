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
struct fw_vi_rxmode_cmd {void* mtu_to_vlanexen; void* retval_len16; void* op_to_viid; } ;
struct adapter {int dummy; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FW_CMD_REQUEST_F ; 
 int FW_CMD_WRITE_F ; 
 int FUNC1 (struct fw_vi_rxmode_cmd) ; 
 int /*<<< orphan*/  FW_VI_RXMODE_CMD ; 
 int FW_VI_RXMODE_CMD_ALLMULTIEN_M ; 
 int FUNC2 (int) ; 
 int FW_VI_RXMODE_CMD_BROADCASTEN_M ; 
 int FUNC3 (int) ; 
 int FW_VI_RXMODE_CMD_MTU_M ; 
 int FUNC4 (int) ; 
 int FW_VI_RXMODE_CMD_PROMISCEN_M ; 
 int FUNC5 (int) ; 
 int FUNC6 (unsigned int) ; 
 int FW_VI_RXMODE_CMD_VLANEXEN_M ; 
 int FUNC7 (int) ; 
 void* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct fw_vi_rxmode_cmd*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (struct adapter*,struct fw_vi_rxmode_cmd*,int,int /*<<< orphan*/ *,int) ; 

int FUNC11(struct adapter *adapter, unsigned int viid,
		    int mtu, int promisc, int all_multi, int bcast, int vlanex,
		    bool sleep_ok)
{
	struct fw_vi_rxmode_cmd cmd;

	/* convert to FW values */
	if (mtu < 0)
		mtu = FW_VI_RXMODE_CMD_MTU_M;
	if (promisc < 0)
		promisc = FW_VI_RXMODE_CMD_PROMISCEN_M;
	if (all_multi < 0)
		all_multi = FW_VI_RXMODE_CMD_ALLMULTIEN_M;
	if (bcast < 0)
		bcast = FW_VI_RXMODE_CMD_BROADCASTEN_M;
	if (vlanex < 0)
		vlanex = FW_VI_RXMODE_CMD_VLANEXEN_M;

	FUNC9(&cmd, 0, sizeof(cmd));
	cmd.op_to_viid = FUNC8(FUNC0(FW_VI_RXMODE_CMD) |
				     FW_CMD_REQUEST_F |
				     FW_CMD_WRITE_F |
				     FUNC6(viid));
	cmd.retval_len16 = FUNC8(FUNC1(cmd));
	cmd.mtu_to_vlanexen =
		FUNC8(FUNC4(mtu) |
			    FUNC5(promisc) |
			    FUNC2(all_multi) |
			    FUNC3(bcast) |
			    FUNC7(vlanex));
	return FUNC10(adapter, &cmd, sizeof(cmd), NULL, sleep_ok);
}