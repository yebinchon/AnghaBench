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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct wmi_cmd_hdr {int /*<<< orphan*/  info1; int /*<<< orphan*/  cmd_id; } ;
struct wmi {int dummy; } ;
struct sk_buff {int* data; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_WMI ; 
 int /*<<< orphan*/  ATH6KL_DBG_WMI_DUMP ; 
#define  WMI_ADDBA_RESP_EVENTID 158 
#define  WMI_APLIST_EVENTID 157 
#define  WMI_CHANNEL_CHANGE_EVENTID 156 
#define  WMI_CMDERROR_EVENTID 155 
 int WMI_CMD_HDR_IF_ID_MASK ; 
#define  WMI_ERROR_REPORT_EVENTID 154 
#define  WMI_EXTENSION_EVENTID 153 
#define  WMI_GET_BITRATE_CMDID 152 
#define  WMI_GET_CHANNEL_LIST_CMDID 151 
#define  WMI_GET_FIXRATES_CMDID 150 
#define  WMI_GET_KEEPALIVE_CMDID 149 
#define  WMI_GET_PMKID_LIST_EVENTID 148 
#define  WMI_GET_TX_PWR_CMDID 147 
#define  WMI_GET_WOW_LIST_EVENTID 146 
#define  WMI_LQ_THRESHOLD_EVENTID 145 
#define  WMI_OPT_RX_FRAME_EVENTID 144 
#define  WMI_P2P_CAPABILITIES_EVENTID 143 
#define  WMI_P2P_INFO_EVENTID 142 
#define  WMI_PEER_NODE_EVENTID 141 
#define  WMI_PSTREAM_TIMEOUT_EVENTID 140 
#define  WMI_READY_EVENTID 139 
#define  WMI_REGDOMAIN_EVENTID 138 
#define  WMI_REPORT_BTCOEX_CONFIG_EVENTID 137 
#define  WMI_REPORT_BTCOEX_STATS_EVENTID 136 
#define  WMI_REPORT_ROAM_DATA_EVENTID 135 
#define  WMI_REPORT_ROAM_TBL_EVENTID 134 
#define  WMI_RSSI_THRESHOLD_EVENTID 133 
#define  WMI_SET_PARAMS_REPLY_EVENTID 132 
#define  WMI_SNR_THRESHOLD_EVENTID 131 
#define  WMI_TEST_EVENTID 130 
#define  WMI_TX_COMPLETE_EVENTID 129 
#define  WMI_TX_RETRY_ERR_EVENTID 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wmi*,int*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct wmi*,int*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct wmi*,int*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct wmi*,struct sk_buff*) ; 
 int FUNC6 (struct wmi*,int*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct wmi*,int*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct wmi*,int*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct wmi*,int*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct wmi*,int,int,int*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct wmi*,int*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct wmi*,int*,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct wmi*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct wmi*,int*,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct wmi*,int*,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct wmi*,int*,int /*<<< orphan*/ ) ; 
 int FUNC19 (struct wmi*,int*,int /*<<< orphan*/ ) ; 
 int FUNC20 (struct wmi*,int*,int /*<<< orphan*/ ) ; 
 int FUNC21 (int*,int /*<<< orphan*/ ) ; 
 int FUNC22 (struct wmi*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct sk_buff*) ; 
 int FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC26(struct wmi *wmi, struct sk_buff *skb)
{
	struct wmi_cmd_hdr *cmd;
	int ret = 0;
	u32 len;
	u16 id;
	u8 if_idx;
	u8 *datap;

	cmd = (struct wmi_cmd_hdr *) skb->data;
	id = FUNC24(cmd->cmd_id);
	if_idx = FUNC24(cmd->info1) & WMI_CMD_HDR_IF_ID_MASK;

	FUNC25(skb, sizeof(struct wmi_cmd_hdr));
	datap = skb->data;
	len = skb->len;

	FUNC0(ATH6KL_DBG_WMI, "wmi rx id %d len %d\n", id, len);
	FUNC1(ATH6KL_DBG_WMI_DUMP, NULL, "wmi rx ",
			datap, len);

	switch (id) {
	case WMI_GET_BITRATE_CMDID:
		FUNC0(ATH6KL_DBG_WMI, "WMI_GET_BITRATE_CMDID\n");
		ret = FUNC3(wmi, datap, len);
		break;
	case WMI_GET_CHANNEL_LIST_CMDID:
		FUNC0(ATH6KL_DBG_WMI, "WMI_GET_CHANNEL_LIST_CMDID\n");
		ret = FUNC4(wmi, datap, len);
		break;
	case WMI_GET_TX_PWR_CMDID:
		FUNC0(ATH6KL_DBG_WMI, "WMI_GET_TX_PWR_CMDID\n");
		ret = FUNC22(wmi, datap, len);
		break;
	case WMI_READY_EVENTID:
		FUNC0(ATH6KL_DBG_WMI, "WMI_READY_EVENTID\n");
		ret = FUNC15(wmi, datap, len);
		break;
	case WMI_PEER_NODE_EVENTID:
		FUNC0(ATH6KL_DBG_WMI, "WMI_PEER_NODE_EVENTID\n");
		ret = FUNC11(wmi, datap, len);
		break;
	case WMI_REGDOMAIN_EVENTID:
		FUNC0(ATH6KL_DBG_WMI, "WMI_REGDOMAIN_EVENTID\n");
		FUNC16(wmi, datap, len);
		break;
	case WMI_PSTREAM_TIMEOUT_EVENTID:
		FUNC0(ATH6KL_DBG_WMI, "WMI_PSTREAM_TIMEOUT_EVENTID\n");
		ret = FUNC13(wmi, datap, len);
		break;
	case WMI_CMDERROR_EVENTID:
		FUNC0(ATH6KL_DBG_WMI, "WMI_CMDERROR_EVENTID\n");
		ret = FUNC6(wmi, datap, len);
		break;
	case WMI_RSSI_THRESHOLD_EVENTID:
		FUNC0(ATH6KL_DBG_WMI, "WMI_RSSI_THRESHOLD_EVENTID\n");
		ret = FUNC18(wmi, datap, len);
		break;
	case WMI_ERROR_REPORT_EVENTID:
		FUNC0(ATH6KL_DBG_WMI, "WMI_ERROR_REPORT_EVENTID\n");
		break;
	case WMI_OPT_RX_FRAME_EVENTID:
		FUNC0(ATH6KL_DBG_WMI, "WMI_OPT_RX_FRAME_EVENTID\n");
		/* this event has been deprecated */
		break;
	case WMI_REPORT_ROAM_TBL_EVENTID:
		FUNC0(ATH6KL_DBG_WMI, "WMI_REPORT_ROAM_TBL_EVENTID\n");
		ret = FUNC17(wmi, datap, len);
		break;
	case WMI_EXTENSION_EVENTID:
		FUNC0(ATH6KL_DBG_WMI, "WMI_EXTENSION_EVENTID\n");
		ret = FUNC5(wmi, skb);
		break;
	case WMI_CHANNEL_CHANGE_EVENTID:
		FUNC0(ATH6KL_DBG_WMI, "WMI_CHANNEL_CHANGE_EVENTID\n");
		break;
	case WMI_REPORT_ROAM_DATA_EVENTID:
		FUNC0(ATH6KL_DBG_WMI, "WMI_REPORT_ROAM_DATA_EVENTID\n");
		break;
	case WMI_TEST_EVENTID:
		FUNC0(ATH6KL_DBG_WMI, "WMI_TEST_EVENTID\n");
		ret = FUNC20(wmi, datap, len);
		break;
	case WMI_GET_FIXRATES_CMDID:
		FUNC0(ATH6KL_DBG_WMI, "WMI_GET_FIXRATES_CMDID\n");
		ret = FUNC14(wmi, datap, len);
		break;
	case WMI_TX_RETRY_ERR_EVENTID:
		FUNC0(ATH6KL_DBG_WMI, "WMI_TX_RETRY_ERR_EVENTID\n");
		break;
	case WMI_SNR_THRESHOLD_EVENTID:
		FUNC0(ATH6KL_DBG_WMI, "WMI_SNR_THRESHOLD_EVENTID\n");
		ret = FUNC19(wmi, datap, len);
		break;
	case WMI_LQ_THRESHOLD_EVENTID:
		FUNC0(ATH6KL_DBG_WMI, "WMI_LQ_THRESHOLD_EVENTID\n");
		break;
	case WMI_APLIST_EVENTID:
		FUNC0(ATH6KL_DBG_WMI, "WMI_APLIST_EVENTID\n");
		ret = FUNC2(wmi, datap, len);
		break;
	case WMI_GET_KEEPALIVE_CMDID:
		FUNC0(ATH6KL_DBG_WMI, "WMI_GET_KEEPALIVE_CMDID\n");
		ret = FUNC8(wmi, datap, len);
		break;
	case WMI_GET_WOW_LIST_EVENTID:
		FUNC0(ATH6KL_DBG_WMI, "WMI_GET_WOW_LIST_EVENTID\n");
		break;
	case WMI_GET_PMKID_LIST_EVENTID:
		FUNC0(ATH6KL_DBG_WMI, "WMI_GET_PMKID_LIST_EVENTID\n");
		ret = FUNC7(wmi, datap, len);
		break;
	case WMI_SET_PARAMS_REPLY_EVENTID:
		FUNC0(ATH6KL_DBG_WMI, "WMI_SET_PARAMS_REPLY_EVENTID\n");
		break;
	case WMI_ADDBA_RESP_EVENTID:
		FUNC0(ATH6KL_DBG_WMI, "WMI_ADDBA_RESP_EVENTID\n");
		break;
	case WMI_REPORT_BTCOEX_CONFIG_EVENTID:
		FUNC0(ATH6KL_DBG_WMI,
			   "WMI_REPORT_BTCOEX_CONFIG_EVENTID\n");
		break;
	case WMI_REPORT_BTCOEX_STATS_EVENTID:
		FUNC0(ATH6KL_DBG_WMI,
			   "WMI_REPORT_BTCOEX_STATS_EVENTID\n");
		break;
	case WMI_TX_COMPLETE_EVENTID:
		FUNC0(ATH6KL_DBG_WMI, "WMI_TX_COMPLETE_EVENTID\n");
		ret = FUNC21(datap, len);
		break;
	case WMI_P2P_CAPABILITIES_EVENTID:
		FUNC0(ATH6KL_DBG_WMI, "WMI_P2P_CAPABILITIES_EVENTID\n");
		ret = FUNC9(datap, len);
		break;
	case WMI_P2P_INFO_EVENTID:
		FUNC0(ATH6KL_DBG_WMI, "WMI_P2P_INFO_EVENTID\n");
		ret = FUNC10(datap, len);
		break;
	default:
		/* may be the event is interface specific */
		ret = FUNC12(wmi, if_idx, id, datap, len);
		break;
	}

	FUNC23(skb);
	return ret;
}