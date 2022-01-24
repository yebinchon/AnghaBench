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
struct wmi_cmd_hdr {int /*<<< orphan*/  cmd_id; } ;
struct sk_buff {int /*<<< orphan*/  len; scalar_t__ data; } ;
struct ath10k {int dummy; } ;
typedef  enum wmi_event_id { ____Placeholder_wmi_event_id } wmi_event_id ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  WMI_CHAN_INFO_EVENTID 159 
 int /*<<< orphan*/  WMI_CMD_HDR_CMD_ID ; 
#define  WMI_DCS_INTERFERENCE_EVENTID 158 
#define  WMI_DEBUG_MESG_EVENTID 157 
#define  WMI_DEBUG_PRINT_EVENTID 156 
#define  WMI_ECHO_EVENTID 155 
#define  WMI_GTK_OFFLOAD_STATUS_EVENTID 154 
#define  WMI_GTK_REKEY_FAIL_EVENTID 153 
#define  WMI_HOST_SWBA_EVENTID 152 
#define  WMI_MGMT_RX_EVENTID 151 
#define  WMI_PDEV_FTM_INTG_EVENTID 150 
#define  WMI_PDEV_QVIT_EVENTID 149 
#define  WMI_PDEV_TPC_CONFIG_EVENTID 148 
#define  WMI_PEER_STA_KICKOUT_EVENTID 147 
#define  WMI_PHYERR_EVENTID 146 
#define  WMI_PROFILE_MATCH 145 
#define  WMI_READY_EVENTID 144 
#define  WMI_ROAM_EVENTID 143 
#define  WMI_RTT_ERROR_REPORT_EVENTID 142 
#define  WMI_RTT_MEASUREMENT_REPORT_EVENTID 141 
#define  WMI_SCAN_EVENTID 140 
#define  WMI_SERVICE_AVAILABLE_EVENTID 139 
#define  WMI_SERVICE_READY_EVENTID 138 
#define  WMI_TBTTOFFSET_UPDATE_EVENTID 137 
#define  WMI_TSF_MEASUREMENT_REPORT_EVENTID 136 
#define  WMI_TX_ADDBA_COMPLETE_EVENTID 135 
#define  WMI_TX_DELBA_COMPLETE_EVENTID 134 
#define  WMI_UPDATE_STATS_EVENTID 133 
#define  WMI_VDEV_INSTALL_KEY_COMPLETE_EVENTID 132 
#define  WMI_VDEV_START_RESP_EVENTID 131 
#define  WMI_VDEV_STOPPED_EVENTID 130 
#define  WMI_WLAN_PROFILE_DATA_EVENTID 129 
#define  WMI_WOW_WAKEUP_HOST_EVENTID 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath10k*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath10k*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath10k*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct ath10k*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct ath10k*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct ath10k*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct ath10k*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct ath10k*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct ath10k*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (struct ath10k*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (struct ath10k*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct ath10k*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (struct ath10k*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (struct ath10k*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC19 (struct ath10k*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC20 (struct ath10k*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC21 (struct ath10k*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC22 (struct ath10k*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC23 (struct ath10k*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC24 (struct ath10k*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC25 (struct ath10k*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC26 (struct ath10k*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC27 (struct ath10k*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC28 (struct ath10k*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC29 (struct ath10k*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC30 (struct ath10k*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC31 (struct ath10k*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC32 (struct ath10k*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC33 (struct ath10k*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC34 (struct ath10k*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC35 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC36 (struct sk_buff*) ; 
 int /*<<< orphan*/ * FUNC37 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC38 (struct ath10k*,int,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC39(struct ath10k *ar, struct sk_buff *skb)
{
	struct wmi_cmd_hdr *cmd_hdr;
	enum wmi_event_id id;

	cmd_hdr = (struct wmi_cmd_hdr *)skb->data;
	id = FUNC0(FUNC1(cmd_hdr->cmd_id), WMI_CMD_HDR_CMD_ID);

	if (FUNC37(skb, sizeof(struct wmi_cmd_hdr)) == NULL)
		goto out;

	FUNC38(ar, id, skb->data, skb->len);

	switch (id) {
	case WMI_MGMT_RX_EVENTID:
		FUNC13(ar, skb);
		/* mgmt_rx() owns the skb now! */
		return;
	case WMI_SCAN_EVENTID:
		FUNC24(ar, skb);
		FUNC35(ar);
		break;
	case WMI_CHAN_INFO_EVENTID:
		FUNC4(ar, skb);
		break;
	case WMI_ECHO_EVENTID:
		FUNC9(ar, skb);
		break;
	case WMI_DEBUG_MESG_EVENTID:
		FUNC6(ar, skb);
		FUNC35(ar);
		break;
	case WMI_UPDATE_STATS_EVENTID:
		FUNC29(ar, skb);
		break;
	case WMI_VDEV_START_RESP_EVENTID:
		FUNC31(ar, skb);
		FUNC35(ar);
		break;
	case WMI_VDEV_STOPPED_EVENTID:
		FUNC32(ar, skb);
		FUNC35(ar);
		break;
	case WMI_PEER_STA_KICKOUT_EVENTID:
		FUNC17(ar, skb);
		break;
	case WMI_HOST_SWBA_EVENTID:
		FUNC12(ar, skb);
		break;
	case WMI_TBTTOFFSET_UPDATE_EVENTID:
		FUNC27(ar, skb);
		break;
	case WMI_PHYERR_EVENTID:
		FUNC18(ar, skb);
		break;
	case WMI_ROAM_EVENTID:
		FUNC21(ar, skb);
		FUNC35(ar);
		break;
	case WMI_PROFILE_MATCH:
		FUNC19(ar, skb);
		break;
	case WMI_DEBUG_PRINT_EVENTID:
		FUNC7(ar, skb);
		FUNC35(ar);
		break;
	case WMI_PDEV_QVIT_EVENTID:
		FUNC15(ar, skb);
		break;
	case WMI_WLAN_PROFILE_DATA_EVENTID:
		FUNC33(ar, skb);
		break;
	case WMI_RTT_MEASUREMENT_REPORT_EVENTID:
		FUNC23(ar, skb);
		break;
	case WMI_TSF_MEASUREMENT_REPORT_EVENTID:
		FUNC28(ar, skb);
		break;
	case WMI_RTT_ERROR_REPORT_EVENTID:
		FUNC22(ar, skb);
		break;
	case WMI_WOW_WAKEUP_HOST_EVENTID:
		FUNC34(ar, skb);
		break;
	case WMI_DCS_INTERFERENCE_EVENTID:
		FUNC5(ar, skb);
		break;
	case WMI_PDEV_TPC_CONFIG_EVENTID:
		FUNC16(ar, skb);
		break;
	case WMI_PDEV_FTM_INTG_EVENTID:
		FUNC14(ar, skb);
		break;
	case WMI_GTK_OFFLOAD_STATUS_EVENTID:
		FUNC10(ar, skb);
		break;
	case WMI_GTK_REKEY_FAIL_EVENTID:
		FUNC11(ar, skb);
		break;
	case WMI_TX_DELBA_COMPLETE_EVENTID:
		FUNC8(ar, skb);
		break;
	case WMI_TX_ADDBA_COMPLETE_EVENTID:
		FUNC3(ar, skb);
		break;
	case WMI_VDEV_INSTALL_KEY_COMPLETE_EVENTID:
		FUNC30(ar, skb);
		break;
	case WMI_SERVICE_READY_EVENTID:
		FUNC26(ar, skb);
		return;
	case WMI_READY_EVENTID:
		FUNC20(ar, skb);
		FUNC35(ar);
		break;
	case WMI_SERVICE_AVAILABLE_EVENTID:
		FUNC25(ar, skb);
		break;
	default:
		FUNC2(ar, "Unknown eventid: %d\n", id);
		break;
	}

out:
	FUNC36(skb);
}