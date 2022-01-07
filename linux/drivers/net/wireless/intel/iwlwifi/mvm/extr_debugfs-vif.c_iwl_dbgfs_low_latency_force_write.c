
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct iwl_mvm_vif {struct iwl_mvm* mvm; } ;
struct iwl_mvm {int mutex; } ;
struct ieee80211_vif {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;


 int EINVAL ;
 int LOW_LATENCY_DEBUGFS_FORCE ;
 int LOW_LATENCY_DEBUGFS_FORCE_ENABLE ;
 scalar_t__ LOW_LATENCY_FORCE_ON ;
 scalar_t__ LOW_LATENCY_FORCE_UNSET ;
 scalar_t__ NUM_LOW_LATENCY_FORCE ;
 int iwl_mvm_update_low_latency (struct iwl_mvm*,struct ieee80211_vif*,int,int ) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 int kstrtou8 (char*,int ,scalar_t__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t
iwl_dbgfs_low_latency_force_write(struct ieee80211_vif *vif, char *buf,
      size_t count, loff_t *ppos)
{
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 struct iwl_mvm *mvm = mvmvif->mvm;
 u8 value;
 int ret;

 ret = kstrtou8(buf, 0, &value);
 if (ret)
  return ret;

 if (value > NUM_LOW_LATENCY_FORCE)
  return -EINVAL;

 mutex_lock(&mvm->mutex);
 if (value == LOW_LATENCY_FORCE_UNSET) {
  iwl_mvm_update_low_latency(mvm, vif, 0,
        LOW_LATENCY_DEBUGFS_FORCE);
  iwl_mvm_update_low_latency(mvm, vif, 0,
        LOW_LATENCY_DEBUGFS_FORCE_ENABLE);
 } else {
  iwl_mvm_update_low_latency(mvm, vif,
        value == LOW_LATENCY_FORCE_ON,
        LOW_LATENCY_DEBUGFS_FORCE);
  iwl_mvm_update_low_latency(mvm, vif, 1,
        LOW_LATENCY_DEBUGFS_FORCE_ENABLE);
 }
 mutex_unlock(&mvm->mutex);
 return count;
}
