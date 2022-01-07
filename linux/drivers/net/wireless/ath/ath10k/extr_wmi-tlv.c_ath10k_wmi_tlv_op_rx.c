
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_cmd_hdr {int cmd_id; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct ath10k {int dummy; } ;
typedef enum wmi_tlv_event_id { ____Placeholder_wmi_tlv_event_id } wmi_tlv_event_id ;


 int ATH10K_DBG_WMI ;
 int MS (int ,int ) ;
 int WMI_CMD_HDR_CMD_ID ;
 int __le32_to_cpu (int ) ;
 int ath10k_dbg (struct ath10k*,int ,char*,int) ;
 int ath10k_tm_event_wmi (struct ath10k*,int,struct sk_buff*) ;
 int ath10k_wmi_event_addba_complete (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_event_chan_info (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_event_dcs_interference (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_event_debug_mesg (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_event_debug_print (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_event_delba_complete (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_event_echo (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_event_gtk_offload_status (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_event_gtk_rekey_fail (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_event_host_swba (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_event_mgmt_rx (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_event_mgmt_tx_bundle_compl (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_event_mgmt_tx_compl (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_event_pdev_ftm_intg (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_event_pdev_qvit (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_event_pdev_tpc_config (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_event_peer_sta_kickout (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_event_phyerr (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_event_profile_match (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_event_ready (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_event_roam (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_event_rtt_error_report (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_event_rtt_measurement_report (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_event_scan (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_event_service_available (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_event_service_ready (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_event_tbttoffset_update (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_event_tdls_peer (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_event_tsf_measurement_report (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_event_update_stats (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_event_vdev_install_key_complete (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_event_vdev_start_resp (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_event_vdev_stopped (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_event_wlan_profile_data (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_event_wow_wakeup_host (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_tlv_event_bcn_tx_status (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_tlv_event_diag (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_tlv_event_diag_data (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_tlv_event_p2p_noa (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_tlv_event_peer_delete_resp (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_tlv_event_temperature (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_tlv_event_tx_pause (struct ath10k*,struct sk_buff*) ;
 int ath10k_wmi_tlv_event_vdev_delete_resp (struct ath10k*,struct sk_buff*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int * skb_pull (struct sk_buff*,int) ;
 int trace_ath10k_wmi_event (struct ath10k*,int,scalar_t__,int ) ;

__attribute__((used)) static void ath10k_wmi_tlv_op_rx(struct ath10k *ar, struct sk_buff *skb)
{
 struct wmi_cmd_hdr *cmd_hdr;
 enum wmi_tlv_event_id id;
 bool consumed;

 cmd_hdr = (struct wmi_cmd_hdr *)skb->data;
 id = MS(__le32_to_cpu(cmd_hdr->cmd_id), WMI_CMD_HDR_CMD_ID);

 if (skb_pull(skb, sizeof(struct wmi_cmd_hdr)) == ((void*)0))
  goto out;

 trace_ath10k_wmi_event(ar, id, skb->data, skb->len);

 consumed = ath10k_tm_event_wmi(ar, id, skb);





 if (consumed && id != 147) {
  ath10k_dbg(ar, ATH10K_DBG_WMI,
      "wmi tlv testmode consumed 0x%x\n", id);
  goto out;
 }

 switch (id) {
 case 160:
  ath10k_wmi_event_mgmt_rx(ar, skb);

  return;
 case 143:
  ath10k_wmi_event_scan(ar, skb);
  break;
 case 170:
  ath10k_wmi_event_chan_info(ar, skb);
  break;
 case 164:
  ath10k_wmi_event_echo(ar, skb);
  break;
 case 168:
  ath10k_wmi_event_debug_mesg(ar, skb);
  break;
 case 134:
  ath10k_wmi_event_update_stats(ar, skb);
  break;
 case 131:
  ath10k_wmi_event_vdev_start_resp(ar, skb);
  break;
 case 130:
  ath10k_wmi_event_vdev_stopped(ar, skb);
  break;
 case 133:
  ath10k_wmi_tlv_event_vdev_delete_resp(ar, skb);
  break;
 case 150:
  ath10k_wmi_event_peer_sta_kickout(ar, skb);
  break;
 case 161:
  ath10k_wmi_event_host_swba(ar, skb);
  break;
 case 140:
  ath10k_wmi_event_tbttoffset_update(ar, skb);
  break;
 case 149:
  ath10k_wmi_event_phyerr(ar, skb);
  break;
 case 146:
  ath10k_wmi_event_roam(ar, skb);
  break;
 case 148:
  ath10k_wmi_event_profile_match(ar, skb);
  break;
 case 167:
  ath10k_wmi_event_debug_print(ar, skb);
  break;
 case 154:
  ath10k_wmi_event_pdev_qvit(ar, skb);
  break;
 case 129:
  ath10k_wmi_event_wlan_profile_data(ar, skb);
  break;
 case 144:
  ath10k_wmi_event_rtt_measurement_report(ar, skb);
  break;
 case 138:
  ath10k_wmi_event_tsf_measurement_report(ar, skb);
  break;
 case 145:
  ath10k_wmi_event_rtt_error_report(ar, skb);
  break;
 case 128:
  ath10k_wmi_event_wow_wakeup_host(ar, skb);
  break;
 case 169:
  ath10k_wmi_event_dcs_interference(ar, skb);
  break;
 case 152:
  ath10k_wmi_event_pdev_tpc_config(ar, skb);
  break;
 case 155:
  ath10k_wmi_event_pdev_ftm_intg(ar, skb);
  break;
 case 163:
  ath10k_wmi_event_gtk_offload_status(ar, skb);
  break;
 case 162:
  ath10k_wmi_event_gtk_rekey_fail(ar, skb);
  break;
 case 136:
  ath10k_wmi_event_delba_complete(ar, skb);
  break;
 case 137:
  ath10k_wmi_event_addba_complete(ar, skb);
  break;
 case 132:
  ath10k_wmi_event_vdev_install_key_complete(ar, skb);
  break;
 case 141:
  ath10k_wmi_event_service_ready(ar, skb);
  return;
 case 147:
  ath10k_wmi_event_ready(ar, skb);
  break;
 case 142:
  ath10k_wmi_event_service_available(ar, skb);
  break;
 case 157:
  ath10k_wmi_tlv_event_bcn_tx_status(ar, skb);
  break;
 case 166:
  ath10k_wmi_tlv_event_diag_data(ar, skb);
  break;
 case 165:
  ath10k_wmi_tlv_event_diag(ar, skb);
  break;
 case 156:
  ath10k_wmi_tlv_event_p2p_noa(ar, skb);
  break;
 case 135:
  ath10k_wmi_tlv_event_tx_pause(ar, skb);
  break;
 case 153:
  ath10k_wmi_tlv_event_temperature(ar, skb);
  break;
 case 139:
  ath10k_wmi_event_tdls_peer(ar, skb);
  break;
 case 151:
  ath10k_wmi_tlv_event_peer_delete_resp(ar, skb);
  break;
 case 158:
  ath10k_wmi_event_mgmt_tx_compl(ar, skb);
  break;
 case 159:
  ath10k_wmi_event_mgmt_tx_bundle_compl(ar, skb);
  break;
 default:
  ath10k_dbg(ar, ATH10K_DBG_WMI, "Unknown eventid: %d\n", id);
  break;
 }

out:
 dev_kfree_skb(skb);
}
