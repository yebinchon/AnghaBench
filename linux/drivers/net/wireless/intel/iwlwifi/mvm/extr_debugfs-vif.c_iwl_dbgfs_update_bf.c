
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_dbgfs_bf {int mask; int bf_energy_delta; int bf_roaming_energy_delta; int bf_roaming_state; int bf_temp_threshold; int bf_temp_fast_filter; int bf_temp_slow_filter; int bf_enable_beacon_filter; int bf_debug_flag; int bf_escape_timer; int ba_enable_beacon_abort; int ba_escape_timer; } ;
struct iwl_mvm_vif {struct iwl_dbgfs_bf dbgfs_bf; } ;
struct ieee80211_vif {int dummy; } ;
typedef enum iwl_dbgfs_bf_mask { ____Placeholder_iwl_dbgfs_bf_mask } iwl_dbgfs_bf_mask ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;

__attribute__((used)) static void iwl_dbgfs_update_bf(struct ieee80211_vif *vif,
    enum iwl_dbgfs_bf_mask param, int value)
{
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 struct iwl_dbgfs_bf *dbgfs_bf = &mvmvif->dbgfs_bf;

 dbgfs_bf->mask |= param;

 switch (param) {
 case 134:
  dbgfs_bf->bf_energy_delta = value;
  break;
 case 132:
  dbgfs_bf->bf_roaming_energy_delta = value;
  break;
 case 131:
  dbgfs_bf->bf_roaming_state = value;
  break;
 case 128:
  dbgfs_bf->bf_temp_threshold = value;
  break;
 case 130:
  dbgfs_bf->bf_temp_fast_filter = value;
  break;
 case 129:
  dbgfs_bf->bf_temp_slow_filter = value;
  break;
 case 135:
  dbgfs_bf->bf_enable_beacon_filter = value;
  break;
 case 136:
  dbgfs_bf->bf_debug_flag = value;
  break;
 case 133:
  dbgfs_bf->bf_escape_timer = value;
  break;
 case 138:
  dbgfs_bf->ba_enable_beacon_abort = value;
  break;
 case 137:
  dbgfs_bf->ba_escape_timer = value;
  break;
 }
}
