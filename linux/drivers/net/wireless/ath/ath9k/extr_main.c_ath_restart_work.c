
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_softc {int hw_pll_work; int hw; int sc_ah; int hw_check_work; } ;


 scalar_t__ AR_SREV_9330 (int ) ;
 scalar_t__ AR_SREV_9340 (int ) ;
 int ATH_HW_CHECK_POLL_INT ;
 int ATH_PLL_WORK_INTERVAL ;
 int ath_start_ani (struct ath_softc*) ;
 int ieee80211_queue_delayed_work (int ,int *,int ) ;
 int msecs_to_jiffies (int ) ;

void ath_restart_work(struct ath_softc *sc)
{
 ieee80211_queue_delayed_work(sc->hw, &sc->hw_check_work,
         ATH_HW_CHECK_POLL_INT);

 if (AR_SREV_9340(sc->sc_ah) || AR_SREV_9330(sc->sc_ah))
  ieee80211_queue_delayed_work(sc->hw, &sc->hw_pll_work,
         msecs_to_jiffies(ATH_PLL_WORK_INTERVAL));

 ath_start_ani(sc);
}
