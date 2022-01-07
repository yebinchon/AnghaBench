
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int scrambler_onoff; } ;
struct TYPE_6__ {int lmc_miireg16; TYPE_1__ ictl; } ;
typedef TYPE_2__ lmc_softc_t ;


 int LMC_CTL_OFF ;
 int LMC_CTL_ON ;
 int LMC_MII16_DS3_SCRAM ;
 int lmc_mii_writereg (TYPE_2__* const,int ,int,int ) ;

__attribute__((used)) static void
lmc_ds3_set_scram (lmc_softc_t * const sc, int ie)
{
  if (ie == LMC_CTL_ON)
    {
      sc->lmc_miireg16 |= LMC_MII16_DS3_SCRAM;
      sc->ictl.scrambler_onoff = LMC_CTL_ON;
    }
  else
    {
      sc->lmc_miireg16 &= ~LMC_MII16_DS3_SCRAM;
      sc->ictl.scrambler_onoff = LMC_CTL_OFF;
    }
  lmc_mii_writereg (sc, 0, 16, sc->lmc_miireg16);
}
