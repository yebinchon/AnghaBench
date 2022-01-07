
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int lmc_miireg16; int lmc_device; } ;
typedef TYPE_1__ lmc_softc_t ;


 int lmc_mii_writereg (TYPE_1__* const,int ,int,int) ;
 int lmc_trace (int ,char*) ;

void lmc_led_on(lmc_softc_t * const sc, u32 led)
{
    lmc_trace(sc->lmc_device, "lmc_led_on in");
    if((~sc->lmc_miireg16) & led){
        lmc_trace(sc->lmc_device, "lmc_led_on aon out");
        return;
    }

    sc->lmc_miireg16 &= ~led;
    lmc_mii_writereg(sc, 0, 16, sc->lmc_miireg16);
    lmc_trace(sc->lmc_device, "lmc_led_on out");
}
