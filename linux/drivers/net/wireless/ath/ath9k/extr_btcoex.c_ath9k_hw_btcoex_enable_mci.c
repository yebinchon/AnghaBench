
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_btcoex_hw {int enabled; int * wlan_weight; } ;
struct ath_hw {struct ath_btcoex_hw btcoex_hw; } ;


 int AR9300_NUM_BT_WEIGHTS ;
 int AR_MCI_COEX_WL_WEIGHTS (int) ;
 int AR_QUIET1 ;
 int AR_QUIET1_QUIET_ACK_CTS_ENABLE ;
 int REG_RMW_FIELD (struct ath_hw*,int ,int ,int) ;
 int REG_WRITE (struct ath_hw*,int ,int ) ;

__attribute__((used)) static void ath9k_hw_btcoex_enable_mci(struct ath_hw *ah)
{
 struct ath_btcoex_hw *btcoex = &ah->btcoex_hw;
 int i;

 for (i = 0; i < AR9300_NUM_BT_WEIGHTS; i++)
  REG_WRITE(ah, AR_MCI_COEX_WL_WEIGHTS(i),
     btcoex->wlan_weight[i]);

 REG_RMW_FIELD(ah, AR_QUIET1, AR_QUIET1_QUIET_ACK_CTS_ENABLE, 1);
 btcoex->enabled = 1;
}
