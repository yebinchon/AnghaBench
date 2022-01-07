
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath5k_hw {int ah_imr; } ;


 int AR5K_GPIOCR ;
 int AR5K_GPIOCR_INT_ENA ;
 int AR5K_GPIOCR_INT_SEL (unsigned int) ;
 int AR5K_GPIOCR_INT_SELH ;
 int AR5K_GPIOCR_OUT (unsigned int) ;
 int AR5K_IMR_GPIO ;
 unsigned int AR5K_NUM_GPIO ;
 int AR5K_PIMR ;
 int AR5K_REG_ENABLE_BITS (struct ath5k_hw*,int ,int ) ;
 int ath5k_hw_reg_read (struct ath5k_hw*,int ) ;
 int ath5k_hw_reg_write (struct ath5k_hw*,int,int ) ;

void
ath5k_hw_set_gpio_intr(struct ath5k_hw *ah, unsigned int gpio,
  u32 interrupt_level)
{
 u32 data;

 if (gpio >= AR5K_NUM_GPIO)
  return;




 data = (ath5k_hw_reg_read(ah, AR5K_GPIOCR) &
  ~(AR5K_GPIOCR_INT_SEL(gpio) | AR5K_GPIOCR_INT_SELH |
  AR5K_GPIOCR_INT_ENA | AR5K_GPIOCR_OUT(gpio))) |
  (AR5K_GPIOCR_INT_SEL(gpio) | AR5K_GPIOCR_INT_ENA);

 ath5k_hw_reg_write(ah, interrupt_level ? data :
  (data | AR5K_GPIOCR_INT_SELH), AR5K_GPIOCR);

 ah->ah_imr |= AR5K_IMR_GPIO;


 AR5K_REG_ENABLE_BITS(ah, AR5K_PIMR, AR5K_IMR_GPIO);
}
