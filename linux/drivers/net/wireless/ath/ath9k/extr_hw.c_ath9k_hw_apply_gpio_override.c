
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {int gpio_mask; int gpio_val; } ;


 int AR_GPIO_OUTPUT_MUX_AS_OUTPUT ;
 int BIT (int) ;
 int ath9k_hw_gpio_free (struct ath_hw*,int) ;
 int ath9k_hw_gpio_request_out (struct ath_hw*,int,int *,int ) ;
 int ath9k_hw_set_gpio (struct ath_hw*,int,int) ;

__attribute__((used)) static void ath9k_hw_apply_gpio_override(struct ath_hw *ah)
{
 u32 gpio_mask = ah->gpio_mask;
 int i;

 for (i = 0; gpio_mask; i++, gpio_mask >>= 1) {
  if (!(gpio_mask & 1))
   continue;

  ath9k_hw_gpio_request_out(ah, i, ((void*)0),
       AR_GPIO_OUTPUT_MUX_AS_OUTPUT);
  ath9k_hw_set_gpio(ah, i, !!(ah->gpio_val & BIT(i)));
  ath9k_hw_gpio_free(ah, i);
 }
}
