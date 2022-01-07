
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct wmi_cmd_hdr {int info1; int cmd_id; } ;
struct wmi {int dummy; } ;
struct sk_buff {int* data; int len; } ;


 int ATH6KL_DBG_WMI ;
 int ATH6KL_DBG_WMI_DUMP ;




 int WMI_CMD_HDR_IF_ID_MASK ;
 int ath6kl_dbg (int ,char*,...) ;
 int ath6kl_dbg_dump (int ,int *,char*,int*,int ) ;
 int ath6kl_wmi_aplist_event_rx (struct wmi*,int*,int ) ;
 int ath6kl_wmi_bitrate_reply_rx (struct wmi*,int*,int ) ;
 int ath6kl_wmi_ch_list_reply_rx (struct wmi*,int*,int ) ;
 int ath6kl_wmi_control_rx_xtnd (struct wmi*,struct sk_buff*) ;
 int ath6kl_wmi_error_event_rx (struct wmi*,int*,int ) ;
 int ath6kl_wmi_get_pmkid_list_event_rx (struct wmi*,int*,int ) ;
 int ath6kl_wmi_keepalive_reply_rx (struct wmi*,int*,int ) ;
 int ath6kl_wmi_p2p_capabilities_event_rx (int*,int ) ;
 int ath6kl_wmi_p2p_info_event_rx (int*,int ) ;
 int ath6kl_wmi_peer_node_event_rx (struct wmi*,int*,int ) ;
 int ath6kl_wmi_proc_events_vif (struct wmi*,int,int,int*,int ) ;
 int ath6kl_wmi_pstream_timeout_event_rx (struct wmi*,int*,int ) ;
 int ath6kl_wmi_ratemask_reply_rx (struct wmi*,int*,int ) ;
 int ath6kl_wmi_ready_event_rx (struct wmi*,int*,int ) ;
 int ath6kl_wmi_regdomain_event (struct wmi*,int*,int ) ;
 int ath6kl_wmi_roam_tbl_event_rx (struct wmi*,int*,int ) ;
 int ath6kl_wmi_rssi_threshold_event_rx (struct wmi*,int*,int ) ;
 int ath6kl_wmi_snr_threshold_event_rx (struct wmi*,int*,int ) ;
 int ath6kl_wmi_test_rx (struct wmi*,int*,int ) ;
 int ath6kl_wmi_tx_complete_event_rx (int*,int ) ;
 int ath6kl_wmi_tx_pwr_reply_rx (struct wmi*,int*,int ) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int le16_to_cpu (int ) ;
 int skb_pull (struct sk_buff*,int) ;

