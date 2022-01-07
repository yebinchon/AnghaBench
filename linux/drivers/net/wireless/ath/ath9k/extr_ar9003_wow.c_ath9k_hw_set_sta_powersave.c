
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int dummy; } ;


 int AR_STA_ID1 ;
 int AR_STA_ID1_PWR_SAV ;
 scalar_t__ MCI_PS_DISABLE ;
 int MCI_STATE_GET_WLAN_PS_STATE ;
 int REG_SET_BIT (struct ath_hw*,int ,int ) ;
 scalar_t__ ar9003_mci_state (struct ath_hw*,int ) ;
 int ath9k_hw_mci_is_enabled (struct ath_hw*) ;

__attribute__((used)) static void ath9k_hw_set_sta_powersave(struct ath_hw *ah)
{
 if (!ath9k_hw_mci_is_enabled(ah))
  goto set;




 if (ar9003_mci_state(ah, MCI_STATE_GET_WLAN_PS_STATE) != MCI_PS_DISABLE)
  return;
set:
 REG_SET_BIT(ah, AR_STA_ID1, AR_STA_ID1_PWR_SAV);
}
