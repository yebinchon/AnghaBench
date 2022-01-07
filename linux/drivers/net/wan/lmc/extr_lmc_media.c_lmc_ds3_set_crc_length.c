
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int crc_length; } ;
struct TYPE_6__ {int lmc_miireg16; TYPE_1__ ictl; } ;
typedef TYPE_2__ lmc_softc_t ;


 int LMC_CTL_CRC_LENGTH_16 ;
 int LMC_CTL_CRC_LENGTH_32 ;
 int LMC_MII16_DS3_CRC ;
 int lmc_mii_writereg (TYPE_2__* const,int ,int,int ) ;

__attribute__((used)) static void
lmc_ds3_set_crc_length (lmc_softc_t * const sc, int state)
{
  if (state == LMC_CTL_CRC_LENGTH_32)
    {

      sc->lmc_miireg16 |= LMC_MII16_DS3_CRC;
      sc->ictl.crc_length = LMC_CTL_CRC_LENGTH_32;
    }
  else
    {

      sc->lmc_miireg16 &= ~LMC_MII16_DS3_CRC;
      sc->ictl.crc_length = LMC_CTL_CRC_LENGTH_16;
    }

  lmc_mii_writereg (sc, 0, 16, sc->lmc_miireg16);
}
