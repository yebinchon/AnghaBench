
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hw_caps; } ;
struct ath_btcoex_hw {void* scheme; } ;
struct ath_hw {TYPE_1__ caps; struct ath_btcoex_hw btcoex_hw; } ;
struct ath_common {int btcoex_enabled; } ;


 scalar_t__ AR_SREV_9280_20_OR_LATER (struct ath_hw*) ;
 scalar_t__ AR_SREV_9285 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9300_20_OR_LATER (struct ath_hw*) ;
 int ATH9K_HW_CAP_MCI ;
 int ATH_BTACTIVE_GPIO_9280 ;
 int ATH_BTACTIVE_GPIO_9300 ;
 void* ATH_BTCOEX_CFG_2WIRE ;
 void* ATH_BTCOEX_CFG_3WIRE ;
 void* ATH_BTCOEX_CFG_MCI ;
 void* ATH_BTCOEX_CFG_NONE ;
 int ATH_BTPRIORITY_GPIO_9285 ;
 int ATH_BTPRIORITY_GPIO_9300 ;
 int ATH_WLANACTIVE_GPIO_9280 ;
 int ATH_WLANACTIVE_GPIO_9300 ;
 int ath9k_hw_btcoex_pin_init (struct ath_hw*,int ,int ,int ) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;

void ath9k_hw_btcoex_init_scheme(struct ath_hw *ah)
{
 struct ath_common *common = ath9k_hw_common(ah);
 struct ath_btcoex_hw *btcoex_hw = &ah->btcoex_hw;




 if (!common->btcoex_enabled) {
  btcoex_hw->scheme = ATH_BTCOEX_CFG_NONE;
  return;
 }

 if (ah->caps.hw_caps & ATH9K_HW_CAP_MCI) {
  btcoex_hw->scheme = ATH_BTCOEX_CFG_MCI;
 } else if (AR_SREV_9300_20_OR_LATER(ah)) {
  btcoex_hw->scheme = ATH_BTCOEX_CFG_3WIRE;

  ath9k_hw_btcoex_pin_init(ah, ATH_WLANACTIVE_GPIO_9300,
      ATH_BTACTIVE_GPIO_9300,
      ATH_BTPRIORITY_GPIO_9300);
 } else if (AR_SREV_9280_20_OR_LATER(ah)) {
  if (AR_SREV_9285(ah))
   btcoex_hw->scheme = ATH_BTCOEX_CFG_3WIRE;
  else
   btcoex_hw->scheme = ATH_BTCOEX_CFG_2WIRE;

  ath9k_hw_btcoex_pin_init(ah, ATH_WLANACTIVE_GPIO_9280,
      ATH_BTACTIVE_GPIO_9280,
      ATH_BTPRIORITY_GPIO_9285);
 }
}
