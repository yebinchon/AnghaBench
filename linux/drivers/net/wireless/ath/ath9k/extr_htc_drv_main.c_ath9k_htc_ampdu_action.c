
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {scalar_t__ drv_priv; int addr; } ;
struct ieee80211_hw {struct ath9k_htc_priv* priv; } ;
struct ieee80211_ampdu_params {int action; size_t tid; struct ieee80211_sta* sta; } ;
struct ath9k_htc_sta {int * tid_state; } ;
struct TYPE_2__ {int tx_lock; } ;
struct ath9k_htc_priv {int mutex; int ah; TYPE_1__ tx; } ;
typedef enum ieee80211_ampdu_mlme_action { ____Placeholder_ieee80211_ampdu_mlme_action } ieee80211_ampdu_mlme_action ;


 int AGGR_OPERATIONAL ;
 size_t ATH9K_HTC_MAX_TID ;
 int EINVAL ;







 int ath9k_htc_ps_restore (struct ath9k_htc_priv*) ;
 int ath9k_htc_ps_wakeup (struct ath9k_htc_priv*) ;
 int ath9k_htc_tx_aggr_oper (struct ath9k_htc_priv*,struct ieee80211_vif*,struct ieee80211_sta*,int,size_t) ;
 int ath9k_hw_common (int ) ;
 int ath_err (int ,char*) ;
 int ieee80211_start_tx_ba_cb_irqsafe (struct ieee80211_vif*,int ,size_t) ;
 int ieee80211_stop_tx_ba_cb_irqsafe (struct ieee80211_vif*,int ,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int ath9k_htc_ampdu_action(struct ieee80211_hw *hw,
      struct ieee80211_vif *vif,
      struct ieee80211_ampdu_params *params)
{
 struct ath9k_htc_priv *priv = hw->priv;
 struct ath9k_htc_sta *ista;
 int ret = 0;
 struct ieee80211_sta *sta = params->sta;
 enum ieee80211_ampdu_mlme_action action = params->action;
 u16 tid = params->tid;

 mutex_lock(&priv->mutex);
 ath9k_htc_ps_wakeup(priv);

 switch (action) {
 case 134:
  break;
 case 133:
  break;
 case 131:
  ret = ath9k_htc_tx_aggr_oper(priv, vif, sta, action, tid);
  if (!ret)
   ieee80211_start_tx_ba_cb_irqsafe(vif, sta->addr, tid);
  break;
 case 130:
 case 129:
 case 128:
  ath9k_htc_tx_aggr_oper(priv, vif, sta, action, tid);
  ieee80211_stop_tx_ba_cb_irqsafe(vif, sta->addr, tid);
  break;
 case 132:
  if (tid >= ATH9K_HTC_MAX_TID) {
   ret = -EINVAL;
   break;
  }
  ista = (struct ath9k_htc_sta *) sta->drv_priv;
  spin_lock_bh(&priv->tx.tx_lock);
  ista->tid_state[tid] = AGGR_OPERATIONAL;
  spin_unlock_bh(&priv->tx.tx_lock);
  break;
 default:
  ath_err(ath9k_hw_common(priv->ah), "Unknown AMPDU action\n");
 }

 ath9k_htc_ps_restore(priv);
 mutex_unlock(&priv->mutex);

 return ret;
}
