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
typedef  int u16 ;
struct TYPE_7__ {int /*<<< orphan*/  wiphy; } ;
struct mwifiex_private {int bss_started; TYPE_2__ wdev; struct mwifiex_adapter* adapter; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* update_mp_end_port ) (struct mwifiex_adapter*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* multi_port_resync ) (struct mwifiex_adapter*) ;} ;
struct mwifiex_adapter {int usb_mc_setup; int tx_lock_flag; int tx_buf_size; int curr_tx_buf_size; int pps_uapsd_mode; int delay_null_pkt; TYPE_3__ if_ops; int /*<<< orphan*/  iface_type; TYPE_1__* curr_cmd; } ;
struct TYPE_9__ {int /*<<< orphan*/  mp_end_port; int /*<<< orphan*/  buff_size; } ;
struct TYPE_10__ {TYPE_4__ tx_buf; } ;
struct host_cmd_ds_command {scalar_t__ result; int command; TYPE_5__ params; } ;
struct TYPE_6__ {int wait_q_enabled; void* data_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD ; 
 int /*<<< orphan*/  ERROR ; 
#define  HOST_CMD_APCMD_STA_LIST 197 
#define  HOST_CMD_APCMD_SYS_RESET 196 
#define  HostCmd_CMD_11AC_CFG 195 
#define  HostCmd_CMD_11N_ADDBA_REQ 194 
#define  HostCmd_CMD_11N_ADDBA_RSP 193 
#define  HostCmd_CMD_11N_CFG 192 
#define  HostCmd_CMD_11N_DELBA 191 
#define  HostCmd_CMD_802_11D_DOMAIN_INFO 190 
#define  HostCmd_CMD_802_11_AD_HOC_JOIN 189 
#define  HostCmd_CMD_802_11_AD_HOC_START 188 
#define  HostCmd_CMD_802_11_AD_HOC_STOP 187 
#define  HostCmd_CMD_802_11_ASSOCIATE 186 
#define  HostCmd_CMD_802_11_BG_SCAN_CONFIG 185 
#define  HostCmd_CMD_802_11_BG_SCAN_QUERY 184 
#define  HostCmd_CMD_802_11_DEAUTHENTICATE 183 
#define  HostCmd_CMD_802_11_EEPROM_ACCESS 182 
#define  HostCmd_CMD_802_11_GET_LOG 181 
#define  HostCmd_CMD_802_11_HS_CFG_ENH 180 
#define  HostCmd_CMD_802_11_IBSS_COALESCING_STATUS 179 
#define  HostCmd_CMD_802_11_KEY_MATERIAL 178 
#define  HostCmd_CMD_802_11_MAC_ADDRESS 177 
#define  HostCmd_CMD_802_11_PS_MODE_ENH 176 
#define  HostCmd_CMD_802_11_SCAN 175 
#define  HostCmd_CMD_802_11_SCAN_EXT 174 
#define  HostCmd_CMD_802_11_SNMP_MIB 173 
#define  HostCmd_CMD_802_11_SUBSCRIBE_EVENT 172 
#define  HostCmd_CMD_802_11_TX_RATE_QUERY 171 
#define  HostCmd_CMD_AMSDU_AGGR_CTRL 170 
#define  HostCmd_CMD_BBP_REG_ACCESS 169 
#define  HostCmd_CMD_CAU_REG_ACCESS 168 
#define  HostCmd_CMD_CFG_DATA 167 
#define  HostCmd_CMD_CHAN_REGION_CFG 166 
#define  HostCmd_CMD_CHAN_REPORT_REQUEST 165 
#define  HostCmd_CMD_COALESCE_CFG 164 
#define  HostCmd_CMD_FUNC_INIT 163 
#define  HostCmd_CMD_FUNC_SHUTDOWN 162 
#define  HostCmd_CMD_GET_HW_SPEC 161 
#define  HostCmd_CMD_GTK_REKEY_OFFLOAD_CFG 160 
#define  HostCmd_CMD_HS_WAKEUP_REASON 159 
#define  HostCmd_CMD_MAC_CONTROL 158 
#define  HostCmd_CMD_MAC_MULTICAST_ADR 157 
#define  HostCmd_CMD_MAC_REG_ACCESS 156 
#define  HostCmd_CMD_MC_POLICY 155 
#define  HostCmd_CMD_MEF_CFG 154 
#define  HostCmd_CMD_MEM_ACCESS 153 
#define  HostCmd_CMD_MGMT_FRAME_REG 152 
#define  HostCmd_CMD_P2P_MODE_CFG 151 
#define  HostCmd_CMD_PACKET_AGGR_CTRL 150 
#define  HostCmd_CMD_PCIE_DESC_DETAILS 149 
#define  HostCmd_CMD_PMIC_REG_ACCESS 148 
#define  HostCmd_CMD_RECONFIGURE_TX_BUFF 147 
#define  HostCmd_CMD_REMAIN_ON_CHAN 146 
#define  HostCmd_CMD_RF_ANTENNA 145 
#define  HostCmd_CMD_RF_REG_ACCESS 144 
#define  HostCmd_CMD_RF_TX_PWR 143 
#define  HostCmd_CMD_ROBUST_COEX 142 
#define  HostCmd_CMD_RSSI_INFO 141 
#define  HostCmd_CMD_SDIO_SP_RX_AGGR_CFG 140 
#define  HostCmd_CMD_SET_BSS_MODE 139 
#define  HostCmd_CMD_STA_CONFIGURE 138 
#define  HostCmd_CMD_TDLS_CONFIG 137 
#define  HostCmd_CMD_TDLS_OPER 136 
#define  HostCmd_CMD_TXPWR_CFG 135 
#define  HostCmd_CMD_TX_RATE_CFG 134 
#define  HostCmd_CMD_UAP_BSS_START 133 
#define  HostCmd_CMD_UAP_BSS_STOP 132 
#define  HostCmd_CMD_UAP_STA_DEAUTH 131 
#define  HostCmd_CMD_UAP_SYS_CONFIG 130 
#define  HostCmd_CMD_VERSION_EXT 129 
#define  HostCmd_CMD_WMM_GET_STATUS 128 
 scalar_t__ HostCmd_RESULT_OK ; 
 int MWIFIEX_SDIO_BLOCK_SIZE ; 
 int /*<<< orphan*/  MWIFIEX_USB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mwifiex_adapter*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct mwifiex_private*,struct host_cmd_ds_command*) ; 
 int FUNC4 (struct mwifiex_private*,struct host_cmd_ds_command*) ; 
 int FUNC5 (struct mwifiex_private*,struct host_cmd_ds_command*) ; 
 int FUNC6 (struct mwifiex_private*,struct host_cmd_ds_command*) ; 
 int FUNC7 (struct mwifiex_private*,struct host_cmd_ds_command*) ; 
 int FUNC8 (struct mwifiex_private*,struct host_cmd_ds_command*) ; 
 int FUNC9 (struct mwifiex_private*,struct host_cmd_ds_command*) ; 
 int FUNC10 (struct mwifiex_private*,struct host_cmd_ds_command*) ; 
 int FUNC11 (struct mwifiex_private*,struct host_cmd_ds_command*) ; 
 int FUNC12 (struct mwifiex_private*,struct host_cmd_ds_command*) ; 
 int FUNC13 (struct mwifiex_private*,struct host_cmd_ds_command*) ; 
 int FUNC14 (struct mwifiex_private*,struct host_cmd_ds_command*) ; 
 int FUNC15 (struct mwifiex_private*,struct host_cmd_ds_command*) ; 
 int FUNC16 (struct mwifiex_private*,struct host_cmd_ds_command*) ; 
 int FUNC17 (struct mwifiex_private*,struct host_cmd_ds_command*,void*) ; 
 int FUNC18 (struct mwifiex_private*,struct host_cmd_ds_command*) ; 
 int FUNC19 (struct mwifiex_private*,struct host_cmd_ds_command*) ; 
 int FUNC20 (struct mwifiex_private*,struct host_cmd_ds_command*) ; 
 int FUNC21 (struct mwifiex_private*,struct host_cmd_ds_command*) ; 
 int FUNC22 (struct mwifiex_private*,struct host_cmd_ds_command*,void*) ; 
 int FUNC23 (struct mwifiex_private*,struct host_cmd_ds_command*,void*) ; 
 int FUNC24 (struct mwifiex_private*,struct host_cmd_ds_command*) ; 
 int FUNC25 (struct mwifiex_private*,struct host_cmd_ds_command*,void*) ; 
 int FUNC26 (struct mwifiex_private*,struct host_cmd_ds_command*) ; 
 int FUNC27 (struct mwifiex_private*,struct host_cmd_ds_command*) ; 
 int FUNC28 (struct mwifiex_private*,struct host_cmd_ds_command*,void*) ; 
 int FUNC29 (struct mwifiex_private*,struct host_cmd_ds_command*,void*) ; 
 int FUNC30 (struct mwifiex_private*,struct host_cmd_ds_command*) ; 
 int FUNC31 (int,struct host_cmd_ds_command*,void*) ; 
 int FUNC32 (struct mwifiex_private*,struct host_cmd_ds_command*,void*) ; 
 int FUNC33 (struct mwifiex_private*,struct host_cmd_ds_command*) ; 
 int FUNC34 (struct mwifiex_private*,struct host_cmd_ds_command*) ; 
 int FUNC35 (struct mwifiex_private*,struct host_cmd_ds_command*,void*) ; 
 int FUNC36 (struct mwifiex_private*,struct host_cmd_ds_command*) ; 
 int FUNC37 (struct mwifiex_private*,struct host_cmd_ds_command*) ; 
 int FUNC38 (struct mwifiex_private*,struct host_cmd_ds_command*) ; 
 int FUNC39 (struct mwifiex_private*,struct host_cmd_ds_command*) ; 
 int FUNC40 (struct mwifiex_private*,struct host_cmd_ds_command*) ; 
 int FUNC41 (struct mwifiex_private*,struct host_cmd_ds_command*) ; 
 int FUNC42 (struct mwifiex_private*,struct host_cmd_ds_command*,void*) ; 
 int FUNC43 (struct mwifiex_private*,struct host_cmd_ds_command*,void*) ; 
 int FUNC44 (struct mwifiex_private*,struct host_cmd_ds_command*) ; 
 int /*<<< orphan*/  FUNC45 (struct mwifiex_adapter*) ; 
 int /*<<< orphan*/  FUNC46 (struct mwifiex_adapter*,int /*<<< orphan*/ ) ; 

