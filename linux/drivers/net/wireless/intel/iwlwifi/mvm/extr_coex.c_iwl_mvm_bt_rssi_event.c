
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct iwl_mvm_vif {scalar_t__ ap_sta_id; } ;
struct TYPE_4__ {int bt_activity_grading; } ;
struct iwl_mvm {scalar_t__ bt_force_ant_mode; TYPE_3__* cfg; TYPE_1__ last_bt_notif; int mutex; } ;
struct TYPE_5__ {int bssid; } ;
struct ieee80211_vif {TYPE_2__ bss_conf; } ;
typedef enum ieee80211_rssi_event_data { ____Placeholder_ieee80211_rssi_event_data } ieee80211_rssi_event_data ;
struct TYPE_6__ {scalar_t__ bt_shared_single_ant; } ;


 scalar_t__ BT_COEX_LOOSE_LUT ;
 scalar_t__ BT_FORCE_ANT_DIS ;
 scalar_t__ BT_OFF ;
 int IWL_DEBUG_COEX (struct iwl_mvm*,char*,int ,char*) ;
 int IWL_ERR (struct iwl_mvm*,char*) ;
 scalar_t__ IWL_MVM_INVALID_STA ;
 int RSSI_EVENT_HIGH ;
 int RSSI_EVENT_LOW ;
 scalar_t__ iwl_get_coex_type (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_bt_coex_reduced_txp (struct iwl_mvm*,scalar_t__,int) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 scalar_t__ le32_to_cpu (int ) ;
 int lockdep_assert_held (int *) ;
 scalar_t__ unlikely (int) ;

void iwl_mvm_bt_rssi_event(struct iwl_mvm *mvm, struct ieee80211_vif *vif,
      enum ieee80211_rssi_event_data rssi_event)
{
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 int ret;

 lockdep_assert_held(&mvm->mutex);


 if (unlikely(mvm->bt_force_ant_mode != BT_FORCE_ANT_DIS))
  return;





 if (mvmvif->ap_sta_id == IWL_MVM_INVALID_STA)
  return;


 if (le32_to_cpu(mvm->last_bt_notif.bt_activity_grading) == BT_OFF)
  return;

 IWL_DEBUG_COEX(mvm, "RSSI for %pM is now %s\n", vif->bss_conf.bssid,
         rssi_event == RSSI_EVENT_HIGH ? "HIGH" : "LOW");





 if (rssi_event == RSSI_EVENT_LOW || mvm->cfg->bt_shared_single_ant ||
     iwl_get_coex_type(mvm, vif) == BT_COEX_LOOSE_LUT)
  ret = iwl_mvm_bt_coex_reduced_txp(mvm, mvmvif->ap_sta_id,
        0);
 else
  ret = iwl_mvm_bt_coex_reduced_txp(mvm, mvmvif->ap_sta_id, 1);

 if (ret)
  IWL_ERR(mvm, "couldn't send BT_CONFIG HCMD upon RSSI event\n");
}
