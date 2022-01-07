
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_wowlan_config_cmd {int offloading_tid; } ;
struct iwl_mvm_vif {int dummy; } ;
struct iwl_mvm {TYPE_1__* fw; int mutex; int offload_tid; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct cfg80211_wowlan {int dummy; } ;
struct TYPE_4__ {int swcrypto; } ;
struct TYPE_3__ {int ucode_capa; } ;


 int CMD_ASYNC ;
 int IWL_UCODE_TLV_API_WOWLAN_TCP_SYN_WAKE ;
 int IWL_UCODE_TLV_CAPA_CNSLDTD_D3_D0_IMG ;
 int WOWLAN_CONFIGURATION ;
 scalar_t__ fw_has_api (int *,int ) ;
 int fw_has_capa (int *,int ) ;
 int iwl_mvm_d3_reprogram (struct iwl_mvm*,struct ieee80211_vif*,struct ieee80211_sta*) ;
 int iwl_mvm_send_cmd_pdu (struct iwl_mvm*,int ,int ,int,struct iwl_wowlan_config_cmd*) ;
 int iwl_mvm_send_patterns (struct iwl_mvm*,struct cfg80211_wowlan*) ;
 int iwl_mvm_send_patterns_v1 (struct iwl_mvm*,struct cfg80211_wowlan*) ;
 int iwl_mvm_send_proto_offload (struct iwl_mvm*,struct ieee80211_vif*,int,int,int ) ;
 int iwl_mvm_switch_to_d3 (struct iwl_mvm*) ;
 int iwl_mvm_wowlan_config_key_params (struct iwl_mvm*,struct ieee80211_vif*,int ) ;
 TYPE_2__ iwlwifi_mod_params ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int
iwl_mvm_wowlan_config(struct iwl_mvm *mvm,
        struct cfg80211_wowlan *wowlan,
        struct iwl_wowlan_config_cmd *wowlan_config_cmd,
        struct ieee80211_vif *vif, struct iwl_mvm_vif *mvmvif,
        struct ieee80211_sta *ap_sta)
{
 int ret;
 bool unified_image = fw_has_capa(&mvm->fw->ucode_capa,
      IWL_UCODE_TLV_CAPA_CNSLDTD_D3_D0_IMG);

 mvm->offload_tid = wowlan_config_cmd->offloading_tid;

 if (!unified_image) {
  ret = iwl_mvm_switch_to_d3(mvm);
  if (ret)
   return ret;

  ret = iwl_mvm_d3_reprogram(mvm, vif, ap_sta);
  if (ret)
   return ret;
 }

 if (!iwlwifi_mod_params.swcrypto) {





  mutex_unlock(&mvm->mutex);
  ret = iwl_mvm_wowlan_config_key_params(mvm, vif, CMD_ASYNC);
  mutex_lock(&mvm->mutex);
  if (ret)
   return ret;
 }

 ret = iwl_mvm_send_cmd_pdu(mvm, WOWLAN_CONFIGURATION, 0,
       sizeof(*wowlan_config_cmd),
       wowlan_config_cmd);
 if (ret)
  return ret;

 if (fw_has_api(&mvm->fw->ucode_capa,
         IWL_UCODE_TLV_API_WOWLAN_TCP_SYN_WAKE))
  ret = iwl_mvm_send_patterns(mvm, wowlan);
 else
  ret = iwl_mvm_send_patterns_v1(mvm, wowlan);
 if (ret)
  return ret;

 return iwl_mvm_send_proto_offload(mvm, vif, 0, 1, 0);
}
