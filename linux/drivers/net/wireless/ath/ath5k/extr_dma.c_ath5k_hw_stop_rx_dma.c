
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath5k_hw {int dummy; } ;


 int AR5K_CR ;
 int AR5K_CR_RXD ;
 int AR5K_CR_RXE ;
 int ATH5K_DBG (struct ath5k_hw*,int ,char*) ;
 int ATH5K_DEBUG_DMA ;
 int EBUSY ;
 int ath5k_hw_reg_read (struct ath5k_hw*,int ) ;
 int ath5k_hw_reg_write (struct ath5k_hw*,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static int
ath5k_hw_stop_rx_dma(struct ath5k_hw *ah)
{
 unsigned int i;

 ath5k_hw_reg_write(ah, AR5K_CR_RXD, AR5K_CR);




 for (i = 1000; i > 0 &&
   (ath5k_hw_reg_read(ah, AR5K_CR) & AR5K_CR_RXE) != 0;
   i--)
  udelay(100);

 if (!i)
  ATH5K_DBG(ah, ATH5K_DEBUG_DMA,
    "failed to stop RX DMA !\n");

 return i ? 0 : -EBUSY;
}
