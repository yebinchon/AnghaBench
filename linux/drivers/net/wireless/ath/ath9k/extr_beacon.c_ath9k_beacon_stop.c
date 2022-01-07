
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ bmisscnt; } ;
struct ath_softc {TYPE_2__* sc_ah; TYPE_1__ beacon; } ;
struct TYPE_6__ {int imask; } ;


 int ATH9K_INT_BMISS ;
 int ATH9K_INT_SWBA ;
 int ath9k_hw_disable_interrupts (TYPE_2__*) ;
 int ath9k_hw_enable_interrupts (TYPE_2__*) ;
 int ath9k_hw_set_interrupts (TYPE_2__*) ;

__attribute__((used)) static void ath9k_beacon_stop(struct ath_softc *sc)
{
 ath9k_hw_disable_interrupts(sc->sc_ah);
 sc->sc_ah->imask &= ~(ATH9K_INT_SWBA | ATH9K_INT_BMISS);
 sc->beacon.bmisscnt = 0;
 ath9k_hw_set_interrupts(sc->sc_ah);
 ath9k_hw_enable_interrupts(sc->sc_ah);
}
