
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_btcoex_hw {int btpriority_gpio; int btactive_gpio; } ;
struct ath_hw {struct ath_btcoex_hw btcoex_hw; } ;


 int AR_GPIO_INPUT_EN_VAL ;
 int AR_GPIO_INPUT_EN_VAL_BT_ACTIVE_BB ;
 int AR_GPIO_INPUT_EN_VAL_BT_PRIORITY_BB ;
 int AR_GPIO_INPUT_MUX1 ;
 int AR_GPIO_INPUT_MUX1_BT_ACTIVE ;
 int AR_GPIO_INPUT_MUX1_BT_PRIORITY ;
 int AR_SREV_SOC (struct ath_hw*) ;
 int REG_RMW_FIELD (struct ath_hw*,int ,int ,int ) ;
 int REG_SET_BIT (struct ath_hw*,int ,int) ;
 int ath9k_hw_gpio_request_in (struct ath_hw*,int ,char*) ;

void ath9k_hw_btcoex_init_3wire(struct ath_hw *ah)
{
 struct ath_btcoex_hw *btcoex_hw = &ah->btcoex_hw;


 REG_SET_BIT(ah, AR_GPIO_INPUT_EN_VAL,
   (AR_GPIO_INPUT_EN_VAL_BT_PRIORITY_BB |
    AR_GPIO_INPUT_EN_VAL_BT_ACTIVE_BB));



 if (!AR_SREV_SOC(ah)) {
  REG_RMW_FIELD(ah, AR_GPIO_INPUT_MUX1,
         AR_GPIO_INPUT_MUX1_BT_ACTIVE,
         btcoex_hw->btactive_gpio);
  REG_RMW_FIELD(ah, AR_GPIO_INPUT_MUX1,
         AR_GPIO_INPUT_MUX1_BT_PRIORITY,
         btcoex_hw->btpriority_gpio);
 }


 ath9k_hw_gpio_request_in(ah, btcoex_hw->btactive_gpio,
     "ath9k-btactive");
 ath9k_hw_gpio_request_in(ah, btcoex_hw->btpriority_gpio,
     "ath9k-btpriority");
}
