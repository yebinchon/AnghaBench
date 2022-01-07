
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath9k_hw_mci {int config; } ;
struct TYPE_2__ {struct ath9k_hw_mci mci; } ;
struct ath_hw {TYPE_1__ btcoex_hw; } ;


 int ATH_MCI_CONFIG_DISABLE_AIC ;

__attribute__((used)) static bool ar9003_hw_is_aic_enabled(struct ath_hw *ah)
{
 struct ath9k_hw_mci *mci_hw = &ah->btcoex_hw.mci;





 return 0;

 if (mci_hw->config & ATH_MCI_CONFIG_DISABLE_AIC)
  return 0;

 return 1;
}
