
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {scalar_t__ bf_enabled; } ;
struct iwl_mvm_vif {TYPE_1__ bf_data; } ;
struct iwl_mvm {int dummy; } ;
struct TYPE_4__ {int beacon_int; } ;
struct ieee80211_vif {TYPE_2__ bss_conf; } ;
struct ieee80211_channel_switch {int count; scalar_t__ block_tx; scalar_t__ device_timestamp; } ;


 int IWL_MVM_CHANNEL_SWITCH_TIME_CLIENT ;
 int iwl_mvm_csa_client_absent (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_disable_beacon_filter (struct iwl_mvm*,struct ieee80211_vif*,int ) ;
 int iwl_mvm_schedule_csa_period (struct iwl_mvm*,struct ieee80211_vif*,int,scalar_t__) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;

__attribute__((used)) static int iwl_mvm_old_pre_chan_sw_sta(struct iwl_mvm *mvm,
           struct ieee80211_vif *vif,
           struct ieee80211_channel_switch *chsw)
{
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 u32 apply_time;







 if (chsw->count <= 1)
  apply_time = 0;
 else
  apply_time = chsw->device_timestamp +
   ((vif->bss_conf.beacon_int * (chsw->count - 1) -
     IWL_MVM_CHANNEL_SWITCH_TIME_CLIENT) * 1024);

 if (chsw->block_tx)
  iwl_mvm_csa_client_absent(mvm, vif);

 if (mvmvif->bf_data.bf_enabled) {
  int ret = iwl_mvm_disable_beacon_filter(mvm, vif, 0);

  if (ret)
   return ret;
 }

 iwl_mvm_schedule_csa_period(mvm, vif, vif->bss_conf.beacon_int,
        apply_time);

 return 0;
}
