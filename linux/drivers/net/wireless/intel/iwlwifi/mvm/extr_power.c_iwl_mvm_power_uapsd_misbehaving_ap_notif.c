
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iwl_uapsd_misbehaving_ap_notif {int sta_id; } ;
struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_mvm {int hw; } ;


 int IEEE80211_IFACE_ITER_NORMAL ;
 int ieee80211_iterate_active_interfaces_atomic (int ,int ,int ,int *) ;
 int iwl_mvm_power_uapsd_misbehav_ap_iterator ;
 int le32_to_cpu (int ) ;
 struct iwl_rx_packet* rxb_addr (struct iwl_rx_cmd_buffer*) ;

void iwl_mvm_power_uapsd_misbehaving_ap_notif(struct iwl_mvm *mvm,
           struct iwl_rx_cmd_buffer *rxb)
{
 struct iwl_rx_packet *pkt = rxb_addr(rxb);
 struct iwl_uapsd_misbehaving_ap_notif *notif = (void *)pkt->data;
 u8 ap_sta_id = le32_to_cpu(notif->sta_id);

 ieee80211_iterate_active_interfaces_atomic(
  mvm->hw, IEEE80211_IFACE_ITER_NORMAL,
  iwl_mvm_power_uapsd_misbehav_ap_iterator, &ap_sta_id);
}
