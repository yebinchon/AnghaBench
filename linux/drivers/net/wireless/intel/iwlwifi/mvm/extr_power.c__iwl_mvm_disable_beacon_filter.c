
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int bf_enabled; } ;
struct iwl_mvm_vif {TYPE_1__ bf_data; } ;
struct iwl_mvm {int dummy; } ;
struct iwl_beacon_filter_cmd {int dummy; } ;
struct ieee80211_vif {scalar_t__ type; scalar_t__ p2p; } ;


 scalar_t__ NL80211_IFTYPE_STATION ;
 int iwl_mvm_beacon_filter_send_cmd (struct iwl_mvm*,struct iwl_beacon_filter_cmd*,int ) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;

__attribute__((used)) static int _iwl_mvm_disable_beacon_filter(struct iwl_mvm *mvm,
       struct ieee80211_vif *vif,
       u32 flags)
{
 struct iwl_beacon_filter_cmd cmd = {};
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 int ret;

 if (vif->type != NL80211_IFTYPE_STATION || vif->p2p)
  return 0;

 ret = iwl_mvm_beacon_filter_send_cmd(mvm, &cmd, flags);

 if (!ret)
  mvmvif->bf_data.bf_enabled = 0;

 return ret;
}
