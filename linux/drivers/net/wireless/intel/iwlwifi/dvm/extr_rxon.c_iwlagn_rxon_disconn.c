
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_rxon_context {scalar_t__ ctxid; int staging; scalar_t__ vif; int active; } ;
struct iwl_rxon_cmd {int dummy; } ;
struct iwl_priv {int dummy; } ;


 int IWL_ERR (struct iwl_priv*,char*,int) ;
 scalar_t__ IWL_RXON_CTX_BSS ;
 int iwl_clear_ucode_stations (struct iwl_priv*,struct iwl_rxon_context*) ;
 int iwl_restore_default_wep_keys (struct iwl_priv*,struct iwl_rxon_context*) ;
 int iwl_restore_stations (struct iwl_priv*,struct iwl_rxon_context*) ;
 int iwl_send_rxon_timing (struct iwl_priv*,struct iwl_rxon_context*) ;
 int iwl_update_bcast_station (struct iwl_priv*,struct iwl_rxon_context*) ;
 int iwlagn_disable_bss (struct iwl_priv*,struct iwl_rxon_context*,int *) ;
 int iwlagn_disable_pan (struct iwl_priv*,struct iwl_rxon_context*,int *) ;
 int iwlagn_disconn_pan (struct iwl_priv*,struct iwl_rxon_context*,int *) ;
 int memcpy (struct iwl_rxon_cmd*,int *,int) ;

__attribute__((used)) static int iwlagn_rxon_disconn(struct iwl_priv *priv,
          struct iwl_rxon_context *ctx)
{
 int ret;
 struct iwl_rxon_cmd *active = (void *)&ctx->active;

 if (ctx->ctxid == IWL_RXON_CTX_BSS) {
  ret = iwlagn_disable_bss(priv, ctx, &ctx->staging);
 } else {
  ret = iwlagn_disable_pan(priv, ctx, &ctx->staging);
  if (ret)
   return ret;
  if (ctx->vif) {
   ret = iwl_send_rxon_timing(priv, ctx);
   if (ret) {
    IWL_ERR(priv, "Failed to send timing (%d)!\n", ret);
    return ret;
   }
   ret = iwlagn_disconn_pan(priv, ctx, &ctx->staging);
  }
 }
 if (ret)
  return ret;





 iwl_clear_ucode_stations(priv, ctx);

 iwl_update_bcast_station(priv, ctx);
 iwl_restore_stations(priv, ctx);
 ret = iwl_restore_default_wep_keys(priv, ctx);
 if (ret) {
  IWL_ERR(priv, "Failed to restore WEP keys (%d)\n", ret);
  return ret;
 }

 memcpy(active, &ctx->staging, sizeof(*active));
 return 0;
}