int FUNC47(struct mwifiex_private *priv, u16 cmdresp_no,
				struct host_cmd_ds_command *resp)
{
	int ret = 0;
	struct mwifiex_adapter *adapter = priv->adapter;
	void *data_buf = adapter->curr_cmd->data_buf;

	/* If the command is not successful, cleanup and return failure */
	if (resp->result != HostCmd_RESULT_OK) {
		FUNC3(priv, resp);
		return -1;
	}
	/* Command successful, handle response */
	switch (cmdresp_no) {
	case HostCmd_CMD_GET_HW_SPEC:
		ret = FUNC24(priv, resp);
		break;
	case HostCmd_CMD_CFG_DATA:
		ret = FUNC20(priv, resp);
		break;
	case HostCmd_CMD_MAC_CONTROL:
		break;
	case HostCmd_CMD_802_11_MAC_ADDRESS:
		ret = FUNC13(priv, resp);
		break;
	case HostCmd_CMD_MAC_MULTICAST_ADR:
		ret = FUNC27(priv, resp);
		break;
	case HostCmd_CMD_TX_RATE_CFG:
		ret = FUNC40(priv, resp);
		break;
	case HostCmd_CMD_802_11_SCAN:
		ret = FUNC15(priv, resp);
		adapter->curr_cmd->wait_q_enabled = false;
		break;
	case HostCmd_CMD_802_11_SCAN_EXT:
		ret = FUNC16(priv, resp);
		adapter->curr_cmd->wait_q_enabled = false;
		break;
	case HostCmd_CMD_802_11_BG_SCAN_QUERY:
		ret = FUNC15(priv, resp);
		FUNC0(priv->wdev.wiphy, 0);
		FUNC2(adapter, CMD,
			    "info: CMD_RESP: BG_SCAN result is ready!\n");
		break;
	case HostCmd_CMD_802_11_BG_SCAN_CONFIG:
		break;
	case HostCmd_CMD_TXPWR_CFG:
		ret = FUNC39(priv, resp);
		break;
	case HostCmd_CMD_RF_TX_PWR:
		ret = FUNC34(priv, resp);
		break;
	case HostCmd_CMD_RF_ANTENNA:
		ret = FUNC33(priv, resp);
		break;
	case HostCmd_CMD_802_11_PS_MODE_ENH:
		ret = FUNC22(priv, resp, data_buf);
		break;
	case HostCmd_CMD_802_11_HS_CFG_ENH:
		ret = FUNC11(priv, resp);
		break;
	case HostCmd_CMD_802_11_ASSOCIATE:
		ret = FUNC9(priv, resp);
		break;
	case HostCmd_CMD_802_11_DEAUTHENTICATE:
		ret = FUNC10(priv, resp);
		break;
	case HostCmd_CMD_802_11_AD_HOC_START:
	case HostCmd_CMD_802_11_AD_HOC_JOIN:
		ret = FUNC7(priv, resp);
		break;
	case HostCmd_CMD_802_11_AD_HOC_STOP:
		ret = FUNC8(priv, resp);
		break;
	case HostCmd_CMD_802_11_GET_LOG:
		ret = FUNC25(priv, resp, data_buf);
		break;
	case HostCmd_CMD_RSSI_INFO:
		ret = FUNC14(priv, resp);
		break;
	case HostCmd_CMD_802_11_SNMP_MIB:
		ret = FUNC17(priv, resp, data_buf);
		break;
	case HostCmd_CMD_802_11_TX_RATE_QUERY:
		ret = FUNC18(priv, resp);
		break;
	case HostCmd_CMD_VERSION_EXT:
		ret = FUNC42(priv, resp, data_buf);
		break;
	case HostCmd_CMD_REMAIN_ON_CHAN:
		ret = FUNC32(priv, resp, data_buf);
		break;
	case HostCmd_CMD_11AC_CFG:
		break;
	case HostCmd_CMD_PACKET_AGGR_CTRL:
		ret = FUNC30(priv, resp);
		break;
	case HostCmd_CMD_P2P_MODE_CFG:
		ret = FUNC29(priv, resp, data_buf);
		break;
	case HostCmd_CMD_MGMT_FRAME_REG:
	case HostCmd_CMD_FUNC_INIT:
	case HostCmd_CMD_FUNC_SHUTDOWN:
		break;
	case HostCmd_CMD_802_11_KEY_MATERIAL:
		ret = FUNC12(priv, resp);
		break;
	case HostCmd_CMD_802_11D_DOMAIN_INFO:
		ret = FUNC19(priv, resp);
		break;
	case HostCmd_CMD_11N_ADDBA_REQ:
		ret = FUNC4(priv, resp);
		break;
	case HostCmd_CMD_11N_DELBA:
		ret = FUNC6(priv, resp);
		break;
	case HostCmd_CMD_11N_ADDBA_RSP:
		ret = FUNC5(priv, resp);
		break;
	case HostCmd_CMD_RECONFIGURE_TX_BUFF:
		if (0xffff == (u16)FUNC1(resp->params.tx_buf.buff_size)) {
			if (adapter->iface_type == MWIFIEX_USB &&
			    adapter->usb_mc_setup) {
				if (adapter->if_ops.multi_port_resync)
					adapter->if_ops.
						multi_port_resync(adapter);
				adapter->usb_mc_setup = false;
				adapter->tx_lock_flag = false;
			}
			break;
		}
		adapter->tx_buf_size = (u16) FUNC1(resp->params.
							     tx_buf.buff_size);
		adapter->tx_buf_size = (adapter->tx_buf_size
					/ MWIFIEX_SDIO_BLOCK_SIZE)
				       * MWIFIEX_SDIO_BLOCK_SIZE;
		adapter->curr_tx_buf_size = adapter->tx_buf_size;
		FUNC2(adapter, CMD, "cmd: curr_tx_buf_size=%d\n",
			    adapter->curr_tx_buf_size);

		if (adapter->if_ops.update_mp_end_port)
			adapter->if_ops.update_mp_end_port(adapter,
				FUNC1(resp->params.tx_buf.mp_end_port));
		break;
	case HostCmd_CMD_AMSDU_AGGR_CTRL:
		break;
	case HostCmd_CMD_WMM_GET_STATUS:
		ret = FUNC44(priv, resp);
		break;
	case HostCmd_CMD_802_11_IBSS_COALESCING_STATUS:
		ret = FUNC26(priv, resp);
		break;
	case HostCmd_CMD_MEM_ACCESS:
		ret = FUNC28(priv, resp, data_buf);
		break;
	case HostCmd_CMD_MAC_REG_ACCESS:
	case HostCmd_CMD_BBP_REG_ACCESS:
	case HostCmd_CMD_RF_REG_ACCESS:
	case HostCmd_CMD_PMIC_REG_ACCESS:
	case HostCmd_CMD_CAU_REG_ACCESS:
	case HostCmd_CMD_802_11_EEPROM_ACCESS:
		ret = FUNC31(cmdresp_no, resp, data_buf);
		break;
	case HostCmd_CMD_SET_BSS_MODE:
		break;
	case HostCmd_CMD_11N_CFG:
		break;
	case HostCmd_CMD_PCIE_DESC_DETAILS:
		break;
	case HostCmd_CMD_802_11_SUBSCRIBE_EVENT:
		ret = FUNC37(priv, resp);
		break;
	case HostCmd_CMD_UAP_SYS_CONFIG:
		break;
	case HOST_CMD_APCMD_STA_LIST:
		ret = FUNC41(priv, resp);
		break;
	case HostCmd_CMD_UAP_BSS_START:
		adapter->tx_lock_flag = false;
		adapter->pps_uapsd_mode = false;
		adapter->delay_null_pkt = false;
		priv->bss_started = 1;
		break;
	case HostCmd_CMD_UAP_BSS_STOP:
		priv->bss_started = 0;
		break;
	case HostCmd_CMD_UAP_STA_DEAUTH:
		break;
	case HOST_CMD_APCMD_SYS_RESET:
		break;
	case HostCmd_CMD_MEF_CFG:
		break;
	case HostCmd_CMD_COALESCE_CFG:
		break;
	case HostCmd_CMD_TDLS_OPER:
		ret = FUNC38(priv, resp);
	case HostCmd_CMD_MC_POLICY:
		break;
	case HostCmd_CMD_CHAN_REPORT_REQUEST:
		break;
	case HostCmd_CMD_SDIO_SP_RX_AGGR_CFG:
		ret = FUNC36(priv, resp);
		break;
	case HostCmd_CMD_HS_WAKEUP_REASON:
		ret = FUNC43(priv, resp, data_buf);
		break;
	case HostCmd_CMD_TDLS_CONFIG:
		break;
	case HostCmd_CMD_ROBUST_COEX:
		ret = FUNC35(priv, resp, data_buf);
		break;
	case HostCmd_CMD_GTK_REKEY_OFFLOAD_CFG:
		break;
	case HostCmd_CMD_CHAN_REGION_CFG:
		ret = FUNC21(priv, resp);
		break;
	case HostCmd_CMD_STA_CONFIGURE:
		ret = FUNC23(priv, resp, data_buf);
		break;
	default:
		FUNC2(adapter, ERROR,
			    "CMD_RESP: unknown cmd response %#x\n",
			    resp->command);
		break;
	}

	return ret;
}