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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct wmi {int /*<<< orphan*/  parent_dev; } ;
struct ath6kl_vif {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_WMI ; 
 int EINVAL ; 
#define  WMI_ADDBA_REQ_EVENTID 146 
#define  WMI_BSSINFO_EVENTID 145 
#define  WMI_CAC_EVENTID 144 
#define  WMI_CANCEL_REMAIN_ON_CHNL_EVENTID 143 
#define  WMI_CONNECT_EVENTID 142 
#define  WMI_DELBA_REQ_EVENTID 141 
#define  WMI_DISCONNECT_EVENTID 140 
#define  WMI_DTIMEXPIRY_EVENTID 139 
#define  WMI_NEIGHBOR_REPORT_EVENTID 138 
#define  WMI_PSPOLL_EVENTID 137 
#define  WMI_REMAIN_ON_CHNL_EVENTID 136 
#define  WMI_REPORT_STATISTICS_EVENTID 135 
#define  WMI_RX_ACTION_EVENTID 134 
#define  WMI_RX_PROBE_REQ_EVENTID 133 
#define  WMI_SCAN_COMPLETE_EVENTID 132 
#define  WMI_SET_HOST_SLEEP_MODE_CMD_PROCESSED_EVENTID 131 
#define  WMI_TKIP_MICERR_EVENTID 130 
#define  WMI_TXE_NOTIFY_EVENTID 129 
#define  WMI_TX_STATUS_EVENTID 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 struct ath6kl_vif* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct wmi*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ath6kl_vif*) ; 
 int FUNC3 (struct wmi*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ath6kl_vif*) ; 
 int FUNC4 (struct wmi*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ath6kl_vif*) ; 
 int FUNC5 (struct wmi*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ath6kl_vif*) ; 
 int FUNC6 (struct wmi*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ath6kl_vif*) ; 
 int FUNC7 (struct wmi*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ath6kl_vif*) ; 
 int FUNC8 (struct wmi*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ath6kl_vif*) ; 
 int FUNC9 (struct wmi*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ath6kl_vif*) ; 
 int FUNC10 (struct wmi*,struct ath6kl_vif*) ; 
 int FUNC11 (struct wmi*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ath6kl_vif*) ; 
 int FUNC12 (struct wmi*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ath6kl_vif*) ; 
 int FUNC13 (struct wmi*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ath6kl_vif*) ; 
 int FUNC14 (struct wmi*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ath6kl_vif*) ; 
 int FUNC15 (struct wmi*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ath6kl_vif*) ; 
 int FUNC16 (struct wmi*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ath6kl_vif*) ; 
 int FUNC17 (struct wmi*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ath6kl_vif*) ; 
 int FUNC18 (struct wmi*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ath6kl_vif*) ; 
 int FUNC19 (struct wmi*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ath6kl_vif*) ; 
 int FUNC20 (struct wmi*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ath6kl_vif*) ; 

__attribute__((used)) static int FUNC21(struct wmi *wmi, u16 if_idx, u16 cmd_id,
					u8 *datap, u32 len)
{
	struct ath6kl_vif *vif;

	vif = FUNC1(wmi->parent_dev, if_idx);
	if (!vif) {
		FUNC0(ATH6KL_DBG_WMI,
			   "Wmi event for unavailable vif, vif_index:%d\n",
			    if_idx);
		return -EINVAL;
	}

	switch (cmd_id) {
	case WMI_CONNECT_EVENTID:
		FUNC0(ATH6KL_DBG_WMI, "WMI_CONNECT_EVENTID\n");
		return FUNC6(wmi, datap, len, vif);
	case WMI_DISCONNECT_EVENTID:
		FUNC0(ATH6KL_DBG_WMI, "WMI_DISCONNECT_EVENTID\n");
		return FUNC8(wmi, datap, len, vif);
	case WMI_TKIP_MICERR_EVENTID:
		FUNC0(ATH6KL_DBG_WMI, "WMI_TKIP_MICERR_EVENTID\n");
		return FUNC18(wmi, datap, len, vif);
	case WMI_BSSINFO_EVENTID:
		FUNC0(ATH6KL_DBG_WMI, "WMI_BSSINFO_EVENTID\n");
		return FUNC3(wmi, datap, len, vif);
	case WMI_NEIGHBOR_REPORT_EVENTID:
		FUNC0(ATH6KL_DBG_WMI, "WMI_NEIGHBOR_REPORT_EVENTID\n");
		return FUNC11(wmi, datap, len,
							   vif);
	case WMI_SCAN_COMPLETE_EVENTID:
		FUNC0(ATH6KL_DBG_WMI, "WMI_SCAN_COMPLETE_EVENTID\n");
		return FUNC16(wmi, datap, len, vif);
	case WMI_REPORT_STATISTICS_EVENTID:
		FUNC0(ATH6KL_DBG_WMI, "WMI_REPORT_STATISTICS_EVENTID\n");
		return FUNC17(wmi, datap, len, vif);
	case WMI_CAC_EVENTID:
		FUNC0(ATH6KL_DBG_WMI, "WMI_CAC_EVENTID\n");
		return FUNC4(wmi, datap, len, vif);
	case WMI_PSPOLL_EVENTID:
		FUNC0(ATH6KL_DBG_WMI, "WMI_PSPOLL_EVENTID\n");
		return FUNC12(wmi, datap, len, vif);
	case WMI_DTIMEXPIRY_EVENTID:
		FUNC0(ATH6KL_DBG_WMI, "WMI_DTIMEXPIRY_EVENTID\n");
		return FUNC9(wmi, datap, len, vif);
	case WMI_ADDBA_REQ_EVENTID:
		FUNC0(ATH6KL_DBG_WMI, "WMI_ADDBA_REQ_EVENTID\n");
		return FUNC2(wmi, datap, len, vif);
	case WMI_DELBA_REQ_EVENTID:
		FUNC0(ATH6KL_DBG_WMI, "WMI_DELBA_REQ_EVENTID\n");
		return FUNC7(wmi, datap, len, vif);
	case WMI_SET_HOST_SLEEP_MODE_CMD_PROCESSED_EVENTID:
		FUNC0(ATH6KL_DBG_WMI,
			   "WMI_SET_HOST_SLEEP_MODE_CMD_PROCESSED_EVENTID");
		return FUNC10(wmi, vif);
	case WMI_REMAIN_ON_CHNL_EVENTID:
		FUNC0(ATH6KL_DBG_WMI, "WMI_REMAIN_ON_CHNL_EVENTID\n");
		return FUNC13(wmi, datap, len, vif);
	case WMI_CANCEL_REMAIN_ON_CHNL_EVENTID:
		FUNC0(ATH6KL_DBG_WMI,
			   "WMI_CANCEL_REMAIN_ON_CHNL_EVENTID\n");
		return FUNC5(wmi, datap,
								 len, vif);
	case WMI_TX_STATUS_EVENTID:
		FUNC0(ATH6KL_DBG_WMI, "WMI_TX_STATUS_EVENTID\n");
		return FUNC19(wmi, datap, len, vif);
	case WMI_RX_PROBE_REQ_EVENTID:
		FUNC0(ATH6KL_DBG_WMI, "WMI_RX_PROBE_REQ_EVENTID\n");
		return FUNC15(wmi, datap, len, vif);
	case WMI_RX_ACTION_EVENTID:
		FUNC0(ATH6KL_DBG_WMI, "WMI_RX_ACTION_EVENTID\n");
		return FUNC14(wmi, datap, len, vif);
	case WMI_TXE_NOTIFY_EVENTID:
		FUNC0(ATH6KL_DBG_WMI, "WMI_TXE_NOTIFY_EVENTID\n");
		return FUNC20(wmi, datap, len, vif);
	default:
		FUNC0(ATH6KL_DBG_WMI, "unknown cmd id 0x%x\n", cmd_id);
		return -EINVAL;
	}

	return 0;
}