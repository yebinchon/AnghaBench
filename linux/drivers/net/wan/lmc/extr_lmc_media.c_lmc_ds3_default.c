
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* lmc_media; int lmc_miireg16; } ;
typedef TYPE_2__ lmc_softc_t ;
struct TYPE_8__ {int (* set_crc_length ) (TYPE_2__* const,int ) ;int (* set_scrambler ) (TYPE_2__* const,int ) ;int (* set_cable_length ) (TYPE_2__* const,int ) ;int (* set_link_status ) (TYPE_2__* const,int ) ;} ;


 int LMC_CTL_CABLE_LENGTH_LT_100FT ;
 int LMC_CTL_CRC_LENGTH_16 ;
 int LMC_CTL_OFF ;
 int LMC_LINK_DOWN ;
 int LMC_MII16_LED_ALL ;
 int stub1 (TYPE_2__* const,int ) ;
 int stub2 (TYPE_2__* const,int ) ;
 int stub3 (TYPE_2__* const,int ) ;
 int stub4 (TYPE_2__* const,int ) ;

__attribute__((used)) static void
lmc_ds3_default (lmc_softc_t * const sc)
{
  sc->lmc_miireg16 = LMC_MII16_LED_ALL;

  sc->lmc_media->set_link_status (sc, LMC_LINK_DOWN);
  sc->lmc_media->set_cable_length (sc, LMC_CTL_CABLE_LENGTH_LT_100FT);
  sc->lmc_media->set_scrambler (sc, LMC_CTL_OFF);
  sc->lmc_media->set_crc_length (sc, LMC_CTL_CRC_LENGTH_16);
}
