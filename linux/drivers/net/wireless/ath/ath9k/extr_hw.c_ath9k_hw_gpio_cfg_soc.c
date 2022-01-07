
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int gpio_requested; } ;
struct ath_hw {TYPE_1__ caps; } ;


 int BIT (int ) ;
 int GPIOF_IN ;
 int GPIOF_OUT_INIT_LOW ;
 int gpio_free (int ) ;
 scalar_t__ gpio_request_one (int ,int ,char const*) ;

__attribute__((used)) static void ath9k_hw_gpio_cfg_soc(struct ath_hw *ah, u32 gpio, bool out,
      const char *label)
{
 if (ah->caps.gpio_requested & BIT(gpio))
  return;


 gpio_free(gpio);

 if (gpio_request_one(gpio, out ? GPIOF_OUT_INIT_LOW : GPIOF_IN, label))
  return;

 ah->caps.gpio_requested |= BIT(gpio);
}
