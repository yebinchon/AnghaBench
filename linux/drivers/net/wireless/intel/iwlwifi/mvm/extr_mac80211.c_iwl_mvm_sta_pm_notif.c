
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_mvm_sta {int sleeping; TYPE_1__* vif; } ;
struct iwl_mvm_pm_state_notification {int type; size_t sta_id; } ;
struct iwl_mvm {int hw; int * fw_id_to_mac_id; } ;
struct ieee80211_sta {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 size_t ARRAY_SIZE (int *) ;
 int IEEE80211_NUM_TIDS ;
 int IS_ERR_OR_NULL (struct ieee80211_sta*) ;




 scalar_t__ NL80211_IFTYPE_AP ;
 int STA_NOTIFY_AWAKE ;
 int STA_NOTIFY_SLEEP ;
 scalar_t__ WARN_ON (int) ;
 int __iwl_mvm_mac_sta_notify (int ,int ,struct ieee80211_sta*) ;
 int ieee80211_sta_ps_transition (struct ieee80211_sta*,int) ;
 int ieee80211_sta_pspoll (struct ieee80211_sta*) ;
 int ieee80211_sta_uapsd_trigger (struct ieee80211_sta*,int ) ;
 struct iwl_mvm_sta* iwl_mvm_sta_from_mac80211 (struct ieee80211_sta*) ;
 struct ieee80211_sta* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct iwl_rx_packet* rxb_addr (struct iwl_rx_cmd_buffer*) ;

void iwl_mvm_sta_pm_notif(struct iwl_mvm *mvm, struct iwl_rx_cmd_buffer *rxb)
{
 struct iwl_rx_packet *pkt = rxb_addr(rxb);
 struct iwl_mvm_pm_state_notification *notif = (void *)pkt->data;
 struct ieee80211_sta *sta;
 struct iwl_mvm_sta *mvmsta;
 bool sleeping = (notif->type != 130);

 if (WARN_ON(notif->sta_id >= ARRAY_SIZE(mvm->fw_id_to_mac_id)))
  return;

 rcu_read_lock();
 sta = rcu_dereference(mvm->fw_id_to_mac_id[notif->sta_id]);
 if (WARN_ON(IS_ERR_OR_NULL(sta))) {
  rcu_read_unlock();
  return;
 }

 mvmsta = iwl_mvm_sta_from_mac80211(sta);

 if (!mvmsta->vif ||
     mvmsta->vif->type != NL80211_IFTYPE_AP) {
  rcu_read_unlock();
  return;
 }

 if (mvmsta->sleeping != sleeping) {
  mvmsta->sleeping = sleeping;
  __iwl_mvm_mac_sta_notify(mvm->hw,
   sleeping ? STA_NOTIFY_SLEEP : STA_NOTIFY_AWAKE,
   sta);
  ieee80211_sta_ps_transition(sta, sleeping);
 }

 if (sleeping) {
  switch (notif->type) {
  case 130:
  case 131:
   break;
  case 128:
   ieee80211_sta_uapsd_trigger(sta, IEEE80211_NUM_TIDS);
   break;
  case 129:
   ieee80211_sta_pspoll(sta);
   break;
  default:
   break;
  }
 }

 rcu_read_unlock();
}
