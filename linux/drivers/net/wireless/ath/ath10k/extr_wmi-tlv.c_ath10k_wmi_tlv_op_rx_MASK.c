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
typedef  enum wmi_tlv_event_id { ____Placeholder_wmi_tlv_event_id } wmi_tlv_event_id ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_WMI ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WMI_CMD_HDR_CMD_ID ; 
#define  WMI_TLV_CHAN_INFO_EVENTID 170 
#define  WMI_TLV_DCS_INTERFERENCE_EVENTID 169 
#define  WMI_TLV_DEBUG_MESG_EVENTID 168 
#define  WMI_TLV_DEBUG_PRINT_EVENTID 167 
#define  WMI_TLV_DIAG_DATA_CONTAINER_EVENTID 166 
#define  WMI_TLV_DIAG_EVENTID 165 
#define  WMI_TLV_ECHO_EVENTID 164 
#define  WMI_TLV_GTK_OFFLOAD_STATUS_EVENTID 163 
#define  WMI_TLV_GTK_REKEY_FAIL_EVENTID 162 
#define  WMI_TLV_HOST_SWBA_EVENTID 161 
#define  WMI_TLV_MGMT_RX_EVENTID 160 
#define  WMI_TLV_MGMT_TX_BUNDLE_COMPLETION_EVENTID 159 
#define  WMI_TLV_MGMT_TX_COMPLETION_EVENTID 158 
#define  WMI_TLV_OFFLOAD_BCN_TX_STATUS_EVENTID 157 
#define  WMI_TLV_P2P_NOA_EVENTID 156 
#define  WMI_TLV_PDEV_FTM_INTG_EVENTID 155 
#define  WMI_TLV_PDEV_QVIT_EVENTID 154 
#define  WMI_TLV_PDEV_TEMPERATURE_EVENTID 153 
#define  WMI_TLV_PDEV_TPC_CONFIG_EVENTID 152 
#define  WMI_TLV_PEER_DELETE_RESP_EVENTID 151 
#define  WMI_TLV_PEER_STA_KICKOUT_EVENTID 150 
#define  WMI_TLV_PHYERR_EVENTID 149 
#define  WMI_TLV_PROFILE_MATCH 148 
#define  WMI_TLV_READY_EVENTID 147 
#define  WMI_TLV_ROAM_EVENTID 146 
#define  WMI_TLV_RTT_ERROR_REPORT_EVENTID 145 
#define  WMI_TLV_RTT_MEASUREMENT_REPORT_EVENTID 144 
#define  WMI_TLV_SCAN_EVENTID 143 
#define  WMI_TLV_SERVICE_AVAILABLE_EVENTID 142 
#define  WMI_TLV_SERVICE_READY_EVENTID 141 
#define  WMI_TLV_TBTTOFFSET_UPDATE_EVENTID 140 
#define  WMI_TLV_TDLS_PEER_EVENTID 139 
#define  WMI_TLV_TSF_MEASUREMENT_REPORT_EVENTID 138 
#define  WMI_TLV_TX_ADDBA_COMPLETE_EVENTID 137 
#define  WMI_TLV_TX_DELBA_COMPLETE_EVENTID 136 
#define  WMI_TLV_TX_PAUSE_EVENTID 135 
#define  WMI_TLV_UPDATE_STATS_EVENTID 134 
#define  WMI_TLV_VDEV_DELETE_RESP_EVENTID 133 
#define  WMI_TLV_VDEV_INSTALL_KEY_COMPLETE_EVENTID 132 
#define  WMI_TLV_VDEV_START_RESP_EVENTID 131 
#define  WMI_TLV_VDEV_STOPPED_EVENTID 130 
#define  WMI_TLV_WLAN_PROFILE_DATA_EVENTID 129 
#define  WMI_TLV_WOW_WAKEUP_HOST_EVENTID 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (struct ath10k*,int,struct sk_buff*) ; 
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
 int /*<<< orphan*/  FUNC35 (struct ath10k*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC36 (struct ath10k*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC37 (struct ath10k*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC38 (struct ath10k*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC39 (struct ath10k*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC40 (struct ath10k*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC41 (struct ath10k*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC42 (struct ath10k*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC43 (struct ath10k*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC44 (struct ath10k*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC45 (struct ath10k*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC46 (struct ath10k*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC47 (struct sk_buff*) ; 
 int /*<<< orphan*/ * FUNC48 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC49 (struct ath10k*,int,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC50(struct ath10k *ar, struct sk_buff *skb)
{
	struct wmi_cmd_hdr *cmd_hdr;
	enum wmi_tlv_event_id id;
	bool consumed;

	cmd_hdr = (struct wmi_cmd_hdr *)skb->data;
	id = FUNC0(FUNC1(cmd_hdr->cmd_id), WMI_CMD_HDR_CMD_ID);

	if (FUNC48(skb, sizeof(struct wmi_cmd_hdr)) == NULL)
		goto out;

	FUNC49(ar, id, skb->data, skb->len);

	consumed = FUNC3(ar, id, skb);

	/* Ready event must be handled normally also in UTF mode so that we
	 * know the UTF firmware has booted, others we are just bypass WMI
	 * events to testmode.
	 */
	if (consumed && id != WMI_TLV_READY_EVENTID) {
		FUNC2(ar, ATH10K_DBG_WMI,
			   "wmi tlv testmode consumed 0x%x\n", id);
		goto out;
	}

	switch (id) {
	case WMI_TLV_MGMT_RX_EVENTID:
		FUNC14(ar, skb);
		/* mgmt_rx() owns the skb now! */
		return;
	case WMI_TLV_SCAN_EVENTID:
		FUNC27(ar, skb);
		break;
	case WMI_TLV_CHAN_INFO_EVENTID:
		FUNC5(ar, skb);
		break;
	case WMI_TLV_ECHO_EVENTID:
		FUNC10(ar, skb);
		break;
	case WMI_TLV_DEBUG_MESG_EVENTID:
		FUNC7(ar, skb);
		break;
	case WMI_TLV_UPDATE_STATS_EVENTID:
		FUNC33(ar, skb);
		break;
	case WMI_TLV_VDEV_START_RESP_EVENTID:
		FUNC35(ar, skb);
		break;
	case WMI_TLV_VDEV_STOPPED_EVENTID:
		FUNC36(ar, skb);
		break;
	case WMI_TLV_VDEV_DELETE_RESP_EVENTID:
		FUNC46(ar, skb);
		break;
	case WMI_TLV_PEER_STA_KICKOUT_EVENTID:
		FUNC20(ar, skb);
		break;
	case WMI_TLV_HOST_SWBA_EVENTID:
		FUNC13(ar, skb);
		break;
	case WMI_TLV_TBTTOFFSET_UPDATE_EVENTID:
		FUNC30(ar, skb);
		break;
	case WMI_TLV_PHYERR_EVENTID:
		FUNC21(ar, skb);
		break;
	case WMI_TLV_ROAM_EVENTID:
		FUNC24(ar, skb);
		break;
	case WMI_TLV_PROFILE_MATCH:
		FUNC22(ar, skb);
		break;
	case WMI_TLV_DEBUG_PRINT_EVENTID:
		FUNC8(ar, skb);
		break;
	case WMI_TLV_PDEV_QVIT_EVENTID:
		FUNC18(ar, skb);
		break;
	case WMI_TLV_WLAN_PROFILE_DATA_EVENTID:
		FUNC37(ar, skb);
		break;
	case WMI_TLV_RTT_MEASUREMENT_REPORT_EVENTID:
		FUNC26(ar, skb);
		break;
	case WMI_TLV_TSF_MEASUREMENT_REPORT_EVENTID:
		FUNC32(ar, skb);
		break;
	case WMI_TLV_RTT_ERROR_REPORT_EVENTID:
		FUNC25(ar, skb);
		break;
	case WMI_TLV_WOW_WAKEUP_HOST_EVENTID:
		FUNC38(ar, skb);
		break;
	case WMI_TLV_DCS_INTERFERENCE_EVENTID:
		FUNC6(ar, skb);
		break;
	case WMI_TLV_PDEV_TPC_CONFIG_EVENTID:
		FUNC19(ar, skb);
		break;
	case WMI_TLV_PDEV_FTM_INTG_EVENTID:
		FUNC17(ar, skb);
		break;
	case WMI_TLV_GTK_OFFLOAD_STATUS_EVENTID:
		FUNC11(ar, skb);
		break;
	case WMI_TLV_GTK_REKEY_FAIL_EVENTID:
		FUNC12(ar, skb);
		break;
	case WMI_TLV_TX_DELBA_COMPLETE_EVENTID:
		FUNC9(ar, skb);
		break;
	case WMI_TLV_TX_ADDBA_COMPLETE_EVENTID:
		FUNC4(ar, skb);
		break;
	case WMI_TLV_VDEV_INSTALL_KEY_COMPLETE_EVENTID:
		FUNC34(ar, skb);
		break;
	case WMI_TLV_SERVICE_READY_EVENTID:
		FUNC29(ar, skb);
		return;
	case WMI_TLV_READY_EVENTID:
		FUNC23(ar, skb);
		break;
	case WMI_TLV_SERVICE_AVAILABLE_EVENTID:
		FUNC28(ar, skb);
		break;
	case WMI_TLV_OFFLOAD_BCN_TX_STATUS_EVENTID:
		FUNC39(ar, skb);
		break;
	case WMI_TLV_DIAG_DATA_CONTAINER_EVENTID:
		FUNC41(ar, skb);
		break;
	case WMI_TLV_DIAG_EVENTID:
		FUNC40(ar, skb);
		break;
	case WMI_TLV_P2P_NOA_EVENTID:
		FUNC42(ar, skb);
		break;
	case WMI_TLV_TX_PAUSE_EVENTID:
		FUNC45(ar, skb);
		break;
	case WMI_TLV_PDEV_TEMPERATURE_EVENTID:
		FUNC44(ar, skb);
		break;
	case WMI_TLV_TDLS_PEER_EVENTID:
		FUNC31(ar, skb);
		break;
	case WMI_TLV_PEER_DELETE_RESP_EVENTID:
		FUNC43(ar, skb);
		break;
	case WMI_TLV_MGMT_TX_COMPLETION_EVENTID:
		FUNC16(ar, skb);
		break;
	case WMI_TLV_MGMT_TX_BUNDLE_COMPLETION_EVENTID:
		FUNC15(ar, skb);
		break;
	default:
		FUNC2(ar, ATH10K_DBG_WMI, "Unknown eventid: %d\n", id);
		break;
	}

out:
	FUNC47(skb);
}