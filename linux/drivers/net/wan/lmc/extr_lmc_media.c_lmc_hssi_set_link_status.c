
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lmc_miireg16; } ;
typedef TYPE_1__ lmc_softc_t ;


 int LMC_LINK_UP ;
 int LMC_MII16_HSSI_TA ;
 int lmc_mii_writereg (TYPE_1__* const,int ,int,int ) ;

__attribute__((used)) static void
lmc_hssi_set_link_status (lmc_softc_t * const sc, int state)
{
  if (state == LMC_LINK_UP)
    sc->lmc_miireg16 |= LMC_MII16_HSSI_TA;
  else
    sc->lmc_miireg16 &= ~LMC_MII16_HSSI_TA;

  lmc_mii_writereg (sc, 0, 16, sc->lmc_miireg16);
}
