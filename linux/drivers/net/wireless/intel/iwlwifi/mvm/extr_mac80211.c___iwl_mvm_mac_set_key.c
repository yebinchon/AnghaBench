
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef void* u8 ;
struct iwl_mvm_vif {struct ieee80211_key_conf** ap_early_keys; int ap_ibss_active; } ;
struct iwl_mvm_sta {int * ptk_pn; } ;
struct iwl_mvm_key_pn {TYPE_4__* q; } ;
struct iwl_mvm {int mutex; int status; TYPE_3__* trans; } ;
struct ieee80211_vif {int type; } ;
struct ieee80211_sta {int dummy; } ;
struct TYPE_11__ {int pn; } ;
struct ieee80211_key_seq {TYPE_5__ ccmp; } ;
struct ieee80211_key_conf {int keyidx; int cipher; int flags; void* hw_key_idx; } ;
struct ieee80211_hw {TYPE_2__* cipher_schemes; int n_cipher_schemes; } ;
typedef enum set_key_cmd { ____Placeholder_set_key_cmd } set_key_cmd ;
struct TYPE_12__ {scalar_t__ swcrypto; } ;
struct TYPE_10__ {int * pn; } ;
struct TYPE_9__ {int num_rx_queues; TYPE_1__* trans_cfg; } ;
struct TYPE_8__ {int cipher; } ;
struct TYPE_7__ {int gen2; } ;


 int ARRAY_SIZE (struct ieee80211_key_conf**) ;

 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int ENOSPC ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int IEEE80211_CCMP_PN_LEN ;
 int IEEE80211_KEY_FLAG_GENERATE_MMIC ;
 int IEEE80211_KEY_FLAG_PAIRWISE ;
 int IEEE80211_KEY_FLAG_PUT_IV_SPACE ;
 int IEEE80211_KEY_FLAG_PUT_MIC_SPACE ;
 int IWL_DEBUG_MAC80211 (struct iwl_mvm*,char*) ;
 struct iwl_mvm* IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;
 int IWL_MAX_TID_COUNT ;
 int IWL_MVM_STATUS_IN_HW_RESTART ;
 int IWL_WARN (struct iwl_mvm*,char*) ;
 int MFP_CAPABLE ;
 int NL80211_IFTYPE_ADHOC ;
 int NL80211_IFTYPE_AP ;
 int NL80211_IFTYPE_STATION ;
 int RCU_INIT_POINTER (int ,int *) ;

 void* STA_KEY_IDX_INVALID ;
 int WARN_ON (int ) ;
 int WARN_ON_ONCE (int) ;
 int ieee80211_get_key_rx_seq (struct ieee80211_key_conf*,int,struct ieee80211_key_seq*) ;
 int ieee80211_hw_check (struct ieee80211_hw*,int ) ;
 int iwl_mvm_has_new_rx_api (struct iwl_mvm*) ;
 int iwl_mvm_has_new_tx_api (struct iwl_mvm*) ;
 int iwl_mvm_remove_sta_key (struct iwl_mvm*,struct ieee80211_vif*,struct ieee80211_sta*,struct ieee80211_key_conf*) ;
 int iwl_mvm_set_sta_key (struct iwl_mvm*,struct ieee80211_vif*,struct ieee80211_sta*,struct ieee80211_key_conf*,void*) ;
 struct iwl_mvm_sta* iwl_mvm_sta_from_mac80211 (struct ieee80211_sta*) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 TYPE_6__ iwlwifi_mod_params ;
 int kfree_rcu (struct iwl_mvm_key_pn*,int ) ;
 struct iwl_mvm_key_pn* kzalloc (int ,int ) ;
 int lockdep_is_held (int *) ;
 int memcpy (int ,int ,int ) ;
 int rcu_access_pointer (int ) ;
 int rcu_assign_pointer (int ,struct iwl_mvm_key_pn*) ;
 struct iwl_mvm_key_pn* rcu_dereference_protected (int ,int ) ;
 int rcu_head ;
 int struct_size (struct iwl_mvm_key_pn*,int,int) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int __iwl_mvm_mac_set_key(struct ieee80211_hw *hw,
     enum set_key_cmd cmd,
     struct ieee80211_vif *vif,
     struct ieee80211_sta *sta,
     struct ieee80211_key_conf *key)
{
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 struct iwl_mvm *mvm = IWL_MAC80211_GET_MVM(hw);
 struct iwl_mvm_sta *mvmsta;
 struct iwl_mvm_key_pn *ptk_pn;
 int keyidx = key->keyidx;
 int ret, i;
 u8 key_offset;

 if (iwlwifi_mod_params.swcrypto) {
  IWL_DEBUG_MAC80211(mvm, "leave - hwcrypto disabled\n");
  return -EOPNOTSUPP;
 }

