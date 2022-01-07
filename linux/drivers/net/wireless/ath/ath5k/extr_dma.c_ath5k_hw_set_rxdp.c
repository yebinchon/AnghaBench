
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath5k_hw {int dummy; } ;


 int AR5K_CR ;
 int AR5K_CR_RXE ;
 int AR5K_RXDP ;
 int ATH5K_DBG (struct ath5k_hw*,int ,char*) ;
 int ATH5K_DEBUG_DMA ;
 int EIO ;
 int ath5k_hw_reg_read (struct ath5k_hw*,int ) ;
 int ath5k_hw_reg_write (struct ath5k_hw*,int ,int ) ;

int
ath5k_hw_set_rxdp(struct ath5k_hw *ah, u32 phys_addr)
{
 if (ath5k_hw_reg_read(ah, AR5K_CR) & AR5K_CR_RXE) {
  ATH5K_DBG(ah, ATH5K_DEBUG_DMA,
    "tried to set RXDP while rx was active !\n");
  return -EIO;
 }

 ath5k_hw_reg_write(ah, phys_addr, AR5K_RXDP);
 return 0;
}
