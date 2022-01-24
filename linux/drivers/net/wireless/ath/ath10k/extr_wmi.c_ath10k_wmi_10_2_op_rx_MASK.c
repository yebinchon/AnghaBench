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
typedef  enum wmi_10_2_event_id { ____Placeholder_wmi_10_2_event_id } wmi_10_2_event_id ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_WMI ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  WMI_10_2_CHAN_INFO_EVENTID 165 
#define  WMI_10_2_DCS_INTERFERENCE_EVENTID 164 
#define  WMI_10_2_DEBUG_MESG_EVENTID 163 
#define  WMI_10_2_DEBUG_PRINT_EVENTID 162 
#define  WMI_10_2_ECHO_EVENTID 161 
#define  WMI_10_2_GENERIC_BUFFER_EVENTID 160 
#define  WMI_10_2_GPIO_INPUT_EVENTID 159 
#define  WMI_10_2_HOST_SWBA_EVENTID 158 
#define  WMI_10_2_INST_RSSI_STATS_EVENTID 157 
#define  WMI_10_2_MCAST_BUF_RELEASE_EVENTID 156 
#define  WMI_10_2_MCAST_LIST_AGEOUT_EVENTID 155 
#define  WMI_10_2_MGMT_RX_EVENTID 154 
#define  WMI_10_2_PDEV_BSS_CHAN_INFO_EVENTID 153 
#define  WMI_10_2_PDEV_QVIT_EVENTID 152 
#define  WMI_10_2_PDEV_TEMPERATURE_EVENTID 151 
#define  WMI_10_2_PDEV_TPC_CONFIG_EVENTID 150 
#define  WMI_10_2_PEER_RATECODE_LIST_EVENTID 149 
#define  WMI_10_2_PEER_STA_KICKOUT_EVENTID 148 
#define  WMI_10_2_PEER_STA_PS_STATECHG_EVENTID 147 
#define  WMI_10_2_PHYERR_EVENTID 146 
#define  WMI_10_2_PROFILE_MATCH 145 
#define  WMI_10_2_READY_EVENTID 144 
#define  WMI_10_2_ROAM_EVENTID 143 
#define  WMI_10_2_RTT_ERROR_REPORT_EVENTID 142 
#define  WMI_10_2_RTT_KEEPALIVE_EVENTID 141 
#define  WMI_10_2_RTT_MEASUREMENT_REPORT_EVENTID 140 
#define  WMI_10_2_SCAN_EVENTID 139 
#define  WMI_10_2_SERVICE_READY_EVENTID 138 
#define  WMI_10_2_TBTTOFFSET_UPDATE_EVENTID 137 
#define  WMI_10_2_TSF_MEASUREMENT_REPORT_EVENTID 136 
#define  WMI_10_2_UPDATE_STATS_EVENTID 135 
#define  WMI_10_2_VDEV_RESUME_REQ_EVENTID 134 
#define  WMI_10_2_VDEV_STANDBY_REQ_EVENTID 133 
#define  WMI_10_2_VDEV_START_RESP_EVENTID 132 
#define  WMI_10_2_VDEV_STOPPED_EVENTID 131 
#define  WMI_10_2_WDS_PEER_EVENTID 130 
#define  WMI_10_2_WLAN_PROFILE_DATA_EVENTID 129 
#define  WMI_10_2_WOW_WAKEUP_HOST_EVENTID 128 
 int /*<<< orphan*/  WMI_CMD_HDR_CMD_ID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (struct ath10k*,int,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*,char*,int) ; 
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
 int /*<<< orphan*/  FUNC36 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC37 (struct sk_buff*) ; 
 int /*<<< orphan*/ * FUNC38 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC39 (struct ath10k*,int,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC40(struct ath10k *ar, struct sk_buff *skb)
{
	struct wmi_cmd_hdr *cmd_hdr;
	enum wmi_10_2_event_id id;
	bool consumed;

	cmd_hdr = (struct wmi_cmd_hdr *)skb->data;
	id = FUNC0(FUNC1(cmd_hdr->cmd_id), WMI_CMD_HDR_CMD_ID);

	if (FUNC38(skb, sizeof(struct wmi_cmd_hdr)) == NULL)
		goto out;

	FUNC39(ar, id, skb->data, skb->len);

	consumed = FUNC3(ar, id, skb);

	/* Ready event must be handled normally also in UTF mode so that we
	 * know the UTF firmware has booted, others we are just bypass WMI
	 * events to testmode.
	 */
	if (consumed && id != WMI_10_2_READY_EVENTID) {
		FUNC2(ar, ATH10K_DBG_WMI,
			   "wmi testmode consumed 0x%x\n", id);
		goto out;
	}

	switch (id) {
	case WMI_10_2_MGMT_RX_EVENTID:
		FUNC12(ar, skb);
		/* mgmt_rx() owns the skb now! */
		return;
	case WMI_10_2_SCAN_EVENTID:
		FUNC24(ar, skb);
		FUNC36(ar);
		break;
	case WMI_10_2_CHAN_INFO_EVENTID:
		FUNC5(ar, skb);
		break;
	case WMI_10_2_ECHO_EVENTID:
		FUNC9(ar, skb);
		break;
	case WMI_10_2_DEBUG_MESG_EVENTID:
		FUNC7(ar, skb);
		FUNC36(ar);
		break;
	case WMI_10_2_UPDATE_STATS_EVENTID:
		FUNC29(ar, skb);
		break;
	case WMI_10_2_VDEV_START_RESP_EVENTID:
		FUNC32(ar, skb);
		FUNC36(ar);
		break;
	case WMI_10_2_VDEV_STOPPED_EVENTID:
		FUNC33(ar, skb);
		FUNC36(ar);
		break;
	case WMI_10_2_PEER_STA_KICKOUT_EVENTID:
		FUNC16(ar, skb);
		break;
	case WMI_10_2_HOST_SWBA_EVENTID:
		FUNC10(ar, skb);
		break;
	case WMI_10_2_TBTTOFFSET_UPDATE_EVENTID:
		FUNC26(ar, skb);
		break;
	case WMI_10_2_PHYERR_EVENTID:
		FUNC18(ar, skb);
		break;
	case WMI_10_2_ROAM_EVENTID:
		FUNC21(ar, skb);
		FUNC36(ar);
		break;
	case WMI_10_2_PROFILE_MATCH:
		FUNC19(ar, skb);
		break;
	case WMI_10_2_DEBUG_PRINT_EVENTID:
		FUNC8(ar, skb);
		FUNC36(ar);
		break;
	case WMI_10_2_PDEV_QVIT_EVENTID:
		FUNC14(ar, skb);
		break;
	case WMI_10_2_WLAN_PROFILE_DATA_EVENTID:
		FUNC34(ar, skb);
		break;
	case WMI_10_2_RTT_MEASUREMENT_REPORT_EVENTID:
		FUNC23(ar, skb);
		break;
	case WMI_10_2_TSF_MEASUREMENT_REPORT_EVENTID:
		FUNC28(ar, skb);
		break;
	case WMI_10_2_RTT_ERROR_REPORT_EVENTID:
		FUNC22(ar, skb);
		break;
	case WMI_10_2_WOW_WAKEUP_HOST_EVENTID:
		FUNC35(ar, skb);
		break;
	case WMI_10_2_DCS_INTERFERENCE_EVENTID:
		FUNC6(ar, skb);
		break;
	case WMI_10_2_PDEV_TPC_CONFIG_EVENTID:
		FUNC15(ar, skb);
		break;
	case WMI_10_2_INST_RSSI_STATS_EVENTID:
		FUNC11(ar, skb);
		break;
	case WMI_10_2_VDEV_STANDBY_REQ_EVENTID:
		FUNC31(ar, skb);
		FUNC36(ar);
		break;
	case WMI_10_2_VDEV_RESUME_REQ_EVENTID:
		FUNC30(ar, skb);
		FUNC36(ar);
		break;
	case WMI_10_2_SERVICE_READY_EVENTID:
		FUNC25(ar, skb);
		return;
	case WMI_10_2_READY_EVENTID:
		FUNC20(ar, skb);
		FUNC36(ar);
		break;
	case WMI_10_2_PDEV_TEMPERATURE_EVENTID:
		FUNC27(ar, skb);
		break;
	case WMI_10_2_PDEV_BSS_CHAN_INFO_EVENTID:
		FUNC13(ar, skb);
		break;
	case WMI_10_2_RTT_KEEPALIVE_EVENTID:
	case WMI_10_2_GPIO_INPUT_EVENTID:
	case WMI_10_2_PEER_RATECODE_LIST_EVENTID:
	case WMI_10_2_GENERIC_BUFFER_EVENTID:
	case WMI_10_2_MCAST_BUF_RELEASE_EVENTID:
	case WMI_10_2_MCAST_LIST_AGEOUT_EVENTID:
	case WMI_10_2_WDS_PEER_EVENTID:
		FUNC2(ar, ATH10K_DBG_WMI,
			   "received event id %d not implemented\n", id);
		break;
	case WMI_10_2_PEER_STA_PS_STATECHG_EVENTID:
		FUNC17(ar, skb);
		break;
	default:
		FUNC4(ar, "Unknown eventid: %d\n", id);
		break;
	}

out:
	FUNC37(skb);
}