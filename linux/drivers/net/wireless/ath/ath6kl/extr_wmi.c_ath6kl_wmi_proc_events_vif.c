
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct wmi {int parent_dev; } ;
struct ath6kl_vif {int dummy; } ;


 int ATH6KL_DBG_WMI ;
 int EINVAL ;
 int ath6kl_dbg (int ,char*,...) ;
 struct ath6kl_vif* ath6kl_get_vif_by_index (int ,int) ;
 int ath6kl_wmi_addba_req_event_rx (struct wmi*,int *,int ,struct ath6kl_vif*) ;
 int ath6kl_wmi_bssinfo_event_rx (struct wmi*,int *,int ,struct ath6kl_vif*) ;
 int ath6kl_wmi_cac_event_rx (struct wmi*,int *,int ,struct ath6kl_vif*) ;
 int ath6kl_wmi_cancel_remain_on_chnl_event_rx (struct wmi*,int *,int ,struct ath6kl_vif*) ;
 int ath6kl_wmi_connect_event_rx (struct wmi*,int *,int ,struct ath6kl_vif*) ;
 int ath6kl_wmi_delba_req_event_rx (struct wmi*,int *,int ,struct ath6kl_vif*) ;
 int ath6kl_wmi_disconnect_event_rx (struct wmi*,int *,int ,struct ath6kl_vif*) ;
 int ath6kl_wmi_dtimexpiry_event_rx (struct wmi*,int *,int ,struct ath6kl_vif*) ;
 int ath6kl_wmi_host_sleep_mode_cmd_prcd_evt_rx (struct wmi*,struct ath6kl_vif*) ;
 int ath6kl_wmi_neighbor_report_event_rx (struct wmi*,int *,int ,struct ath6kl_vif*) ;
 int ath6kl_wmi_pspoll_event_rx (struct wmi*,int *,int ,struct ath6kl_vif*) ;
 int ath6kl_wmi_remain_on_chnl_event_rx (struct wmi*,int *,int ,struct ath6kl_vif*) ;
 int ath6kl_wmi_rx_action_event_rx (struct wmi*,int *,int ,struct ath6kl_vif*) ;
 int ath6kl_wmi_rx_probe_req_event_rx (struct wmi*,int *,int ,struct ath6kl_vif*) ;
 int ath6kl_wmi_scan_complete_rx (struct wmi*,int *,int ,struct ath6kl_vif*) ;
 int ath6kl_wmi_stats_event_rx (struct wmi*,int *,int ,struct ath6kl_vif*) ;
 int ath6kl_wmi_tkip_micerr_event_rx (struct wmi*,int *,int ,struct ath6kl_vif*) ;
 int ath6kl_wmi_tx_status_event_rx (struct wmi*,int *,int ,struct ath6kl_vif*) ;
 int ath6kl_wmi_txe_notify_event_rx (struct wmi*,int *,int ,struct ath6kl_vif*) ;

