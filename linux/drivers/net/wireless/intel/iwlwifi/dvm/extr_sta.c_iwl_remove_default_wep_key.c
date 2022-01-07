
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_rxon_context {int * wep_keys; } ;
struct iwl_priv {int mutex; } ;
struct ieee80211_key_conf {size_t keyidx; } ;


 int IWL_DEBUG_WEP (struct iwl_priv*,char*,...) ;
 scalar_t__ iwl_is_rfkill (struct iwl_priv*) ;
 int iwl_send_static_wepkey_cmd (struct iwl_priv*,struct iwl_rxon_context*,int) ;
 int lockdep_assert_held (int *) ;
 int memset (int *,int ,int) ;

int iwl_remove_default_wep_key(struct iwl_priv *priv,
          struct iwl_rxon_context *ctx,
          struct ieee80211_key_conf *keyconf)
{
 int ret;

 lockdep_assert_held(&priv->mutex);

 IWL_DEBUG_WEP(priv, "Removing default WEP key: idx=%d\n",
        keyconf->keyidx);

 memset(&ctx->wep_keys[keyconf->keyidx], 0, sizeof(ctx->wep_keys[0]));
 if (iwl_is_rfkill(priv)) {
  IWL_DEBUG_WEP(priv,
   "Not sending REPLY_WEPKEY command due to RFKILL.\n");

  return 0;
 }
 ret = iwl_send_static_wepkey_cmd(priv, ctx, 1);
 IWL_DEBUG_WEP(priv, "Remove default WEP key: idx=%d ret=%d\n",
        keyconf->keyidx, ret);

 return ret;
}
