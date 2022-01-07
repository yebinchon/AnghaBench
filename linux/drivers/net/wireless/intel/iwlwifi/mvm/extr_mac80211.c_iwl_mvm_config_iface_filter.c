
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_mvm {int mutex; } ;
struct TYPE_2__ {int assoc; } ;
struct ieee80211_vif {scalar_t__ type; int p2p; TYPE_1__ bss_conf; } ;
struct ieee80211_hw {int dummy; } ;


 unsigned int FIF_PROBE_REQ ;
 struct iwl_mvm* IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int iwl_mvm_mac_ctxt_changed (struct iwl_mvm*,struct ieee80211_vif*,int,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void iwl_mvm_config_iface_filter(struct ieee80211_hw *hw,
     struct ieee80211_vif *vif,
     unsigned int filter_flags,
     unsigned int changed_flags)
{
 struct iwl_mvm *mvm = IWL_MAC80211_GET_MVM(hw);


 if (!(changed_flags & FIF_PROBE_REQ))
  return;


 if (vif->type != NL80211_IFTYPE_STATION || !vif->bss_conf.assoc ||
     !vif->p2p)
  return;

 mutex_lock(&mvm->mutex);
 iwl_mvm_mac_ctxt_changed(mvm, vif, 0, ((void*)0));
 mutex_unlock(&mvm->mutex);
}
