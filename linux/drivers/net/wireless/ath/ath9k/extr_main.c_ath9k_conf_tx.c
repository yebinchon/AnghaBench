
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_tx_queue_params {int txop; int cw_max; int cw_min; int aifs; } ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct ath_txq {int axq_qnum; } ;
struct TYPE_2__ {struct ath_txq** txq_map; } ;
struct ath_softc {int mutex; TYPE_1__ tx; int sc_ah; } ;
struct ath_common {int dummy; } ;
struct ath9k_tx_queue_info {int tqi_burstTime; int tqi_cwmax; int tqi_cwmin; int tqi_aifs; } ;


 int CONFIG ;
 size_t IEEE80211_NUM_ACS ;
 struct ath_common* ath9k_hw_common (int ) ;
 int ath9k_ps_restore (struct ath_softc*) ;
 int ath9k_ps_wakeup (struct ath_softc*) ;
 int ath_dbg (struct ath_common*,int ,char*,size_t,int ,int ,int ,int ,int) ;
 int ath_err (struct ath_common*,char*) ;
 int ath_txq_update (struct ath_softc*,int ,struct ath9k_tx_queue_info*) ;
 int ath_update_max_aggr_framelen (struct ath_softc*,size_t,int) ;
 int memset (struct ath9k_tx_queue_info*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ath9k_conf_tx(struct ieee80211_hw *hw,
    struct ieee80211_vif *vif, u16 queue,
    const struct ieee80211_tx_queue_params *params)
{
 struct ath_softc *sc = hw->priv;
 struct ath_common *common = ath9k_hw_common(sc->sc_ah);
 struct ath_txq *txq;
 struct ath9k_tx_queue_info qi;
 int ret = 0;

 if (queue >= IEEE80211_NUM_ACS)
  return 0;

 txq = sc->tx.txq_map[queue];

 ath9k_ps_wakeup(sc);
 mutex_lock(&sc->mutex);

 memset(&qi, 0, sizeof(struct ath9k_tx_queue_info));

 qi.tqi_aifs = params->aifs;
 qi.tqi_cwmin = params->cw_min;
 qi.tqi_cwmax = params->cw_max;
 qi.tqi_burstTime = params->txop * 32;

 ath_dbg(common, CONFIG,
  "Configure tx [queue/halq] [%d/%d], aifs: %d, cw_min: %d, cw_max: %d, txop: %d\n",
  queue, txq->axq_qnum, params->aifs, params->cw_min,
  params->cw_max, params->txop);

 ath_update_max_aggr_framelen(sc, queue, qi.tqi_burstTime);
 ret = ath_txq_update(sc, txq->axq_qnum, &qi);
 if (ret)
  ath_err(common, "TXQ Update failed\n");

 mutex_unlock(&sc->mutex);
 ath9k_ps_restore(sc);

 return ret;
}
