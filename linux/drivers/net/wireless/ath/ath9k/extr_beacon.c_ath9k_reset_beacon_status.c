
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_processed; int tx_last; } ;
struct ath_softc {TYPE_1__ beacon; } ;



__attribute__((used)) static void ath9k_reset_beacon_status(struct ath_softc *sc)
{
 sc->beacon.tx_processed = 0;
 sc->beacon.tx_last = 0;
}