__attribute__((used)) static int ath6kl_wmi_proc_events(struct wmi *wmi, struct sk_buff *skb)
{
 struct wmi_cmd_hdr *cmd;
 int ret = 0;
 u32 len;
 u16 id;
 u8 if_idx;
 u8 *datap;

 cmd = (struct wmi_cmd_hdr *) skb->data;
 id = le16_to_cpu(cmd->cmd_id);
 if_idx = le16_to_cpu(cmd->info1) & WMI_CMD_HDR_IF_ID_MASK;

 skb_pull(skb, sizeof(struct wmi_cmd_hdr));
 datap = skb->data;
 len = skb->len;

 ath6kl_dbg(ATH6KL_DBG_WMI, "wmi rx id %d len %d\n", id, len);
 ath6kl_dbg_dump(ATH6KL_DBG_WMI_DUMP, ((void*)0), "wmi rx ",
   datap, len);

 switch (id) {
 case 152:
  ath6kl_dbg(ATH6KL_DBG_WMI, "WMI_GET_BITRATE_CMDID\n");
  ret = ath6kl_wmi_bitrate_reply_rx(wmi, datap, len);
  break;
 case 151:
  ath6kl_dbg(ATH6KL_DBG_WMI, "WMI_GET_CHANNEL_LIST_CMDID\n");
  ret = ath6kl_wmi_ch_list_reply_rx(wmi, datap, len);
  break;
 case 147:
  ath6kl_dbg(ATH6KL_DBG_WMI, "WMI_GET_TX_PWR_CMDID\n");
  ret = ath6kl_wmi_tx_pwr_reply_rx(wmi, datap, len);
  break;
 case 139:
  ath6kl_dbg(ATH6KL_DBG_WMI, "WMI_READY_EVENTID\n");
  ret = ath6kl_wmi_ready_event_rx(wmi, datap, len);
  break;
 case 141:
  ath6kl_dbg(ATH6KL_DBG_WMI, "WMI_PEER_NODE_EVENTID\n");
  ret = ath6kl_wmi_peer_node_event_rx(wmi, datap, len);
  break;
 case 138:
  ath6kl_dbg(ATH6KL_DBG_WMI, "WMI_REGDOMAIN_EVENTID\n");
  ath6kl_wmi_regdomain_event(wmi, datap, len);
  break;
 case 140:
  ath6kl_dbg(ATH6KL_DBG_WMI, "WMI_PSTREAM_TIMEOUT_EVENTID\n");
  ret = ath6kl_wmi_pstream_timeout_event_rx(wmi, datap, len);
  break;
 case 155:
  ath6kl_dbg(ATH6KL_DBG_WMI, "WMI_CMDERROR_EVENTID\n");
  ret = ath6kl_wmi_error_event_rx(wmi, datap, len);
  break;
 case 133:
  ath6kl_dbg(ATH6KL_DBG_WMI, "WMI_RSSI_THRESHOLD_EVENTID\n");
  ret = ath6kl_wmi_rssi_threshold_event_rx(wmi, datap, len);
  break;
 case 154:
  ath6kl_dbg(ATH6KL_DBG_WMI, "WMI_ERROR_REPORT_EVENTID\n");
  break;
 case 144:
  ath6kl_dbg(ATH6KL_DBG_WMI, "WMI_OPT_RX_FRAME_EVENTID\n");

  break;
 case 134:
  ath6kl_dbg(ATH6KL_DBG_WMI, "WMI_REPORT_ROAM_TBL_EVENTID\n");
  ret = ath6kl_wmi_roam_tbl_event_rx(wmi, datap, len);
  break;
 case 153:
  ath6kl_dbg(ATH6KL_DBG_WMI, "WMI_EXTENSION_EVENTID\n");
  ret = ath6kl_wmi_control_rx_xtnd(wmi, skb);
  break;
 case 156:
  ath6kl_dbg(ATH6KL_DBG_WMI, "WMI_CHANNEL_CHANGE_EVENTID\n");
  break;
 case 135:
  ath6kl_dbg(ATH6KL_DBG_WMI, "WMI_REPORT_ROAM_DATA_EVENTID\n");
  break;
 case 130:
  ath6kl_dbg(ATH6KL_DBG_WMI, "WMI_TEST_EVENTID\n");
  ret = ath6kl_wmi_test_rx(wmi, datap, len);
  break;
 case 150:
  ath6kl_dbg(ATH6KL_DBG_WMI, "WMI_GET_FIXRATES_CMDID\n");
  ret = ath6kl_wmi_ratemask_reply_rx(wmi, datap, len);
  break;
 case 128:
  ath6kl_dbg(ATH6KL_DBG_WMI, "WMI_TX_RETRY_ERR_EVENTID\n");
  break;
 case 131:
  ath6kl_dbg(ATH6KL_DBG_WMI, "WMI_SNR_THRESHOLD_EVENTID\n");
  ret = ath6kl_wmi_snr_threshold_event_rx(wmi, datap, len);
  break;
 case 145:
  ath6kl_dbg(ATH6KL_DBG_WMI, "WMI_LQ_THRESHOLD_EVENTID\n");
  break;
 case 157:
  ath6kl_dbg(ATH6KL_DBG_WMI, "WMI_APLIST_EVENTID\n");
  ret = ath6kl_wmi_aplist_event_rx(wmi, datap, len);
  break;
 case 149:
  ath6kl_dbg(ATH6KL_DBG_WMI, "WMI_GET_KEEPALIVE_CMDID\n");
  ret = ath6kl_wmi_keepalive_reply_rx(wmi, datap, len);
  break;
 case 146:
  ath6kl_dbg(ATH6KL_DBG_WMI, "WMI_GET_WOW_LIST_EVENTID\n");
  break;
 case 148:
  ath6kl_dbg(ATH6KL_DBG_WMI, "WMI_GET_PMKID_LIST_EVENTID\n");
  ret = ath6kl_wmi_get_pmkid_list_event_rx(wmi, datap, len);
  break;
 case 132:
  ath6kl_dbg(ATH6KL_DBG_WMI, "WMI_SET_PARAMS_REPLY_EVENTID\n");
  break;
 case 158:
  ath6kl_dbg(ATH6KL_DBG_WMI, "WMI_ADDBA_RESP_EVENTID\n");
  break;
 case 137:
  ath6kl_dbg(ATH6KL_DBG_WMI,
      "WMI_REPORT_BTCOEX_CONFIG_EVENTID\n");
  break;
 case 136:
  ath6kl_dbg(ATH6KL_DBG_WMI,
      "WMI_REPORT_BTCOEX_STATS_EVENTID\n");
  break;
 case 129:
  ath6kl_dbg(ATH6KL_DBG_WMI, "WMI_TX_COMPLETE_EVENTID\n");
  ret = ath6kl_wmi_tx_complete_event_rx(datap, len);
  break;
 case 143:
  ath6kl_dbg(ATH6KL_DBG_WMI, "WMI_P2P_CAPABILITIES_EVENTID\n");
  ret = ath6kl_wmi_p2p_capabilities_event_rx(datap, len);
  break;
 case 142:
  ath6kl_dbg(ATH6KL_DBG_WMI, "WMI_P2P_INFO_EVENTID\n");
  ret = ath6kl_wmi_p2p_info_event_rx(datap, len);
  break;
 default:

  ret = ath6kl_wmi_proc_events_vif(wmi, if_idx, id, datap, len);
  break;
 }

 dev_kfree_skb(skb);
 return ret;
}
