
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct iwl_wowlan_status {int non_qos_seq_ctr; int replay_ctr; TYPE_2__* gtk; scalar_t__ num_of_gtk_rekeys; int wakeup_reasons; } ;
struct iwl_mvm_vif {int seqno_valid; scalar_t__ seqno; } ;
struct iwl_mvm_d3_gtk_iter_data {int find_phase; int cipher; int last_gtk; int num_keys; scalar_t__ unhandled_cipher; struct iwl_wowlan_status* status; struct iwl_mvm* mvm; } ;
struct iwl_mvm {int hw; } ;
struct TYPE_3__ {int bssid; } ;
struct ieee80211_vif {TYPE_1__ bss_conf; } ;
struct ieee80211_key_conf {int cipher; int keylen; int key; int keyidx; } ;
typedef int __be64 ;
struct TYPE_4__ {int tkip_mic_key; int key; } ;


 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int *) ;
 int IWL_WOWLAN_WAKEUP_BY_DISCONNECTION_ON_DEAUTH ;
 int IWL_WOWLAN_WAKEUP_BY_DISCONNECTION_ON_MISSED_BEACON ;
 int NL80211_TKIP_DATA_OFFSET_RX_MIC_KEY ;


 int WLAN_KEY_LEN_CCMP ;
 int WLAN_KEY_LEN_TKIP ;
 int cpu_to_be64 (int ) ;
 int * ieee80211_gtk_rekey_add (struct ieee80211_vif*,struct ieee80211_key_conf*) ;
 int ieee80211_gtk_rekey_notify (struct ieee80211_vif*,int ,void*,int ) ;
 int ieee80211_iter_keys (int ,struct ieee80211_vif*,int ,struct iwl_mvm_d3_gtk_iter_data*) ;
 int iwl_mvm_d3_update_keys ;
 int iwl_mvm_set_key_rx_seq (struct iwl_mvm*,int *,struct iwl_wowlan_status*) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 int iwlmvm_wowlan_gtk_idx (TYPE_2__*) ;
 scalar_t__ le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static bool iwl_mvm_setup_connection_keep(struct iwl_mvm *mvm,
       struct ieee80211_vif *vif,
       struct iwl_wowlan_status *status)
{
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 struct iwl_mvm_d3_gtk_iter_data gtkdata = {
  .mvm = mvm,
  .status = status,
 };
 u32 disconnection_reasons =
  IWL_WOWLAN_WAKEUP_BY_DISCONNECTION_ON_MISSED_BEACON |
  IWL_WOWLAN_WAKEUP_BY_DISCONNECTION_ON_DEAUTH;

 if (!status || !vif->bss_conf.bssid)
  return 0;

 if (le32_to_cpu(status->wakeup_reasons) & disconnection_reasons)
  return 0;


 gtkdata.find_phase = 1;
 ieee80211_iter_keys(mvm->hw, vif,
       iwl_mvm_d3_update_keys, &gtkdata);

 if (gtkdata.unhandled_cipher)
  return 0;
 if (!gtkdata.num_keys)
  goto out;
 if (!gtkdata.last_gtk)
  return 0;





 gtkdata.find_phase = 0;
 ieee80211_iter_keys(mvm->hw, vif,
       iwl_mvm_d3_update_keys, &gtkdata);

 if (status->num_of_gtk_rekeys) {
  struct ieee80211_key_conf *key;
  struct {
   struct ieee80211_key_conf conf;
   u8 key[32];
  } conf = {
   .conf.cipher = gtkdata.cipher,
   .conf.keyidx =
    iwlmvm_wowlan_gtk_idx(&status->gtk[0]),
  };
  __be64 replay_ctr;

  switch (gtkdata.cipher) {
  case 129:
   conf.conf.keylen = WLAN_KEY_LEN_CCMP;
   memcpy(conf.conf.key, status->gtk[0].key,
          WLAN_KEY_LEN_CCMP);
   break;
  case 128:
   conf.conf.keylen = WLAN_KEY_LEN_TKIP;
   memcpy(conf.conf.key, status->gtk[0].key, 16);

   memcpy(conf.conf.key +
          NL80211_TKIP_DATA_OFFSET_RX_MIC_KEY,
          status->gtk[0].tkip_mic_key, 8);
   break;
  }

  key = ieee80211_gtk_rekey_add(vif, &conf.conf);
  if (IS_ERR(key))
   return 0;
  iwl_mvm_set_key_rx_seq(mvm, key, status);

  replay_ctr =
   cpu_to_be64(le64_to_cpu(status->replay_ctr));

  ieee80211_gtk_rekey_notify(vif, vif->bss_conf.bssid,
        (void *)&replay_ctr, GFP_KERNEL);
 }

out:
 mvmvif->seqno_valid = 1;

 mvmvif->seqno = le16_to_cpu(status->non_qos_seq_ctr) + 0x10;

 return 1;
}