 switch (key->cipher) {
 case 130:
  if (!mvm->trans->trans_cfg->gen2) {
   key->flags |= IEEE80211_KEY_FLAG_GENERATE_MMIC;
   key->flags |= IEEE80211_KEY_FLAG_PUT_IV_SPACE;
  } else if (vif->type == NL80211_IFTYPE_STATION) {
   key->flags |= IEEE80211_KEY_FLAG_PUT_MIC_SPACE;
  } else {
   IWL_DEBUG_MAC80211(mvm, "Use SW encryption for TKIP\n");
   return -EOPNOTSUPP;
  }
  break;
 case 133:
 case 132:
 case 131:
  if (!iwl_mvm_has_new_tx_api(mvm))
   key->flags |= IEEE80211_KEY_FLAG_PUT_IV_SPACE;
  break;
 case 136:
 case 135:
 case 134:
  WARN_ON_ONCE(!ieee80211_hw_check(hw, MFP_CAPABLE));
  break;
 case 128:
 case 129:
  if (vif->type == NL80211_IFTYPE_STATION)
   break;
  if (iwl_mvm_has_new_tx_api(mvm))
   return -EOPNOTSUPP;

  return 0;
 default:

  if (hw->n_cipher_schemes &&
      hw->cipher_schemes->cipher == key->cipher)
   key->flags |= IEEE80211_KEY_FLAG_PUT_IV_SPACE;
  else
   return -EOPNOTSUPP;
 }

 switch (cmd) {
 case 137:
  if ((vif->type == NL80211_IFTYPE_ADHOC ||
       vif->type == NL80211_IFTYPE_AP) && !sta) {






   if (key->cipher == 136 ||
       key->cipher == 135 ||
       key->cipher == 134)
    ret = -EOPNOTSUPP;
   else
    ret = 0;

   if (key->cipher != 132 &&
       key->cipher != 131 &&
       !iwl_mvm_has_new_tx_api(mvm)) {
    key->hw_key_idx = STA_KEY_IDX_INVALID;
    break;
   }

   if (!mvmvif->ap_ibss_active) {
    for (i = 0;
         i < ARRAY_SIZE(mvmvif->ap_early_keys);
         i++) {
     if (!mvmvif->ap_early_keys[i]) {
      mvmvif->ap_early_keys[i] = key;
      break;
     }
    }

    if (i >= ARRAY_SIZE(mvmvif->ap_early_keys))
     ret = -ENOSPC;

    break;
   }
  }




  if (test_bit(IWL_MVM_STATUS_IN_HW_RESTART, &mvm->status) &&
      key->hw_key_idx == STA_KEY_IDX_INVALID) {
   IWL_DEBUG_MAC80211(mvm,
        "skip invalid idx key programming during restart\n");
   ret = 0;
   break;
  }

  if (!test_bit(IWL_MVM_STATUS_IN_HW_RESTART, &mvm->status) &&
      sta && iwl_mvm_has_new_rx_api(mvm) &&
      key->flags & IEEE80211_KEY_FLAG_PAIRWISE &&
      (key->cipher == 133 ||
       key->cipher == 132 ||
       key->cipher == 131)) {
   struct ieee80211_key_seq seq;
   int tid, q;

   mvmsta = iwl_mvm_sta_from_mac80211(sta);
   WARN_ON(rcu_access_pointer(mvmsta->ptk_pn[keyidx]));
   ptk_pn = kzalloc(struct_size(ptk_pn, q,
           mvm->trans->num_rx_queues),
      GFP_KERNEL);
   if (!ptk_pn) {
    ret = -ENOMEM;
    break;
   }

   for (tid = 0; tid < IWL_MAX_TID_COUNT; tid++) {
    ieee80211_get_key_rx_seq(key, tid, &seq);
    for (q = 0; q < mvm->trans->num_rx_queues; q++)
     memcpy(ptk_pn->q[q].pn[tid],
            seq.ccmp.pn,
            IEEE80211_CCMP_PN_LEN);
   }

   rcu_assign_pointer(mvmsta->ptk_pn[keyidx], ptk_pn);
  }


  if (test_bit(IWL_MVM_STATUS_IN_HW_RESTART, &mvm->status))
   key_offset = key->hw_key_idx;
  else
   key_offset = STA_KEY_IDX_INVALID;

  IWL_DEBUG_MAC80211(mvm, "set hwcrypto key\n");
  ret = iwl_mvm_set_sta_key(mvm, vif, sta, key, key_offset);
  if (ret) {
   IWL_WARN(mvm, "set key failed\n");
   key->hw_key_idx = STA_KEY_IDX_INVALID;






   if (iwl_mvm_has_new_tx_api(mvm))
    ret = -EOPNOTSUPP;
   else
    ret = 0;
  }

  break;
 case 138:
  ret = -ENOENT;
  for (i = 0; i < ARRAY_SIZE(mvmvif->ap_early_keys); i++) {
   if (mvmvif->ap_early_keys[i] == key) {
    mvmvif->ap_early_keys[i] = ((void*)0);
    ret = 0;
   }
  }


  if (ret == 0)
   break;

  if (key->hw_key_idx == STA_KEY_IDX_INVALID) {
   ret = 0;
   break;
  }

  if (sta && iwl_mvm_has_new_rx_api(mvm) &&
      key->flags & IEEE80211_KEY_FLAG_PAIRWISE &&
      (key->cipher == 133 ||
       key->cipher == 132 ||
       key->cipher == 131)) {
   mvmsta = iwl_mvm_sta_from_mac80211(sta);
   ptk_pn = rcu_dereference_protected(
      mvmsta->ptk_pn[keyidx],
      lockdep_is_held(&mvm->mutex));
   RCU_INIT_POINTER(mvmsta->ptk_pn[keyidx], ((void*)0));
   if (ptk_pn)
    kfree_rcu(ptk_pn, rcu_head);
  }

  IWL_DEBUG_MAC80211(mvm, "disable hwcrypto key\n");
  ret = iwl_mvm_remove_sta_key(mvm, vif, sta, key);
  break;
 default:
  ret = -EINVAL;
 }

 return ret;
}
