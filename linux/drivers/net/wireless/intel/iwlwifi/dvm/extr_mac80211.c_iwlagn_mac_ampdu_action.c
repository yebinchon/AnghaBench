
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_12__ {int flags; } ;
struct TYPE_14__ {TYPE_5__ general_params; } ;
struct TYPE_13__ {TYPE_7__ lq; } ;
struct iwl_station_priv {TYPE_6__ lq_sta; } ;
struct TYPE_11__ {int use_rts_for_aggregation; } ;
struct iwl_priv {int mutex; TYPE_4__ hw_params; int agg_tids_count; TYPE_3__* trans; TYPE_1__* nvm_data; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int addr; scalar_t__ drv_priv; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_ampdu_params {int action; int buf_size; int ssn; int tid; struct ieee80211_sta* sta; } ;
typedef enum ieee80211_ampdu_mlme_action { ____Placeholder_ieee80211_ampdu_mlme_action } ieee80211_ampdu_mlme_action ;
struct TYPE_10__ {TYPE_2__* ops; } ;
struct TYPE_9__ {int txq_enable; } ;
struct TYPE_8__ {int sku_cap_11n_enable; } ;


 int CMD_ASYNC ;
 int EACCES ;
 int EINVAL ;







 int IWL_DEBUG_HT (struct iwl_priv*,char*,...) ;
 int IWL_DEBUG_MAC80211 (struct iwl_priv*,char*) ;
 struct iwl_priv* IWL_MAC80211_GET_DVM (struct ieee80211_hw*) ;
 int LINK_QUAL_FLAGS_SET_STA_TLC_RTS_MSK ;
 int iwl_enable_rx_ampdu () ;
 int iwl_enable_tx_ampdu () ;
 int iwl_rxon_ctx_from_vif (struct ieee80211_vif*) ;
 int iwl_send_lq_cmd (struct iwl_priv*,int ,TYPE_7__*,int ,int) ;
 int iwl_sta_rx_agg_start (struct iwl_priv*,struct ieee80211_sta*,int ,int ) ;
 int iwl_sta_rx_agg_stop (struct iwl_priv*,struct ieee80211_sta*,int ) ;
 int iwlagn_tx_agg_flush (struct iwl_priv*,struct ieee80211_vif*,struct ieee80211_sta*,int ) ;
 int iwlagn_tx_agg_oper (struct iwl_priv*,struct ieee80211_vif*,struct ieee80211_sta*,int ,int ) ;
 int iwlagn_tx_agg_start (struct iwl_priv*,struct ieee80211_vif*,struct ieee80211_sta*,int ,int *) ;
 int iwlagn_tx_agg_stop (struct iwl_priv*,struct ieee80211_vif*,struct ieee80211_sta*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int iwlagn_mac_ampdu_action(struct ieee80211_hw *hw,
       struct ieee80211_vif *vif,
       struct ieee80211_ampdu_params *params)
{
 struct iwl_priv *priv = IWL_MAC80211_GET_DVM(hw);
 int ret = -EINVAL;
 struct ieee80211_sta *sta = params->sta;
 enum ieee80211_ampdu_mlme_action action = params->action;
 u16 tid = params->tid;
 u16 *ssn = &params->ssn;
 u8 buf_size = params->buf_size;
 struct iwl_station_priv *sta_priv = (void *) sta->drv_priv;

 IWL_DEBUG_HT(priv, "A-MPDU action on addr %pM tid %d\n",
       sta->addr, tid);

 if (!(priv->nvm_data->sku_cap_11n_enable))
  return -EACCES;

 IWL_DEBUG_MAC80211(priv, "enter\n");
 mutex_lock(&priv->mutex);

 switch (action) {
 case 134:
  if (!iwl_enable_rx_ampdu())
   break;
  IWL_DEBUG_HT(priv, "start Rx\n");
  ret = iwl_sta_rx_agg_start(priv, sta, tid, *ssn);
  break;
 case 133:
  IWL_DEBUG_HT(priv, "stop Rx\n");
  ret = iwl_sta_rx_agg_stop(priv, sta, tid);
  break;
 case 131:
  if (!priv->trans->ops->txq_enable)
   break;
  if (!iwl_enable_tx_ampdu())
   break;
  IWL_DEBUG_HT(priv, "start Tx\n");
  ret = iwlagn_tx_agg_start(priv, vif, sta, tid, ssn);
  break;
 case 129:
 case 128:
  IWL_DEBUG_HT(priv, "Flush Tx\n");
  ret = iwlagn_tx_agg_flush(priv, vif, sta, tid);
  break;
 case 130:
  IWL_DEBUG_HT(priv, "stop Tx\n");
  ret = iwlagn_tx_agg_stop(priv, vif, sta, tid);
  if ((ret == 0) && (priv->agg_tids_count > 0)) {
   priv->agg_tids_count--;
   IWL_DEBUG_HT(priv, "priv->agg_tids_count = %u\n",
         priv->agg_tids_count);
  }
  if (!priv->agg_tids_count &&
      priv->hw_params.use_rts_for_aggregation) {



   sta_priv->lq_sta.lq.general_params.flags &=
    ~LINK_QUAL_FLAGS_SET_STA_TLC_RTS_MSK;
   iwl_send_lq_cmd(priv, iwl_rxon_ctx_from_vif(vif),
     &sta_priv->lq_sta.lq, CMD_ASYNC, 0);
  }
  break;
 case 132:
  ret = iwlagn_tx_agg_oper(priv, vif, sta, tid, buf_size);
  break;
 }
 mutex_unlock(&priv->mutex);
 IWL_DEBUG_MAC80211(priv, "leave\n");
 return ret;
}
