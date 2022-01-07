
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct iwl_mvm {int mutex; struct iwl_mcast_filter_cmd* mcast_filter_cmd; } ;
struct iwl_mcast_filter_cmd {int pass_all; scalar_t__ count; } ;
struct ieee80211_hw {int dummy; } ;


 unsigned int FIF_ALLMULTI ;
 struct iwl_mvm* IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;
 int iwl_mvm_recalc_multicast (struct iwl_mvm*) ;
 int kfree (struct iwl_mcast_filter_cmd*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void iwl_mvm_configure_filter(struct ieee80211_hw *hw,
         unsigned int changed_flags,
         unsigned int *total_flags,
         u64 multicast)
{
 struct iwl_mvm *mvm = IWL_MAC80211_GET_MVM(hw);
 struct iwl_mcast_filter_cmd *cmd = (void *)(unsigned long)multicast;

 mutex_lock(&mvm->mutex);


 kfree(mvm->mcast_filter_cmd);
 mvm->mcast_filter_cmd = cmd;

 if (!cmd)
  goto out;

 if (changed_flags & FIF_ALLMULTI)
  cmd->pass_all = !!(*total_flags & FIF_ALLMULTI);

 if (cmd->pass_all)
  cmd->count = 0;

 iwl_mvm_recalc_multicast(mvm);
out:
 mutex_unlock(&mvm->mutex);
 *total_flags = 0;
}
