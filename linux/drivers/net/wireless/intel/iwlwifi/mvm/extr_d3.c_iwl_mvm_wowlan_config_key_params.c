
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int tkip_cmd ;
struct wowlan_key_data {int configure_keys; int use_rsc_tsc; int use_tkip; struct iwl_wowlan_tkip_params_cmd* rsc_tsc; scalar_t__ error; struct iwl_wowlan_tkip_params_cmd* tkip; } ;
struct iwl_wowlan_tkip_params_cmd {int replay_ctr; void* kek_len; int kek; void* kck_len; int kck; } ;
struct iwl_wowlan_kek_kck_material_cmd {int replay_ctr; void* kek_len; int kek; void* kck_len; int kck; } ;
struct TYPE_4__ {int replay_ctr; int kek; int kck; scalar_t__ valid; } ;
struct iwl_mvm_vif {TYPE_2__ rekey_data; } ;
struct iwl_mvm {TYPE_1__* fw; int hw; } ;
struct ieee80211_vif {int dummy; } ;
typedef int kek_kck_cmd ;
struct TYPE_3__ {int ucode_capa; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IWL_UCODE_TLV_API_TKIP_MIC_KEYS ;
 int IWL_UCODE_TLV_CAPA_CNSLDTD_D3_D0_IMG ;
 int NL80211_KCK_LEN ;
 int NL80211_KEK_LEN ;
 int WOWLAN_KEK_KCK_MATERIAL ;
 int WOWLAN_TKIP_PARAM ;
 int WOWLAN_TSC_RSC_PARAM ;
 void* cpu_to_le16 (int ) ;
 int fw_has_api (int *,int ) ;
 int fw_has_capa (int *,int ) ;
 int ieee80211_iter_keys (int ,struct ieee80211_vif*,int ,struct wowlan_key_data*) ;
 int iwl_mvm_send_cmd_pdu (struct iwl_mvm*,int ,int ,int,struct iwl_wowlan_tkip_params_cmd*) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 int iwl_mvm_wowlan_program_keys ;
 int kfree (struct iwl_wowlan_tkip_params_cmd*) ;
 struct iwl_wowlan_tkip_params_cmd* kzalloc (int,int ) ;
 int memcpy (int ,int ,int ) ;
 int memset (struct iwl_wowlan_tkip_params_cmd*,int ,int) ;

__attribute__((used)) static int iwl_mvm_wowlan_config_key_params(struct iwl_mvm *mvm,
         struct ieee80211_vif *vif,
         u32 cmd_flags)
{
 struct iwl_wowlan_kek_kck_material_cmd kek_kck_cmd = {};
 struct iwl_wowlan_tkip_params_cmd tkip_cmd = {};
 bool unified = fw_has_capa(&mvm->fw->ucode_capa,
       IWL_UCODE_TLV_CAPA_CNSLDTD_D3_D0_IMG);
 struct wowlan_key_data key_data = {
  .configure_keys = !unified,
  .use_rsc_tsc = 0,
  .tkip = &tkip_cmd,
  .use_tkip = 0,
 };
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 int ret;

 key_data.rsc_tsc = kzalloc(sizeof(*key_data.rsc_tsc), GFP_KERNEL);
 if (!key_data.rsc_tsc)
  return -ENOMEM;
 ieee80211_iter_keys(mvm->hw, vif, iwl_mvm_wowlan_program_keys,
       &key_data);

 if (key_data.error) {
  ret = -EIO;
  goto out;
 }

 if (key_data.use_rsc_tsc) {
  ret = iwl_mvm_send_cmd_pdu(mvm,
        WOWLAN_TSC_RSC_PARAM, cmd_flags,
        sizeof(*key_data.rsc_tsc),
        key_data.rsc_tsc);
  if (ret)
   goto out;
 }

 if (key_data.use_tkip &&
     !fw_has_api(&mvm->fw->ucode_capa,
   IWL_UCODE_TLV_API_TKIP_MIC_KEYS)) {
  ret = iwl_mvm_send_cmd_pdu(mvm,
        WOWLAN_TKIP_PARAM,
        cmd_flags, sizeof(tkip_cmd),
        &tkip_cmd);
  if (ret)
   goto out;
 }


 if (mvmvif->rekey_data.valid) {
  memset(&kek_kck_cmd, 0, sizeof(kek_kck_cmd));
  memcpy(kek_kck_cmd.kck, mvmvif->rekey_data.kck,
         NL80211_KCK_LEN);
  kek_kck_cmd.kck_len = cpu_to_le16(NL80211_KCK_LEN);
  memcpy(kek_kck_cmd.kek, mvmvif->rekey_data.kek,
         NL80211_KEK_LEN);
  kek_kck_cmd.kek_len = cpu_to_le16(NL80211_KEK_LEN);
  kek_kck_cmd.replay_ctr = mvmvif->rekey_data.replay_ctr;

  ret = iwl_mvm_send_cmd_pdu(mvm,
        WOWLAN_KEK_KCK_MATERIAL, cmd_flags,
        sizeof(kek_kck_cmd),
        &kek_kck_cmd);
  if (ret)
   goto out;
 }
 ret = 0;
out:
 kfree(key_data.rsc_tsc);
 return ret;
}
