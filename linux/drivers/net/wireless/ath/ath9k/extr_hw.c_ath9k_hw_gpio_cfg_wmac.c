
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {int dummy; } ;


 int AR7010_GPIO_OE ;
 int AR7010_GPIO_OE_AS_INPUT ;
 int AR7010_GPIO_OE_AS_OUTPUT ;
 int AR7010_GPIO_OE_MASK ;
 scalar_t__ AR_DEVID_7010 (struct ath_hw*) ;
 int AR_GPIO_OE_OUT ;
 int AR_GPIO_OE_OUT_DRV ;
 int AR_GPIO_OE_OUT_DRV_ALL ;
 int AR_GPIO_OE_OUT_DRV_NO ;
 scalar_t__ AR_SREV_SOC (struct ath_hw*) ;
 int REG_RMW (struct ath_hw*,int ,int,int) ;
 int ath9k_hw_gpio_cfg_output_mux (struct ath_hw*,int,int) ;

__attribute__((used)) static void ath9k_hw_gpio_cfg_wmac(struct ath_hw *ah, u32 gpio, bool out,
       u32 ah_signal_type)
{
 u32 gpio_set, gpio_shift = gpio;

 if (AR_DEVID_7010(ah)) {
  gpio_set = out ?
   AR7010_GPIO_OE_AS_OUTPUT : AR7010_GPIO_OE_AS_INPUT;
  REG_RMW(ah, AR7010_GPIO_OE, gpio_set << gpio_shift,
   AR7010_GPIO_OE_MASK << gpio_shift);
 } else if (AR_SREV_SOC(ah)) {
  gpio_set = out ? 1 : 0;
  REG_RMW(ah, AR_GPIO_OE_OUT, gpio_set << gpio_shift,
   gpio_set << gpio_shift);
 } else {
  gpio_shift = gpio << 1;
  gpio_set = out ?
   AR_GPIO_OE_OUT_DRV_ALL : AR_GPIO_OE_OUT_DRV_NO;
  REG_RMW(ah, AR_GPIO_OE_OUT, gpio_set << gpio_shift,
   AR_GPIO_OE_OUT_DRV << gpio_shift);

  if (out)
   ath9k_hw_gpio_cfg_output_mux(ah, gpio, ah_signal_type);
 }
}
