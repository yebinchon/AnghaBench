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
typedef  enum wmi_10_4_event_id { ____Placeholder_wmi_10_4_event_id } wmi_10_4_event_id ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_WMI ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  WMI_10_4_CHAN_INFO_EVENTID 154 
#define  WMI_10_4_DEBUG_FATAL_CONDITION_EVENTID 153 
#define  WMI_10_4_DEBUG_MESG_EVENTID 152 
#define  WMI_10_4_DEBUG_PRINT_EVENTID 151 
#define  WMI_10_4_DFS_STATUS_CHECK_EVENTID 150 
#define  WMI_10_4_ECHO_EVENTID 149 
#define  WMI_10_4_HOST_SWBA_EVENTID 148 
#define  WMI_10_4_MGMT_RX_EVENTID 147 
#define  WMI_10_4_PDEV_BSS_CHAN_INFO_EVENTID 146 
#define  WMI_10_4_PDEV_TEMPERATURE_EVENTID 145 
#define  WMI_10_4_PDEV_TPC_CONFIG_EVENTID 144 
#define  WMI_10_4_PDEV_TPC_TABLE_EVENTID 143 
#define  WMI_10_4_PEER_RATECODE_LIST_EVENTID 142 
#define  WMI_10_4_PEER_STA_KICKOUT_EVENTID 141 
#define  WMI_10_4_PEER_STA_PS_STATECHG_EVENTID 140 
#define  WMI_10_4_PHYERR_EVENTID 139 
#define  WMI_10_4_READY_EVENTID 138 
#define  WMI_10_4_ROAM_EVENTID 137 
#define  WMI_10_4_SCAN_EVENTID 136 
#define  WMI_10_4_SERVICE_READY_EVENTID 135 
#define  WMI_10_4_TBTTOFFSET_UPDATE_EVENTID 134 
#define  WMI_10_4_TDLS_PEER_EVENTID 133 
#define  WMI_10_4_UPDATE_STATS_EVENTID 132 
#define  WMI_10_4_VDEV_START_RESP_EVENTID 131 
#define  WMI_10_4_VDEV_STOPPED_EVENTID 130 
#define  WMI_10_4_WDS_PEER_EVENTID 129 
#define  WMI_10_4_WOW_WAKEUP_HOST_EVENTID 128 
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
 int /*<<< orphan*/  FUNC28 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC29 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC30 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC31 (struct ath10k*,int,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC32(struct ath10k *ar, struct sk_buff *skb)
{
	struct wmi_cmd_hdr *cmd_hdr;
	enum wmi_10_4_event_id id;
	bool consumed;

	cmd_hdr = (struct wmi_cmd_hdr *)skb->data;
	id = FUNC0(FUNC1(cmd_hdr->cmd_id), WMI_CMD_HDR_CMD_ID);

	if (!FUNC30(skb, sizeof(struct wmi_cmd_hdr)))
		goto out;

	FUNC31(ar, id, skb->data, skb->len);

	consumed = FUNC3(ar, id, skb);

	/* Ready event must be handled normally also in UTF mode so that we
	 * know the UTF firmware has booted, others we are just bypass WMI
	 * events to testmode.
	 */
	if (consumed && id != WMI_10_4_READY_EVENTID) {
		FUNC2(ar, ATH10K_DBG_WMI,
			   "wmi testmode consumed 0x%x\n", id);
		goto out;
	}

	switch (id) {
	case WMI_10_4_MGMT_RX_EVENTID:
		FUNC11(ar, skb);
		/* mgmt_rx() owns the skb now! */
		return;
	case WMI_10_4_ECHO_EVENTID:
		FUNC9(ar, skb);
		break;
	case WMI_10_4_DEBUG_MESG_EVENTID:
		FUNC6(ar, skb);
		FUNC28(ar);
		break;
	case WMI_10_4_SERVICE_READY_EVENTID:
		FUNC20(ar, skb);
		return;
	case WMI_10_4_SCAN_EVENTID:
		FUNC19(ar, skb);
		FUNC28(ar);
		break;
	case WMI_10_4_CHAN_INFO_EVENTID:
		FUNC5(ar, skb);
		break;
	case WMI_10_4_PHYERR_EVENTID:
		FUNC16(ar, skb);
		break;
	case WMI_10_4_READY_EVENTID:
		FUNC17(ar, skb);
		FUNC28(ar);
		break;
	case WMI_10_4_PEER_STA_KICKOUT_EVENTID:
		FUNC14(ar, skb);
		break;
	case WMI_10_4_ROAM_EVENTID:
		FUNC18(ar, skb);
		FUNC28(ar);
		break;
	case WMI_10_4_HOST_SWBA_EVENTID:
		FUNC10(ar, skb);
		break;
	case WMI_10_4_TBTTOFFSET_UPDATE_EVENTID:
		FUNC21(ar, skb);
		break;
	case WMI_10_4_DEBUG_PRINT_EVENTID:
		FUNC7(ar, skb);
		FUNC28(ar);
		break;
	case WMI_10_4_VDEV_START_RESP_EVENTID:
		FUNC25(ar, skb);
		FUNC28(ar);
		break;
	case WMI_10_4_VDEV_STOPPED_EVENTID:
		FUNC26(ar, skb);
		FUNC28(ar);
		break;
	case WMI_10_4_WOW_WAKEUP_HOST_EVENTID:
	case WMI_10_4_PEER_RATECODE_LIST_EVENTID:
	case WMI_10_4_WDS_PEER_EVENTID:
	case WMI_10_4_DEBUG_FATAL_CONDITION_EVENTID:
		FUNC2(ar, ATH10K_DBG_WMI,
			   "received event id %d not implemented\n", id);
		break;
	case WMI_10_4_UPDATE_STATS_EVENTID:
		FUNC24(ar, skb);
		break;
	case WMI_10_4_PDEV_TEMPERATURE_EVENTID:
		FUNC22(ar, skb);
		break;
	case WMI_10_4_PDEV_BSS_CHAN_INFO_EVENTID:
		FUNC12(ar, skb);
		break;
	case WMI_10_4_PDEV_TPC_CONFIG_EVENTID:
		FUNC13(ar, skb);
		break;
	case WMI_10_4_TDLS_PEER_EVENTID:
		FUNC27(ar, skb);
		break;
	case WMI_10_4_PDEV_TPC_TABLE_EVENTID:
		FUNC23(ar, skb);
		break;
	case WMI_10_4_DFS_STATUS_CHECK_EVENTID:
		FUNC8(ar, skb);
		break;
	case WMI_10_4_PEER_STA_PS_STATECHG_EVENTID:
		FUNC15(ar, skb);
		break;
	default:
		FUNC4(ar, "Unknown eventid: %d\n", id);
		break;
	}

out:
	FUNC29(skb);
}