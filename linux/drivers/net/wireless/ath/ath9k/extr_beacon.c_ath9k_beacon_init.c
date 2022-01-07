
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ bmisscnt; } ;
struct ath_softc {TYPE_1__ beacon; struct ath_hw* sc_ah; } ;
struct ath_hw {int imask; } ;


 int ATH9K_INT_SWBA ;
 int ath9k_beaconq_config (struct ath_softc*) ;
 int ath9k_hw_beaconinit (struct ath_hw*,int ,int ) ;
 int ath9k_hw_disable_interrupts (struct ath_hw*) ;
 int ath9k_hw_enable_interrupts (struct ath_hw*) ;
 int ath9k_hw_set_interrupts (struct ath_hw*) ;

__attribute__((used)) static void ath9k_beacon_init(struct ath_softc *sc, u32 nexttbtt,
         u32 intval)
{
 struct ath_hw *ah = sc->sc_ah;

 ath9k_hw_disable_interrupts(ah);
 ath9k_beaconq_config(sc);
 ath9k_hw_beaconinit(ah, nexttbtt, intval);
 ah->imask |= ATH9K_INT_SWBA;
 sc->beacon.bmisscnt = 0;
 ath9k_hw_set_interrupts(ah);
 ath9k_hw_enable_interrupts(ah);
}
