
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_btcoex_hw {int enabled; scalar_t__ scheme; int wlanactive_gpio; } ;
struct ath_hw {struct ath_btcoex_hw btcoex_hw; } ;


 int AR9300_NUM_BT_WEIGHTS ;
 int AR_BT_COEX_BT_WEIGHTS (int) ;
 int AR_BT_COEX_MODE ;
 int AR_BT_COEX_MODE2 ;
 int AR_BT_COEX_WEIGHT ;
 int AR_BT_COEX_WL_WEIGHTS0 ;
 int AR_BT_COEX_WL_WEIGHTS1 ;
 int AR_BT_MODE ;
 int AR_BT_QUIET ;
 int AR_GPIO_OUTPUT_MUX_AS_OUTPUT ;
 scalar_t__ AR_SREV_9300_20_OR_LATER (struct ath_hw*) ;
 scalar_t__ ATH_BTCOEX_CFG_3WIRE ;
 scalar_t__ ATH_BTCOEX_CFG_MCI ;
 int REG_WRITE (struct ath_hw*,int ,int) ;
 int ath9k_hw_btcoex_disable_mci (struct ath_hw*) ;
 scalar_t__ ath9k_hw_get_btcoex_scheme (struct ath_hw*) ;
 int ath9k_hw_gpio_request_out (struct ath_hw*,int ,int *,int ) ;
 int ath9k_hw_set_gpio (struct ath_hw*,int ,int ) ;

void ath9k_hw_btcoex_disable(struct ath_hw *ah)
{
 struct ath_btcoex_hw *btcoex_hw = &ah->btcoex_hw;
 int i;

 btcoex_hw->enabled = 0;

 if (ath9k_hw_get_btcoex_scheme(ah) == ATH_BTCOEX_CFG_MCI) {
  ath9k_hw_btcoex_disable_mci(ah);
  return;
 }

 if (!AR_SREV_9300_20_OR_LATER(ah))
  ath9k_hw_set_gpio(ah, btcoex_hw->wlanactive_gpio, 0);

 ath9k_hw_gpio_request_out(ah, btcoex_hw->wlanactive_gpio,
      ((void*)0), AR_GPIO_OUTPUT_MUX_AS_OUTPUT);

 if (btcoex_hw->scheme == ATH_BTCOEX_CFG_3WIRE) {
  REG_WRITE(ah, AR_BT_COEX_MODE, AR_BT_QUIET | AR_BT_MODE);
  REG_WRITE(ah, AR_BT_COEX_MODE2, 0);

  if (AR_SREV_9300_20_OR_LATER(ah)) {
   REG_WRITE(ah, AR_BT_COEX_WL_WEIGHTS0, 0);
   REG_WRITE(ah, AR_BT_COEX_WL_WEIGHTS1, 0);
   for (i = 0; i < AR9300_NUM_BT_WEIGHTS; i++)
    REG_WRITE(ah, AR_BT_COEX_BT_WEIGHTS(i), 0);
  } else
   REG_WRITE(ah, AR_BT_COEX_WEIGHT, 0);

 }
}
