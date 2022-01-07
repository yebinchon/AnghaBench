
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sta_id; } ;
struct iwl_mvm {TYPE_1__ snif_sta; int snif_queue; int mutex; } ;
struct ieee80211_vif {int dummy; } ;


 int IWL_MAX_TID_COUNT ;
 int IWL_WARN (struct iwl_mvm*,char*) ;
 int iwl_mvm_disable_txq (struct iwl_mvm*,int *,int ,int ,int ) ;
 int iwl_mvm_rm_sta_common (struct iwl_mvm*,int ) ;
 int lockdep_assert_held (int *) ;

int iwl_mvm_rm_snif_sta(struct iwl_mvm *mvm, struct ieee80211_vif *vif)
{
 int ret;

 lockdep_assert_held(&mvm->mutex);

 iwl_mvm_disable_txq(mvm, ((void*)0), mvm->snif_queue, IWL_MAX_TID_COUNT, 0);
 ret = iwl_mvm_rm_sta_common(mvm, mvm->snif_sta.sta_id);
 if (ret)
  IWL_WARN(mvm, "Failed sending remove station\n");

 return ret;
}
