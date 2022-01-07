
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int htc_reset_init; } ;


 int ATH9K_RESET_WARM ;
 int ar9003_mci_bt_gain_ctrl (struct ath_hw*) ;
 int ath9k_hw_init_pll (struct ath_hw*,int *) ;
 scalar_t__ ath9k_hw_mci_is_enabled (struct ath_hw*) ;
 int ath9k_hw_set_reset_reg (struct ath_hw*,int ) ;

bool ath9k_hw_phy_disable(struct ath_hw *ah)
{
 if (ath9k_hw_mci_is_enabled(ah))
  ar9003_mci_bt_gain_ctrl(ah);

 if (!ath9k_hw_set_reset_reg(ah, ATH9K_RESET_WARM))
  return 0;

 ath9k_hw_init_pll(ah, ((void*)0));
 ah->htc_reset_init = 1;
 return 1;
}
