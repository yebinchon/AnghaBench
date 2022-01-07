
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_mvm {TYPE_1__* fw; } ;
struct ieee80211_vif {int dummy; } ;
struct TYPE_2__ {int ucode_capa; } ;


 int IWL_UCODE_TLV_CAPA_TDLS_CHANNEL_SWITCH ;
 scalar_t__ fw_has_capa (int *,int ) ;
 int iwl_mvm_power_update_mac (struct iwl_mvm*) ;
 int iwl_mvm_tdls_config (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_tdls_sta_count (struct iwl_mvm*,struct ieee80211_vif*) ;

void iwl_mvm_recalc_tdls_state(struct iwl_mvm *mvm, struct ieee80211_vif *vif,
          bool sta_added)
{
 int tdls_sta_cnt = iwl_mvm_tdls_sta_count(mvm, vif);


 if (tdls_sta_cnt == 1 && sta_added)
  iwl_mvm_power_update_mac(mvm);






 if (fw_has_capa(&mvm->fw->ucode_capa,
   IWL_UCODE_TLV_CAPA_TDLS_CHANNEL_SWITCH))
  iwl_mvm_tdls_config(mvm, vif);


 if (tdls_sta_cnt == 0 && !sta_added)
  iwl_mvm_power_update_mac(mvm);
}
