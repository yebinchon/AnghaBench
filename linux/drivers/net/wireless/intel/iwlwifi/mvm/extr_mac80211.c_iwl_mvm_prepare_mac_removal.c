
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int roc_done_wk; } ;
struct ieee80211_vif {scalar_t__ type; } ;


 scalar_t__ NL80211_IFTYPE_P2P_DEVICE ;
 int flush_work (int *) ;

__attribute__((used)) static void iwl_mvm_prepare_mac_removal(struct iwl_mvm *mvm,
     struct ieee80211_vif *vif)
{
 if (vif->type == NL80211_IFTYPE_P2P_DEVICE) {





  flush_work(&mvm->roc_done_wk);
 }
}
