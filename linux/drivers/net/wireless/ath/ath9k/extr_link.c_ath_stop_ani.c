
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_softc {int sc_ah; } ;
struct TYPE_2__ {int timer; } ;
struct ath_common {TYPE_1__ ani; } ;


 int ANI ;
 struct ath_common* ath9k_hw_common (int ) ;
 int ath_dbg (struct ath_common*,int ,char*) ;
 int del_timer_sync (int *) ;

void ath_stop_ani(struct ath_softc *sc)
{
 struct ath_common *common = ath9k_hw_common(sc->sc_ah);

 ath_dbg(common, ANI, "Stopping ANI\n");
 del_timer_sync(&common->ani.timer);
}
