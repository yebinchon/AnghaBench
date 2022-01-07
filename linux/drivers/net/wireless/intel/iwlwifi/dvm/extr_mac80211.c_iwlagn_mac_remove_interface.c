
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_rxon_context {struct ieee80211_vif* vif; } ;
struct iwl_priv {int mutex; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int IWL_DEBUG_MAC80211 (struct iwl_priv*,char*) ;
 struct iwl_priv* IWL_MAC80211_GET_DVM (struct ieee80211_hw*) ;
 int WARN_ON (int) ;
 struct iwl_rxon_context* iwl_rxon_ctx_from_vif (struct ieee80211_vif*) ;
 int iwl_teardown_interface (struct iwl_priv*,struct ieee80211_vif*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void iwlagn_mac_remove_interface(struct ieee80211_hw *hw,
         struct ieee80211_vif *vif)
{
 struct iwl_priv *priv = IWL_MAC80211_GET_DVM(hw);
 struct iwl_rxon_context *ctx = iwl_rxon_ctx_from_vif(vif);

 IWL_DEBUG_MAC80211(priv, "enter\n");

 mutex_lock(&priv->mutex);

 WARN_ON(ctx->vif != vif);
 ctx->vif = ((void*)0);

 iwl_teardown_interface(priv, vif, 0);

 mutex_unlock(&priv->mutex);

 IWL_DEBUG_MAC80211(priv, "leave\n");

}
