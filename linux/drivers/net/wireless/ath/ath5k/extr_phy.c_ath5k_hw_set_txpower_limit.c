
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ath5k_hw {int ah_current_channel; } ;


 int ATH5K_DBG (struct ath5k_hw*,int ,char*,int ) ;
 int ATH5K_DEBUG_TXPOWER ;
 int ath5k_hw_txpower (struct ath5k_hw*,int ,int ) ;

int
ath5k_hw_set_txpower_limit(struct ath5k_hw *ah, u8 txpower)
{
 ATH5K_DBG(ah, ATH5K_DEBUG_TXPOWER,
  "changing txpower to %d\n", txpower);

 return ath5k_hw_txpower(ah, ah->ah_current_channel, txpower);
}
