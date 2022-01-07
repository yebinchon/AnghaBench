
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath5k_hw {int led_on; int led_pin; int status; } ;


 int ATH_STAT_LEDSOFT ;
 int ath5k_hw_set_gpio (struct ath5k_hw*,int ,int) ;
 int test_bit (int ,int ) ;

void ath5k_led_off(struct ath5k_hw *ah)
{
 if (!test_bit(ATH_STAT_LEDSOFT, ah->status))
  return;
 ath5k_hw_set_gpio(ah, ah->led_pin, !ah->led_on);
}
