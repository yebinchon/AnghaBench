
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_softc {int * rng_task; } ;


 int kthread_stop (int *) ;

void ath9k_rng_stop(struct ath_softc *sc)
{
 if (sc->rng_task) {
  kthread_stop(sc->rng_task);
  sc->rng_task = ((void*)0);
 }
}
