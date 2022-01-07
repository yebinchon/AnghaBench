
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct iwl_vif_priv {struct iwl_rxon_context* ctx; } ;
struct TYPE_5__ {TYPE_1__* ac; } ;
struct TYPE_6__ {TYPE_2__ def_qos_parm; } ;
struct iwl_rxon_context {TYPE_3__ qos_data; } ;
struct iwl_priv {int mutex; } ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ieee80211_tx_queue_params {int cw_min; int cw_max; int txop; int aifs; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_4__ {scalar_t__ reserved1; void* edca_txop; int aifsn; void* cw_max; void* cw_min; } ;


 int AC_NUM ;
 int EINVAL ;
 int EIO ;
 int IWL_DEBUG_MAC80211 (struct iwl_priv*,char*,...) ;
 struct iwl_priv* IWL_MAC80211_GET_DVM (struct ieee80211_hw*) ;
 scalar_t__ WARN_ON (int) ;
 void* cpu_to_le16 (int) ;
 int iwl_is_ready_rf (struct iwl_priv*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int iwlagn_mac_conf_tx(struct ieee80211_hw *hw,
         struct ieee80211_vif *vif, u16 queue,
         const struct ieee80211_tx_queue_params *params)
{
 struct iwl_priv *priv = IWL_MAC80211_GET_DVM(hw);
 struct iwl_vif_priv *vif_priv = (void *)vif->drv_priv;
 struct iwl_rxon_context *ctx = vif_priv->ctx;
 int q;

 if (WARN_ON(!ctx))
  return -EINVAL;

 IWL_DEBUG_MAC80211(priv, "enter\n");

 if (!iwl_is_ready_rf(priv)) {
  IWL_DEBUG_MAC80211(priv, "leave - RF not ready\n");
  return -EIO;
 }

 if (queue >= AC_NUM) {
  IWL_DEBUG_MAC80211(priv, "leave - queue >= AC_NUM %d\n", queue);
  return 0;
 }

 q = AC_NUM - 1 - queue;

 mutex_lock(&priv->mutex);

 ctx->qos_data.def_qos_parm.ac[q].cw_min =
  cpu_to_le16(params->cw_min);
 ctx->qos_data.def_qos_parm.ac[q].cw_max =
  cpu_to_le16(params->cw_max);
 ctx->qos_data.def_qos_parm.ac[q].aifsn = params->aifs;
 ctx->qos_data.def_qos_parm.ac[q].edca_txop =
   cpu_to_le16((params->txop * 32));

 ctx->qos_data.def_qos_parm.ac[q].reserved1 = 0;

 mutex_unlock(&priv->mutex);

 IWL_DEBUG_MAC80211(priv, "leave\n");
 return 0;
}
