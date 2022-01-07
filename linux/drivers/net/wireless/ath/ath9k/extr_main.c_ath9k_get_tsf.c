
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct ath_vif {int tsf_adjust; TYPE_1__* chanctx; } ;
struct ath_softc {int mutex; TYPE_1__* cur_chan; int sc_ah; } ;
struct TYPE_2__ {int tsf_ts; scalar_t__ tsf_val; } ;


 scalar_t__ ath9k_hw_get_tsf_offset (int *,int *) ;
 scalar_t__ ath9k_hw_gettsf64 (int ) ;
 int ath9k_ps_restore (struct ath_softc*) ;
 int ath9k_ps_wakeup (struct ath_softc*) ;
 scalar_t__ le64_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static u64 ath9k_get_tsf(struct ieee80211_hw *hw, struct ieee80211_vif *vif)
{
 struct ath_softc *sc = hw->priv;
 struct ath_vif *avp = (void *)vif->drv_priv;
 u64 tsf;

 mutex_lock(&sc->mutex);
 ath9k_ps_wakeup(sc);

 if (sc->cur_chan == avp->chanctx) {
  tsf = ath9k_hw_gettsf64(sc->sc_ah);
 } else {
  tsf = sc->cur_chan->tsf_val +
        ath9k_hw_get_tsf_offset(&sc->cur_chan->tsf_ts, ((void*)0));
 }
 tsf += le64_to_cpu(avp->tsf_adjust);
 ath9k_ps_restore(sc);
 mutex_unlock(&sc->mutex);

 return tsf;
}
