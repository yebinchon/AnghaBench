
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_rxon_context {scalar_t__ ctxid; TYPE_1__* vif; int staging; int rxon_cmd; int active; } ;
struct iwl_rxon_cmd {int dummy; } ;
struct iwl_priv {int tx_power_next; scalar_t__ start_calib; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 int IWL_ERR (struct iwl_priv*,char*,...) ;
 scalar_t__ IWL_RXON_CTX_BSS ;
 scalar_t__ NL80211_IFTYPE_ADHOC ;
 scalar_t__ NL80211_IFTYPE_AP ;
 int iwl_dvm_send_cmd_pdu (struct iwl_priv*,int ,int ,int,int *) ;
 int iwl_init_sensitivity (struct iwl_priv*) ;
 int iwl_send_rxon_timing (struct iwl_priv*,struct iwl_rxon_context*) ;
 int iwl_set_tx_power (struct iwl_priv*,int ,int) ;
 int iwlagn_update_beacon (struct iwl_priv*,TYPE_1__*) ;
 int iwlagn_update_qos (struct iwl_priv*,struct iwl_rxon_context*) ;
 int memcpy (struct iwl_rxon_cmd*,int *,int) ;

__attribute__((used)) static int iwlagn_rxon_connect(struct iwl_priv *priv,
          struct iwl_rxon_context *ctx)
{
 int ret;
 struct iwl_rxon_cmd *active = (void *)&ctx->active;


 if (ctx->ctxid == IWL_RXON_CTX_BSS) {
  ret = iwl_send_rxon_timing(priv, ctx);
  if (ret) {
   IWL_ERR(priv, "Failed to send timing (%d)!\n", ret);
   return ret;
  }
 }

 iwlagn_update_qos(priv, ctx);






 if (ctx->vif && (ctx->vif->type == NL80211_IFTYPE_AP)) {
  ret = iwlagn_update_beacon(priv, ctx->vif);
  if (ret) {
   IWL_ERR(priv,
    "Error sending required beacon (%d)!\n",
    ret);
   return ret;
  }
 }

 priv->start_calib = 0;






 ret = iwl_dvm_send_cmd_pdu(priv, ctx->rxon_cmd, 0,
        sizeof(struct iwl_rxon_cmd), &ctx->staging);
 if (ret) {
  IWL_ERR(priv, "Error setting new RXON (%d)\n", ret);
  return ret;
 }
 memcpy(active, &ctx->staging, sizeof(*active));


 if (ctx->vif && (ctx->vif->type == NL80211_IFTYPE_ADHOC))
  if (iwlagn_update_beacon(priv, ctx->vif))
   IWL_ERR(priv, "Error sending IBSS beacon\n");
 iwl_init_sensitivity(priv);
 ret = iwl_set_tx_power(priv, priv->tx_power_next, 1);
 if (ret) {
  IWL_ERR(priv, "Error sending TX power (%d)\n", ret);
  return ret;
 }

 return 0;
}