__attribute__((used)) static int ath6kl_wmi_proc_events_vif(struct wmi *wmi, u16 if_idx, u16 cmd_id,
     u8 *datap, u32 len)
{
 struct ath6kl_vif *vif;

 vif = ath6kl_get_vif_by_index(wmi->parent_dev, if_idx);
 if (!vif) {
  ath6kl_dbg(ATH6KL_DBG_WMI,
      "Wmi event for unavailable vif, vif_index:%d\n",
       if_idx);
  return -EINVAL;
 }

 switch (cmd_id) {
 case 142:
  ath6kl_dbg(ATH6KL_DBG_WMI, "WMI_CONNECT_EVENTID\n");
  return ath6kl_wmi_connect_event_rx(wmi, datap, len, vif);
 case 140:
  ath6kl_dbg(ATH6KL_DBG_WMI, "WMI_DISCONNECT_EVENTID\n");
  return ath6kl_wmi_disconnect_event_rx(wmi, datap, len, vif);
 case 130:
  ath6kl_dbg(ATH6KL_DBG_WMI, "WMI_TKIP_MICERR_EVENTID\n");
  return ath6kl_wmi_tkip_micerr_event_rx(wmi, datap, len, vif);
 case 145:
  ath6kl_dbg(ATH6KL_DBG_WMI, "WMI_BSSINFO_EVENTID\n");
  return ath6kl_wmi_bssinfo_event_rx(wmi, datap, len, vif);
 case 138:
  ath6kl_dbg(ATH6KL_DBG_WMI, "WMI_NEIGHBOR_REPORT_EVENTID\n");
  return ath6kl_wmi_neighbor_report_event_rx(wmi, datap, len,
          vif);
 case 132:
  ath6kl_dbg(ATH6KL_DBG_WMI, "WMI_SCAN_COMPLETE_EVENTID\n");
  return ath6kl_wmi_scan_complete_rx(wmi, datap, len, vif);
 case 135:
  ath6kl_dbg(ATH6KL_DBG_WMI, "WMI_REPORT_STATISTICS_EVENTID\n");
  return ath6kl_wmi_stats_event_rx(wmi, datap, len, vif);
 case 144:
  ath6kl_dbg(ATH6KL_DBG_WMI, "WMI_CAC_EVENTID\n");
  return ath6kl_wmi_cac_event_rx(wmi, datap, len, vif);
 case 137:
  ath6kl_dbg(ATH6KL_DBG_WMI, "WMI_PSPOLL_EVENTID\n");
  return ath6kl_wmi_pspoll_event_rx(wmi, datap, len, vif);
 case 139:
  ath6kl_dbg(ATH6KL_DBG_WMI, "WMI_DTIMEXPIRY_EVENTID\n");
  return ath6kl_wmi_dtimexpiry_event_rx(wmi, datap, len, vif);
 case 146:
  ath6kl_dbg(ATH6KL_DBG_WMI, "WMI_ADDBA_REQ_EVENTID\n");
  return ath6kl_wmi_addba_req_event_rx(wmi, datap, len, vif);
 case 141:
  ath6kl_dbg(ATH6KL_DBG_WMI, "WMI_DELBA_REQ_EVENTID\n");
  return ath6kl_wmi_delba_req_event_rx(wmi, datap, len, vif);
 case 131:
  ath6kl_dbg(ATH6KL_DBG_WMI,
      "WMI_SET_HOST_SLEEP_MODE_CMD_PROCESSED_EVENTID");
  return ath6kl_wmi_host_sleep_mode_cmd_prcd_evt_rx(wmi, vif);
 case 136:
  ath6kl_dbg(ATH6KL_DBG_WMI, "WMI_REMAIN_ON_CHNL_EVENTID\n");
  return ath6kl_wmi_remain_on_chnl_event_rx(wmi, datap, len, vif);
 case 143:
  ath6kl_dbg(ATH6KL_DBG_WMI,
      "WMI_CANCEL_REMAIN_ON_CHNL_EVENTID\n");
  return ath6kl_wmi_cancel_remain_on_chnl_event_rx(wmi, datap,
         len, vif);
 case 128:
  ath6kl_dbg(ATH6KL_DBG_WMI, "WMI_TX_STATUS_EVENTID\n");
  return ath6kl_wmi_tx_status_event_rx(wmi, datap, len, vif);
 case 133:
  ath6kl_dbg(ATH6KL_DBG_WMI, "WMI_RX_PROBE_REQ_EVENTID\n");
  return ath6kl_wmi_rx_probe_req_event_rx(wmi, datap, len, vif);
 case 134:
  ath6kl_dbg(ATH6KL_DBG_WMI, "WMI_RX_ACTION_EVENTID\n");
  return ath6kl_wmi_rx_action_event_rx(wmi, datap, len, vif);
 case 129:
  ath6kl_dbg(ATH6KL_DBG_WMI, "WMI_TXE_NOTIFY_EVENTID\n");
  return ath6kl_wmi_txe_notify_event_rx(wmi, datap, len, vif);
 default:
  ath6kl_dbg(ATH6KL_DBG_WMI, "unknown cmd id 0x%x\n", cmd_id);
  return -EINVAL;
 }

 return 0;
}
