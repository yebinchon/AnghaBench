
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sta_id; } ;
struct iwl_mvm_vif {TYPE_1__ bcast_sta; } ;
struct iwl_mvm {int mutex; } ;
struct ieee80211_vif {int dummy; } ;


 int IWL_WARN (struct iwl_mvm*,char*) ;
 int iwl_mvm_free_bcast_sta_queues (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_rm_sta_common (struct iwl_mvm*,int ) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 int lockdep_assert_held (int *) ;

int iwl_mvm_send_rm_bcast_sta(struct iwl_mvm *mvm, struct ieee80211_vif *vif)
{
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 int ret;

 lockdep_assert_held(&mvm->mutex);

 iwl_mvm_free_bcast_sta_queues(mvm, vif);

 ret = iwl_mvm_rm_sta_common(mvm, mvmvif->bcast_sta.sta_id);
 if (ret)
  IWL_WARN(mvm, "Failed sending remove station\n");
 return ret;
}
