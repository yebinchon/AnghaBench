
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_softc {int hw; struct ath_hw* sc_ah; } ;
struct ath_hw {int dummy; } ;


 scalar_t__ AR_SREV_9300_20_OR_LATER (struct ath_hw*) ;
 int ath9k_hw_disable_interrupts (struct ath_hw*) ;
 int ath_drain_all_txq (struct ath_softc*) ;
 int ath_stop_ani (struct ath_softc*) ;
 int ath_stoprecv (struct ath_softc*) ;
 int ieee80211_stop_queues (int ) ;

__attribute__((used)) static bool ath_prepare_reset(struct ath_softc *sc)
{
 struct ath_hw *ah = sc->sc_ah;
 bool ret = 1;

 ieee80211_stop_queues(sc->hw);
 ath_stop_ani(sc);
 ath9k_hw_disable_interrupts(ah);

 if (AR_SREV_9300_20_OR_LATER(ah)) {
  ret &= ath_stoprecv(sc);
  ret &= ath_drain_all_txq(sc);
 } else {
  ret &= ath_drain_all_txq(sc);
  ret &= ath_stoprecv(sc);
 }

 return ret;
}
