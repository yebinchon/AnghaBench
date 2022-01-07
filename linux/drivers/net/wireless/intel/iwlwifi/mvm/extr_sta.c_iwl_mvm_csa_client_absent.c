
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm_vif {int ap_sta_id; } ;
struct iwl_mvm_sta {int dummy; } ;
struct iwl_mvm {int dummy; } ;
struct ieee80211_vif {int dummy; } ;


 int WARN_ON (int) ;
 struct iwl_mvm_sta* iwl_mvm_sta_from_staid_rcu (struct iwl_mvm*,int ) ;
 int iwl_mvm_sta_modify_disable_tx (struct iwl_mvm*,struct iwl_mvm_sta*,int) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

void iwl_mvm_csa_client_absent(struct iwl_mvm *mvm, struct ieee80211_vif *vif)
{
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 struct iwl_mvm_sta *mvmsta;

 rcu_read_lock();

 mvmsta = iwl_mvm_sta_from_staid_rcu(mvm, mvmvif->ap_sta_id);

 if (!WARN_ON(!mvmsta))
  iwl_mvm_sta_modify_disable_tx(mvm, mvmsta, 1);

 rcu_read_unlock();
}
