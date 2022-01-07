
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_mvm {int dummy; } ;
struct ieee80211_vif {int dummy; } ;


 int _iwl_mvm_disable_beacon_filter (struct iwl_mvm*,struct ieee80211_vif*,int ) ;

int iwl_mvm_disable_beacon_filter(struct iwl_mvm *mvm,
      struct ieee80211_vif *vif,
      u32 flags)
{
 return _iwl_mvm_disable_beacon_filter(mvm, vif, flags);
}
