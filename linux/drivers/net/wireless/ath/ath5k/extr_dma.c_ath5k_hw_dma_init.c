
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath5k_hw {scalar_t__ ah_version; int ah_imr; } ;


 scalar_t__ AR5K_AR5210 ;
 int AR5K_DMASIZE_128B ;
 int AR5K_REG_WRITE_BITS (struct ath5k_hw*,int ,int ,int ) ;
 int AR5K_RXCFG ;
 int AR5K_RXCFG_SDMAMW ;
 int AR5K_TXCFG ;
 int AR5K_TXCFG_SDMAMR ;
 int ath5k_hw_set_imr (struct ath5k_hw*,int ) ;

void
ath5k_hw_dma_init(struct ath5k_hw *ah)
{
 if (ah->ah_version != AR5K_AR5210) {
  AR5K_REG_WRITE_BITS(ah, AR5K_TXCFG,
   AR5K_TXCFG_SDMAMR, AR5K_DMASIZE_128B);
  AR5K_REG_WRITE_BITS(ah, AR5K_RXCFG,
   AR5K_RXCFG_SDMAMW, AR5K_DMASIZE_128B);
 }


 if (ah->ah_version != AR5K_AR5210)
  ath5k_hw_set_imr(ah, ah->ah_imr);

}
