
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ num_gpio_pins; int gpio_mask; int gpio_requested; } ;
struct ath_hw {TYPE_1__ caps; } ;


 scalar_t__ AR7010_GPIO_OUT ;
 scalar_t__ AR_DEVID_7010 (struct ath_hw*) ;
 scalar_t__ AR_GPIO_IN_OUT ;
 scalar_t__ AR_SREV_9271 (struct ath_hw*) ;
 int BIT (scalar_t__) ;
 int REG_RMW (struct ath_hw*,scalar_t__,scalar_t__,int) ;
 int WARN_ON (int) ;
 int gpio_set_value (scalar_t__,scalar_t__) ;

void ath9k_hw_set_gpio(struct ath_hw *ah, u32 gpio, u32 val)
{
 WARN_ON(gpio >= ah->caps.num_gpio_pins);

 if (AR_DEVID_7010(ah) || AR_SREV_9271(ah))
  val = !val;
 else
  val = !!val;

 if (BIT(gpio) & ah->caps.gpio_mask) {
  u32 out_addr = AR_DEVID_7010(ah) ?
   AR7010_GPIO_OUT : AR_GPIO_IN_OUT;

  REG_RMW(ah, out_addr, val << gpio, BIT(gpio));
 } else if (BIT(gpio) & ah->caps.gpio_requested) {
  gpio_set_value(gpio, val);
 } else {
  WARN_ON(1);
 }
}
