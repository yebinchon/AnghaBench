
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ath_btcoex_hw {int * tx_prio; } ;
struct ath_hw {struct ath_btcoex_hw btcoex_hw; } ;


 int ATH_BTCOEX_STOMP_MAX ;

void ath9k_hw_btcoex_set_concur_txprio(struct ath_hw *ah, u8 *stomp_txprio)
{
 struct ath_btcoex_hw *btcoex = &ah->btcoex_hw;
 int i;

 for (i = 0; i < ATH_BTCOEX_STOMP_MAX; i++)
  btcoex->tx_prio[i] = stomp_txprio[i];
}
