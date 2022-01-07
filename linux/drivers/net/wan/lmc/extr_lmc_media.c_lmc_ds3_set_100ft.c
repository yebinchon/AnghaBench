
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int cable_length; } ;
struct TYPE_6__ {int lmc_miireg16; TYPE_1__ ictl; } ;
typedef TYPE_2__ lmc_softc_t ;


 int LMC_CTL_CABLE_LENGTH_GT_100FT ;
 int LMC_CTL_CABLE_LENGTH_LT_100FT ;
 int LMC_MII16_DS3_ZERO ;
 int lmc_mii_writereg (TYPE_2__* const,int ,int,int ) ;

__attribute__((used)) static void
lmc_ds3_set_100ft (lmc_softc_t * const sc, int ie)
{
  if (ie == LMC_CTL_CABLE_LENGTH_GT_100FT)
    {
      sc->lmc_miireg16 &= ~LMC_MII16_DS3_ZERO;
      sc->ictl.cable_length = LMC_CTL_CABLE_LENGTH_GT_100FT;
    }
  else if (ie == LMC_CTL_CABLE_LENGTH_LT_100FT)
    {
      sc->lmc_miireg16 |= LMC_MII16_DS3_ZERO;
      sc->ictl.cable_length = LMC_CTL_CABLE_LENGTH_LT_100FT;
    }
  lmc_mii_writereg (sc, 0, 16, sc->lmc_miireg16);
}
