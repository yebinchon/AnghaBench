
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath9k_hw_capabilities {int hw_caps; } ;
struct ath_hw {int WARegVal; struct ath9k_hw_capabilities caps; } ;


 int AR_MCI_INTERRUPT_RX_HW_MSG_MASK ;
 int AR_MCI_INTERRUPT_RX_MSG_EN ;
 int AR_RTC_FORCE_WAKE ;
 int AR_RTC_FORCE_WAKE_EN ;
 int AR_RTC_FORCE_WAKE_ON_INT ;
 scalar_t__ AR_SREV_9300_20_OR_LATER (struct ath_hw*) ;
 int AR_STA_ID1 ;
 int AR_STA_ID1_PWR_SAV ;
 int AR_WA ;
 int AR_WA_D3_L1_DISABLE ;
 int ATH9K_HW_CAP_AUTOSLEEP ;
 int REG_CLR_BIT (struct ath_hw*,int ,int ) ;
 int REG_SET_BIT (struct ath_hw*,int ,int ) ;
 int REG_WRITE (struct ath_hw*,int ,int) ;
 scalar_t__ ath9k_hw_mci_is_enabled (struct ath_hw*) ;
 int udelay (int) ;

__attribute__((used)) static void ath9k_set_power_network_sleep(struct ath_hw *ah)
{
 struct ath9k_hw_capabilities *pCap = &ah->caps;

 REG_SET_BIT(ah, AR_STA_ID1, AR_STA_ID1_PWR_SAV);

 if (!(pCap->hw_caps & ATH9K_HW_CAP_AUTOSLEEP)) {

  REG_WRITE(ah, AR_RTC_FORCE_WAKE,
     AR_RTC_FORCE_WAKE_ON_INT);
 } else {
  if (ath9k_hw_mci_is_enabled(ah))
   REG_CLR_BIT(ah, AR_MCI_INTERRUPT_RX_MSG_EN,
        AR_MCI_INTERRUPT_RX_HW_MSG_MASK);




  REG_CLR_BIT(ah, AR_RTC_FORCE_WAKE, AR_RTC_FORCE_WAKE_EN);

  if (ath9k_hw_mci_is_enabled(ah))
   udelay(30);
 }


 if (AR_SREV_9300_20_OR_LATER(ah))
  REG_WRITE(ah, AR_WA, ah->WARegVal & ~AR_WA_D3_L1_DISABLE);
}
