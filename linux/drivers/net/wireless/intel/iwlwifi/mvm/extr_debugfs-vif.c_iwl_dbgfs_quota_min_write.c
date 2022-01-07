
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct iwl_mvm_vif {int dbgfs_quota_min; struct iwl_mvm* mvm; } ;
struct iwl_mvm {int mutex; int hw; } ;
struct ieee80211_vif {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;


 int EINVAL ;
 int IEEE80211_IFACE_ITER_NORMAL ;
 int ieee80211_iterate_interfaces (int ,int ,int ,int*) ;
 int iwl_dbgfs_quota_check ;
 int iwl_mvm_update_quotas (struct iwl_mvm*,int,int *) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 int kstrtou16 (char*,int ,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t iwl_dbgfs_quota_min_write(struct ieee80211_vif *vif, char *buf,
      size_t count, loff_t *ppos)
{
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 struct iwl_mvm *mvm = mvmvif->mvm;
 u16 value;
 int ret;

 ret = kstrtou16(buf, 0, &value);
 if (ret)
  return ret;

 if (value > 95)
  return -EINVAL;

 mutex_lock(&mvm->mutex);

 mvmvif->dbgfs_quota_min = 0;
 ieee80211_iterate_interfaces(mvm->hw, IEEE80211_IFACE_ITER_NORMAL,
         iwl_dbgfs_quota_check, &ret);
 if (ret == 0) {
  mvmvif->dbgfs_quota_min = value;
  iwl_mvm_update_quotas(mvm, 0, ((void*)0));
 }
 mutex_unlock(&mvm->mutex);

 return ret ?: count;
}
