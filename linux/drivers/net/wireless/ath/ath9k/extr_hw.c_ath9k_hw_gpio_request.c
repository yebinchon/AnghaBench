
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ num_gpio_pins; int gpio_mask; } ;
struct ath_hw {TYPE_1__ caps; } ;


 scalar_t__ AR_SREV_SOC (struct ath_hw*) ;
 int BIT (scalar_t__) ;
 int WARN_ON (int) ;
 int ath9k_hw_gpio_cfg_soc (struct ath_hw*,scalar_t__,int,char const*) ;
 int ath9k_hw_gpio_cfg_wmac (struct ath_hw*,scalar_t__,int,scalar_t__) ;

__attribute__((used)) static void ath9k_hw_gpio_request(struct ath_hw *ah, u32 gpio, bool out,
      const char *label, u32 ah_signal_type)
{
 WARN_ON(gpio >= ah->caps.num_gpio_pins);

 if (BIT(gpio) & ah->caps.gpio_mask)
  ath9k_hw_gpio_cfg_wmac(ah, gpio, out, ah_signal_type);
 else if (AR_SREV_SOC(ah))
  ath9k_hw_gpio_cfg_soc(ah, gpio, out, label);
 else
  WARN_ON(1);
}
