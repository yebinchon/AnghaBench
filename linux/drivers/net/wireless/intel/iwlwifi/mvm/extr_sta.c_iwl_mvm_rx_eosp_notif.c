
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_mvm_eosp_notification {int sta_id; } ;
struct iwl_mvm {int * fw_id_to_mac_id; } ;
struct ieee80211_sta {int dummy; } ;


 int IS_ERR_OR_NULL (struct ieee80211_sta*) ;
 size_t IWL_MVM_STATION_COUNT ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int ieee80211_sta_eosp (struct ieee80211_sta*) ;
 size_t le32_to_cpu (int ) ;
 struct ieee80211_sta* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct iwl_rx_packet* rxb_addr (struct iwl_rx_cmd_buffer*) ;

void iwl_mvm_rx_eosp_notif(struct iwl_mvm *mvm,
      struct iwl_rx_cmd_buffer *rxb)
{
 struct iwl_rx_packet *pkt = rxb_addr(rxb);
 struct iwl_mvm_eosp_notification *notif = (void *)pkt->data;
 struct ieee80211_sta *sta;
 u32 sta_id = le32_to_cpu(notif->sta_id);

 if (WARN_ON_ONCE(sta_id >= IWL_MVM_STATION_COUNT))
  return;

 rcu_read_lock();
 sta = rcu_dereference(mvm->fw_id_to_mac_id[sta_id]);
 if (!IS_ERR_OR_NULL(sta))
  ieee80211_sta_eosp(sta);
 rcu_read_unlock();
}
