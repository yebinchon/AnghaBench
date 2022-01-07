
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_softc {int * rng_task; struct ath_hw* sc_ah; } ;
struct ath_hw {int dummy; } ;


 int AR_SREV_9300_20_OR_LATER (struct ath_hw*) ;
 scalar_t__ IS_ERR (int *) ;
 int ath9k_rng_kthread ;
 int * kthread_run (int ,struct ath_softc*,char*) ;

void ath9k_rng_start(struct ath_softc *sc)
{
 struct ath_hw *ah = sc->sc_ah;

 if (sc->rng_task)
  return;

 if (!AR_SREV_9300_20_OR_LATER(ah))
  return;

 sc->rng_task = kthread_run(ath9k_rng_kthread, sc, "ath9k-hwrng");
 if (IS_ERR(sc->rng_task))
  sc->rng_task = ((void*)0);
}
