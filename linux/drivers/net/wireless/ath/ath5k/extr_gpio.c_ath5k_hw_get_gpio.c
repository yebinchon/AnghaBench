
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath5k_hw {int dummy; } ;


 int AR5K_GPIODI ;
 int AR5K_GPIODI_M ;
 int AR5K_NUM_GPIO ;
 int ath5k_hw_reg_read (struct ath5k_hw*,int ) ;

u32
ath5k_hw_get_gpio(struct ath5k_hw *ah, u32 gpio)
{
 if (gpio >= AR5K_NUM_GPIO)
  return 0xffffffff;


 return ((ath5k_hw_reg_read(ah, AR5K_GPIODI) & AR5K_GPIODI_M) >> gpio) &
  0x1;
}
