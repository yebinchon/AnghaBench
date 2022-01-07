
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_softc {int hw_reset_work; } ;


 int __ath_cancel_work (struct ath_softc*) ;
 int cancel_work_sync (int *) ;

void ath_cancel_work(struct ath_softc *sc)
{
 __ath_cancel_work(sc);
 cancel_work_sync(&sc->hw_reset_work);
}
