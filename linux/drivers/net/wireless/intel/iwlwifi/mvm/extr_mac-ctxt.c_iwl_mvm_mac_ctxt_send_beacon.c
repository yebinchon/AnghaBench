
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct iwl_mvm {TYPE_1__* fw; } ;
struct ieee80211_vif {int dummy; } ;
struct TYPE_2__ {int ucode_capa; } ;


 int EINVAL ;
 scalar_t__ IWL_MVM_NON_TRANSMITTING_AP ;
 int IWL_UCODE_TLV_API_NEW_BEACON_TEMPLATE ;
 int IWL_UCODE_TLV_CAPA_CSA_AND_TBTT_OFFLOAD ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ fw_has_api (int *,int ) ;
 int fw_has_capa (int *,int ) ;
 int iwl_mvm_mac_ctxt_send_beacon_v6 (struct iwl_mvm*,struct ieee80211_vif*,struct sk_buff*) ;
 int iwl_mvm_mac_ctxt_send_beacon_v7 (struct iwl_mvm*,struct ieee80211_vif*,struct sk_buff*) ;
 int iwl_mvm_mac_ctxt_send_beacon_v9 (struct iwl_mvm*,struct ieee80211_vif*,struct sk_buff*) ;

int iwl_mvm_mac_ctxt_send_beacon(struct iwl_mvm *mvm,
     struct ieee80211_vif *vif,
     struct sk_buff *beacon)
{
 if (WARN_ON(!beacon))
  return -EINVAL;

 if (IWL_MVM_NON_TRANSMITTING_AP)
  return 0;

 if (!fw_has_capa(&mvm->fw->ucode_capa,
    IWL_UCODE_TLV_CAPA_CSA_AND_TBTT_OFFLOAD))
  return iwl_mvm_mac_ctxt_send_beacon_v6(mvm, vif, beacon);

 if (fw_has_api(&mvm->fw->ucode_capa,
         IWL_UCODE_TLV_API_NEW_BEACON_TEMPLATE))
  return iwl_mvm_mac_ctxt_send_beacon_v9(mvm, vif, beacon);

 return iwl_mvm_mac_ctxt_send_beacon_v7(mvm, vif, beacon);
}
