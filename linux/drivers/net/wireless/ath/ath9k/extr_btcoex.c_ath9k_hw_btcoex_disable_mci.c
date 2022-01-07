
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_btcoex_hw {int * wlan_weight; } ;
struct ath_hw {struct ath_btcoex_hw btcoex_hw; } ;


 int AR9300_NUM_BT_WEIGHTS ;
 int AR_MCI_COEX_WL_WEIGHTS (int) ;
 int ATH_BTCOEX_STOMP_NONE ;
 int REG_WRITE (struct ath_hw*,int ,int ) ;
 int ath9k_hw_btcoex_bt_stomp (struct ath_hw*,int ) ;

__attribute__((used)) static void ath9k_hw_btcoex_disable_mci(struct ath_hw *ah)
{
 struct ath_btcoex_hw *btcoex_hw = &ah->btcoex_hw;
 int i;

 ath9k_hw_btcoex_bt_stomp(ah, ATH_BTCOEX_STOMP_NONE);

 for (i = 0; i < AR9300_NUM_BT_WEIGHTS; i++)
  REG_WRITE(ah, AR_MCI_COEX_WL_WEIGHTS(i),
     btcoex_hw->wlan_weight[i]);
}
