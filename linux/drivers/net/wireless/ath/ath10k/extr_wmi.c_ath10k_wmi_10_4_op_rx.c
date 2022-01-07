
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_cmd_hdr {int cmd_id; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct ath10k {int dummy; } ;
typedef enum wmi_10_4_event_id { ____Placeholder_wmi_10_4_event_id } wmi_10_4_event_id ;


 int ATH10K_DBG_WMI ;
 int MS (int ,int ) ;
 int WMI_CMD_HDR_CMD_ID ;
 int __le32_to_cpu (int ) ;
 int ath10k_dbg (struct ath10k*,int ,char*,int) ;
 int ath10k_tm_event_wmi (struct ath10k*,int,struct sk_buff*) ;
 int ath10k_warn (struct ath10k*,char*,int) ;
 int ath10k_wmi_event_chan_info (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_event_debug_mesg (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_event_debug_print (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_event_dfs_status_check (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_event_echo (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_event_host_swba (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_event_mgmt_rx (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_event_pdev_bss_chan_info (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_event_pdev_tpc_config (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_event_peer_sta_kickout (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_event_peer_sta_ps_state_chg (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_event_phyerr (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_event_ready (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_event_roam (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_event_scan (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_event_service_ready (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_event_tbttoffset_update (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_event_temperature (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_event_tpc_final_table (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_event_update_stats (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_event_vdev_start_resp (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_event_vdev_stopped (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_handle_tdls_peer_event (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_queue_set_coverage_class_work (struct ath10k*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int skb_pull (struct sk_buff*,int) ;
 int trace_ath10k_wmi_event (struct ath10k*,int,scalar_t__,int ) ;

__attribute__((used)) static void ath10k_wmi_10_4_op_rx(struct ath10k *ar, struct sk_buff *skb)
{
 struct wmi_cmd_hdr *cmd_hdr;
 enum wmi_10_4_event_id id;
 bool consumed;

 cmd_hdr = (struct wmi_cmd_hdr *)skb->data;
 id = MS(__le32_to_cpu(cmd_hdr->cmd_id), WMI_CMD_HDR_CMD_ID);

 if (!skb_pull(skb, sizeof(struct wmi_cmd_hdr)))
  goto out;

 trace_ath10k_wmi_event(ar, id, skb->data, skb->len);

 consumed = ath10k_tm_event_wmi(ar, id, skb);





 if (consumed && id != 138) {
  ath10k_dbg(ar, ATH10K_DBG_WMI,
      "wmi testmode consumed 0x%x\n", id);
  goto out;
 }

 switch (id) {
 case 147:
  ath10k_wmi_event_mgmt_rx(ar, skb);

  return;
 case 149:
  ath10k_wmi_event_echo(ar, skb);
  break;
 case 152:
  ath10k_wmi_event_debug_mesg(ar, skb);
  ath10k_wmi_queue_set_coverage_class_work(ar);
  break;
 case 135:
  ath10k_wmi_event_service_ready(ar, skb);
  return;
 case 136:
  ath10k_wmi_event_scan(ar, skb);
  ath10k_wmi_queue_set_coverage_class_work(ar);
  break;
 case 154:
  ath10k_wmi_event_chan_info(ar, skb);
  break;
 case 139:
  ath10k_wmi_event_phyerr(ar, skb);
  break;
 case 138:
  ath10k_wmi_event_ready(ar, skb);
  ath10k_wmi_queue_set_coverage_class_work(ar);
  break;
 case 141:
  ath10k_wmi_event_peer_sta_kickout(ar, skb);
  break;
 case 137:
  ath10k_wmi_event_roam(ar, skb);
  ath10k_wmi_queue_set_coverage_class_work(ar);
  break;
 case 148:
  ath10k_wmi_event_host_swba(ar, skb);
  break;
 case 134:
  ath10k_wmi_event_tbttoffset_update(ar, skb);
  break;
 case 151:
  ath10k_wmi_event_debug_print(ar, skb);
  ath10k_wmi_queue_set_coverage_class_work(ar);
  break;
 case 131:
  ath10k_wmi_event_vdev_start_resp(ar, skb);
  ath10k_wmi_queue_set_coverage_class_work(ar);
  break;
 case 130:
  ath10k_wmi_event_vdev_stopped(ar, skb);
  ath10k_wmi_queue_set_coverage_class_work(ar);
  break;
 case 128:
 case 142:
 case 129:
 case 153:
  ath10k_dbg(ar, ATH10K_DBG_WMI,
      "received event id %d not implemented\n", id);
  break;
 case 132:
  ath10k_wmi_event_update_stats(ar, skb);
  break;
 case 145:
  ath10k_wmi_event_temperature(ar, skb);
  break;
 case 146:
  ath10k_wmi_event_pdev_bss_chan_info(ar, skb);
  break;
 case 144:
  ath10k_wmi_event_pdev_tpc_config(ar, skb);
  break;
 case 133:
  ath10k_wmi_handle_tdls_peer_event(ar, skb);
  break;
 case 143:
  ath10k_wmi_event_tpc_final_table(ar, skb);
  break;
 case 150:
  ath10k_wmi_event_dfs_status_check(ar, skb);
  break;
 case 140:
  ath10k_wmi_event_peer_sta_ps_state_chg(ar, skb);
  break;
 default:
  ath10k_warn(ar, "Unknown eventid: %d\n", id);
  break;
 }

out:
 dev_kfree_skb(skb);
}
