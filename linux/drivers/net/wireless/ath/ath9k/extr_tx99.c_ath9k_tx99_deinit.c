
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_softc {int dummy; } ;


 int ath9k_ps_restore (struct ath_softc*) ;
 int ath9k_ps_wakeup (struct ath_softc*) ;
 int ath9k_tx99_stop (struct ath_softc*) ;
 int ath_reset (struct ath_softc*,int *) ;

__attribute__((used)) static void ath9k_tx99_deinit(struct ath_softc *sc)
{
 ath_reset(sc, ((void*)0));

 ath9k_ps_wakeup(sc);
 ath9k_tx99_stop(sc);
 ath9k_ps_restore(sc);
}
