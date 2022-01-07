
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_btcoex_hw {int wlanactive_gpio; int btpriority_gpio; int btactive_gpio; } ;
struct ath_hw {struct ath_btcoex_hw btcoex_hw; } ;


 int ath9k_hw_gpio_free (struct ath_hw*,int ) ;

void ath9k_hw_btcoex_deinit(struct ath_hw *ah)
{
 struct ath_btcoex_hw *btcoex_hw = &ah->btcoex_hw;

 ath9k_hw_gpio_free(ah, btcoex_hw->btactive_gpio);
 ath9k_hw_gpio_free(ah, btcoex_hw->btpriority_gpio);
 ath9k_hw_gpio_free(ah, btcoex_hw->wlanactive_gpio);
}
