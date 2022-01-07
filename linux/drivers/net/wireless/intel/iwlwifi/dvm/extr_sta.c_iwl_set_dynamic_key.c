
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct TYPE_3__ {scalar_t__* bssid_addr; } ;
struct iwl_rxon_context {int key_mapping_keys; TYPE_1__ active; int vif; } ;
struct iwl_priv {int ucode_key_table; int mutex; } ;
struct ieee80211_sta {scalar_t__* addr; } ;
struct TYPE_4__ {int iv32; } ;
struct ieee80211_key_seq {TYPE_2__ tkip; } ;
struct ieee80211_key_conf {scalar_t__ hw_key_idx; int cipher; int keyidx; int keylen; } ;


 int EINVAL ;
 int ENOSPC ;
 int IWL_DEBUG_WEP (struct iwl_priv*,char*,int,int ,int ,scalar_t__*,int) ;
 int IWL_ERR (struct iwl_priv*,char*,int) ;
 scalar_t__ IWL_INVALID_STATION ;
 scalar_t__ WEP_INVALID_OFFSET ;




 int clear_bit (scalar_t__,int *) ;
 int ieee80211_get_key_rx_seq (struct ieee80211_key_conf*,int ,struct ieee80211_key_seq*) ;
 int ieee80211_get_tkip_rx_p1k (struct ieee80211_key_conf*,scalar_t__ const*,int ,int *) ;
 scalar_t__ iwl_get_free_ucode_key_offset (struct iwl_priv*) ;
 scalar_t__ iwlagn_key_sta_id (struct iwl_priv*,int ,struct ieee80211_sta*) ;
 int iwlagn_send_sta_key (struct iwl_priv*,struct ieee80211_key_conf*,scalar_t__,int ,int *,int ) ;
 int lockdep_assert_held (int *) ;

int iwl_set_dynamic_key(struct iwl_priv *priv,
   struct iwl_rxon_context *ctx,
   struct ieee80211_key_conf *keyconf,
   struct ieee80211_sta *sta)
{
 struct ieee80211_key_seq seq;
 u16 p1k[5];
 int ret;
 u8 sta_id = iwlagn_key_sta_id(priv, ctx->vif, sta);
 const u8 *addr;

 if (sta_id == IWL_INVALID_STATION)
  return -EINVAL;

 lockdep_assert_held(&priv->mutex);

 keyconf->hw_key_idx = iwl_get_free_ucode_key_offset(priv);
 if (keyconf->hw_key_idx == WEP_INVALID_OFFSET)
  return -ENOSPC;

 ctx->key_mapping_keys++;

 switch (keyconf->cipher) {
 case 130:
  if (sta)
   addr = sta->addr;
  else
   addr = ctx->active.bssid_addr;


  ieee80211_get_key_rx_seq(keyconf, 0, &seq);
  ieee80211_get_tkip_rx_p1k(keyconf, addr, seq.tkip.iv32, p1k);
  ret = iwlagn_send_sta_key(priv, keyconf, sta_id,
       seq.tkip.iv32, p1k, 0);
  break;
 case 131:
 case 128:
 case 129:
  ret = iwlagn_send_sta_key(priv, keyconf, sta_id,
       0, ((void*)0), 0);
  break;
 default:
  IWL_ERR(priv, "Unknown cipher %x\n", keyconf->cipher);
  ret = -EINVAL;
 }

 if (ret) {
  ctx->key_mapping_keys--;
  clear_bit(keyconf->hw_key_idx, &priv->ucode_key_table);
 }

 IWL_DEBUG_WEP(priv, "Set dynamic key: cipher=%x len=%d idx=%d sta=%pM ret=%d\n",
        keyconf->cipher, keyconf->keylen, keyconf->keyidx,
        sta ? sta->addr : ((void*)0), ret);

 return ret;
}
