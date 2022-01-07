
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct ath_softc {int sc_ah; } ;
struct ath_common {int cc_lock; } ;


 int ATH9K_PM_FULL_SLEEP ;
 struct ath_common* ath9k_hw_common (int ) ;
 int ath9k_hw_setpower (int ,int ) ;
 int ath9k_hw_setrxabort (int ,int) ;
 int ath9k_hw_stopdmarecv (int ,int*) ;
 int ath_hw_cycle_counters_update (struct ath_common*) ;
 struct ath_softc* from_timer (int ,struct timer_list*,int ) ;
 struct ath_softc* sc ;
 int sleep_timer ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ath_ps_full_sleep(struct timer_list *t)
{
 struct ath_softc *sc = from_timer(sc, t, sleep_timer);
 struct ath_common *common = ath9k_hw_common(sc->sc_ah);
 unsigned long flags;
 bool reset;

 spin_lock_irqsave(&common->cc_lock, flags);
 ath_hw_cycle_counters_update(common);
 spin_unlock_irqrestore(&common->cc_lock, flags);

 ath9k_hw_setrxabort(sc->sc_ah, 1);
 ath9k_hw_stopdmarecv(sc->sc_ah, &reset);

 ath9k_hw_setpower(sc->sc_ah, ATH9K_PM_FULL_SLEEP);
}
