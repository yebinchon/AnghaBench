
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_mvm {int hw; } ;
struct iwl_mu_group_mgmt_notif {int dummy; } ;


 int IEEE80211_IFACE_ITER_NORMAL ;
 int ieee80211_iterate_active_interfaces_atomic (int ,int ,int ,struct iwl_mu_group_mgmt_notif*) ;
 int iwl_mvm_mu_mimo_iface_iterator ;
 struct iwl_rx_packet* rxb_addr (struct iwl_rx_cmd_buffer*) ;

void iwl_mvm_mu_mimo_grp_notif(struct iwl_mvm *mvm,
          struct iwl_rx_cmd_buffer *rxb)
{
 struct iwl_rx_packet *pkt = rxb_addr(rxb);
 struct iwl_mu_group_mgmt_notif *notif = (void *)pkt->data;

 ieee80211_iterate_active_interfaces_atomic(
   mvm->hw, IEEE80211_IFACE_ITER_NORMAL,
   iwl_mvm_mu_mimo_iface_iterator, notif);
}
