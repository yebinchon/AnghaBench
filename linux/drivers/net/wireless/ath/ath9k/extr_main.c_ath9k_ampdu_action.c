
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct ieee80211_vif {int dummy; } ;
struct TYPE_2__ {int ampdu_factor; } ;
struct ieee80211_sta {TYPE_1__ ht_cap; int addr; scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct ieee80211_ampdu_params {int action; int ssn; int tid; struct ieee80211_sta* sta; } ;
struct ath_softc {int mutex; int sc_ah; } ;
struct ath_node {int dummy; } ;
struct ath_common {int op_flags; } ;
struct ath_atx_tid {int baw_size; } ;
typedef enum ieee80211_ampdu_mlme_action { ____Placeholder_ieee80211_ampdu_mlme_action } ieee80211_ampdu_mlme_action ;


 int ATH_OP_SCANNING ;
 int EBUSY ;







 int IEEE80211_MIN_AMPDU_BUF ;
 struct ath_common* ath9k_hw_common (int ) ;
 int ath9k_is_chanctx_enabled () ;
 int ath9k_ps_restore (struct ath_softc*) ;
 int ath9k_ps_wakeup (struct ath_softc*) ;
 int ath_err (struct ath_common*,char*) ;
 struct ath_atx_tid* ath_node_to_tid (struct ath_node*,int ) ;
 int ath_tx_aggr_start (struct ath_softc*,struct ieee80211_sta*,int ,int *) ;
 int ath_tx_aggr_stop (struct ath_softc*,struct ieee80211_sta*,int ) ;
 int ieee80211_start_tx_ba_cb_irqsafe (struct ieee80211_vif*,int ,int ) ;
 int ieee80211_stop_tx_ba_cb_irqsafe (struct ieee80211_vif*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int ath9k_ampdu_action(struct ieee80211_hw *hw,
         struct ieee80211_vif *vif,
         struct ieee80211_ampdu_params *params)
{
 struct ath_softc *sc = hw->priv;
 struct ath_common *common = ath9k_hw_common(sc->sc_ah);
 bool flush = 0;
 int ret = 0;
 struct ieee80211_sta *sta = params->sta;
 struct ath_node *an = (struct ath_node *)sta->drv_priv;
 enum ieee80211_ampdu_mlme_action action = params->action;
 u16 tid = params->tid;
 u16 *ssn = &params->ssn;
 struct ath_atx_tid *atid;

 mutex_lock(&sc->mutex);

 switch (action) {
 case 134:
  break;
 case 133:
  break;
 case 131:
  if (ath9k_is_chanctx_enabled()) {
   if (test_bit(ATH_OP_SCANNING, &common->op_flags)) {
    ret = -EBUSY;
    break;
   }
  }
  ath9k_ps_wakeup(sc);
  ret = ath_tx_aggr_start(sc, sta, tid, ssn);
  if (!ret)
   ieee80211_start_tx_ba_cb_irqsafe(vif, sta->addr, tid);
  ath9k_ps_restore(sc);
  break;
 case 129:
 case 128:
  flush = 1;

 case 130:
  ath9k_ps_wakeup(sc);
  ath_tx_aggr_stop(sc, sta, tid);
  if (!flush)
   ieee80211_stop_tx_ba_cb_irqsafe(vif, sta->addr, tid);
  ath9k_ps_restore(sc);
  break;
 case 132:
  atid = ath_node_to_tid(an, tid);
  atid->baw_size = IEEE80211_MIN_AMPDU_BUF <<
           sta->ht_cap.ampdu_factor;
  break;
 default:
  ath_err(ath9k_hw_common(sc->sc_ah), "Unknown AMPDU action\n");
 }

 mutex_unlock(&sc->mutex);

 return ret;
}
