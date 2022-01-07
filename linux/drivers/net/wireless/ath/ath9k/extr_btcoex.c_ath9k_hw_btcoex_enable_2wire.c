
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_btcoex_hw {int wlanactive_gpio; } ;
struct ath_hw {struct ath_btcoex_hw btcoex_hw; } ;


 int AR_GPIO_OUTPUT_MUX_AS_TX_FRAME ;
 int ath9k_hw_gpio_request_out (struct ath_hw*,int ,char*,int ) ;

__attribute__((used)) static void ath9k_hw_btcoex_enable_2wire(struct ath_hw *ah)
{
 struct ath_btcoex_hw *btcoex_hw = &ah->btcoex_hw;


 ath9k_hw_gpio_request_out(ah, btcoex_hw->wlanactive_gpio,
      "ath9k-wlanactive",
      AR_GPIO_OUTPUT_MUX_AS_TX_FRAME);
}
