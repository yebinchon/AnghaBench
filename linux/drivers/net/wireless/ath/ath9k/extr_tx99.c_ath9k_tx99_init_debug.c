
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int debugfs_phy; } ;
struct ath_softc {TYPE_1__ debug; int sc_ah; } ;


 int AR_SREV_9280_20_OR_LATER (int ) ;
 int debugfs_create_file (char*,int,int ,struct ath_softc*,int *) ;
 int fops_tx99 ;
 int fops_tx99_power ;

void ath9k_tx99_init_debug(struct ath_softc *sc)
{
 if (!AR_SREV_9280_20_OR_LATER(sc->sc_ah))
  return;

 debugfs_create_file("tx99", 0600,
       sc->debug.debugfs_phy, sc,
       &fops_tx99);
 debugfs_create_file("tx99_power", 0600,
       sc->debug.debugfs_phy, sc,
       &fops_tx99_power);
}
