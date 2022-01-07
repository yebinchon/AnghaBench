
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm_vif {int uapsd_misbehaving_bssid; struct iwl_mvm* mvm; } ;
struct iwl_mvm {int mutex; } ;
struct ieee80211_vif {int dummy; } ;
typedef size_t ssize_t ;
typedef int loff_t ;


 size_t EINVAL ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 int mac_pton (char*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t iwl_dbgfs_uapsd_misbehaving_write(struct ieee80211_vif *vif,
       char *buf, size_t count,
       loff_t *ppos)
{
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 struct iwl_mvm *mvm = mvmvif->mvm;
 bool ret;

 mutex_lock(&mvm->mutex);
 ret = mac_pton(buf, mvmvif->uapsd_misbehaving_bssid);
 mutex_unlock(&mvm->mutex);

 return ret ? count : -EINVAL;
}
