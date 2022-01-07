
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct ath_vif {TYPE_1__* chanctx; } ;
struct ath_softc {int mutex; int sc_ah; TYPE_1__* cur_chan; } ;
struct TYPE_2__ {scalar_t__ tsf_val; int tsf_ts; } ;


 int ath9k_hw_reset_tsf (int ) ;
 int ath9k_ps_restore (struct ath_softc*) ;
 int ath9k_ps_wakeup (struct ath_softc*) ;
 int ktime_get_raw_ts64 (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ath9k_reset_tsf(struct ieee80211_hw *hw, struct ieee80211_vif *vif)
{
 struct ath_softc *sc = hw->priv;
 struct ath_vif *avp = (void *)vif->drv_priv;

 mutex_lock(&sc->mutex);

 ath9k_ps_wakeup(sc);
 ktime_get_raw_ts64(&avp->chanctx->tsf_ts);
 if (sc->cur_chan == avp->chanctx)
  ath9k_hw_reset_tsf(sc->sc_ah);
 avp->chanctx->tsf_val = 0;
 ath9k_ps_restore(sc);

 mutex_unlock(&sc->mutex);
}
