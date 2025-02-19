
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iwl_mvm_vif {scalar_t__ dbgfs_quota_min; } ;
struct ieee80211_vif {int dummy; } ;


 int EINVAL ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;

__attribute__((used)) static void iwl_dbgfs_quota_check(void *data, u8 *mac,
      struct ieee80211_vif *vif)
{
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 int *ret = data;

 if (mvmvif->dbgfs_quota_min)
  *ret = -EINVAL;
}
