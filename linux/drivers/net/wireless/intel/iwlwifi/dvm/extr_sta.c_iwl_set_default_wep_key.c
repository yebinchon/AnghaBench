
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_rxon_context {TYPE_1__* wep_keys; } ;
struct iwl_priv {int mutex; } ;
struct ieee80211_key_conf {scalar_t__ keylen; size_t keyidx; int key; int hw_key_idx; } ;
struct TYPE_2__ {scalar_t__ key_size; int key; } ;


 int EINVAL ;
 int IWLAGN_HW_KEY_DEFAULT ;
 int IWL_DEBUG_WEP (struct iwl_priv*,char*,scalar_t__,...) ;
 scalar_t__ WEP_KEY_LEN_128 ;
 scalar_t__ WEP_KEY_LEN_64 ;
 int iwl_send_static_wepkey_cmd (struct iwl_priv*,struct iwl_rxon_context*,int) ;
 int lockdep_assert_held (int *) ;
 int memcpy (int *,int *,scalar_t__) ;

int iwl_set_default_wep_key(struct iwl_priv *priv,
       struct iwl_rxon_context *ctx,
       struct ieee80211_key_conf *keyconf)
{
 int ret;

 lockdep_assert_held(&priv->mutex);

 if (keyconf->keylen != WEP_KEY_LEN_128 &&
     keyconf->keylen != WEP_KEY_LEN_64) {
  IWL_DEBUG_WEP(priv,
         "Bad WEP key length %d\n", keyconf->keylen);
  return -EINVAL;
 }

 keyconf->hw_key_idx = IWLAGN_HW_KEY_DEFAULT;

 ctx->wep_keys[keyconf->keyidx].key_size = keyconf->keylen;
 memcpy(&ctx->wep_keys[keyconf->keyidx].key, &keyconf->key,
       keyconf->keylen);

 ret = iwl_send_static_wepkey_cmd(priv, ctx, 0);
 IWL_DEBUG_WEP(priv, "Set default WEP key: len=%d idx=%d ret=%d\n",
  keyconf->keylen, keyconf->keyidx, ret);

 return ret;
}
