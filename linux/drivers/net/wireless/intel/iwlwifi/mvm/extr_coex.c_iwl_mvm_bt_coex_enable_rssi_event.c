
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int last_bt_coex_event; int bt_coex_min_thold; int bt_coex_max_thold; } ;
struct iwl_mvm_vif {TYPE_1__ bf_data; } ;
struct iwl_mvm {int dummy; } ;
struct ieee80211_vif {int dummy; } ;


 int IWL_MVM_BT_COEX_DIS_RED_TXP_THRESH ;
 int IWL_MVM_BT_COEX_EN_RED_TXP_THRESH ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;

__attribute__((used)) static inline
void iwl_mvm_bt_coex_enable_rssi_event(struct iwl_mvm *mvm,
           struct ieee80211_vif *vif,
           bool enable, int rssi)
{
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);

 mvmvif->bf_data.last_bt_coex_event = rssi;
 mvmvif->bf_data.bt_coex_max_thold =
  enable ? -IWL_MVM_BT_COEX_EN_RED_TXP_THRESH : 0;
 mvmvif->bf_data.bt_coex_min_thold =
  enable ? -IWL_MVM_BT_COEX_DIS_RED_TXP_THRESH : 0;
}
