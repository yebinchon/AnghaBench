
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ieee80211_hw {struct ath5k_hw* priv; } ;
struct ath5k_hw {int dummy; } ;


 int AR5K_ANTMODE_DEFAULT ;
 int AR5K_ANTMODE_FIXED_A ;
 int AR5K_ANTMODE_FIXED_B ;
 int EINVAL ;
 int ath5k_hw_set_antenna_mode (struct ath5k_hw*,int ) ;

__attribute__((used)) static int
ath5k_set_antenna(struct ieee80211_hw *hw, u32 tx_ant, u32 rx_ant)
{
 struct ath5k_hw *ah = hw->priv;

 if (tx_ant == 1 && rx_ant == 1)
  ath5k_hw_set_antenna_mode(ah, AR5K_ANTMODE_FIXED_A);
 else if (tx_ant == 2 && rx_ant == 2)
  ath5k_hw_set_antenna_mode(ah, AR5K_ANTMODE_FIXED_B);
 else if ((tx_ant & 3) == 3 && (rx_ant & 3) == 3)
  ath5k_hw_set_antenna_mode(ah, AR5K_ANTMODE_DEFAULT);
 else
  return -EINVAL;
 return 0;
}
