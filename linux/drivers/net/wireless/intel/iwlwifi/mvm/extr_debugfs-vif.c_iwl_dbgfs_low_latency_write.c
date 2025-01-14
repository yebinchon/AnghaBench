
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iwl_mvm_vif {struct iwl_mvm* mvm; } ;
struct iwl_mvm {int mutex; } ;
struct ieee80211_vif {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;


 int EINVAL ;
 int LOW_LATENCY_DEBUGFS ;
 int iwl_mvm_update_low_latency (struct iwl_mvm*,struct ieee80211_vif*,int,int ) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 int kstrtou8 (char*,int ,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t iwl_dbgfs_low_latency_write(struct ieee80211_vif *vif, char *buf,
        size_t count, loff_t *ppos)
{
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 struct iwl_mvm *mvm = mvmvif->mvm;
 u8 value;
 int ret;

 ret = kstrtou8(buf, 0, &value);
 if (ret)
  return ret;
 if (value > 1)
  return -EINVAL;

 mutex_lock(&mvm->mutex);
 iwl_mvm_update_low_latency(mvm, vif, value, LOW_LATENCY_DEBUGFS);
 mutex_unlock(&mvm->mutex);

 return count;
}
