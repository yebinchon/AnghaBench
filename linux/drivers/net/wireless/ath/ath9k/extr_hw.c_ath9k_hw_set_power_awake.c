
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {int WARegVal; } ;


 int AR_RTC_FORCE_WAKE ;
 int AR_RTC_FORCE_WAKE_EN ;
 int AR_RTC_RESET ;
 int AR_RTC_RESET_EN ;
 int AR_RTC_STATUS ;
 int AR_RTC_STATUS_M ;
 int AR_RTC_STATUS_ON ;
 int AR_RTC_STATUS_SHUTDOWN ;
 scalar_t__ AR_SREV_9100 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9300_20_OR_LATER (struct ath_hw*) ;
 int AR_STA_ID1 ;
 int AR_STA_ID1_PWR_SAV ;
 int AR_WA ;
 int ATH9K_RESET_POWER_ON ;
 int POWER_UP_TIME ;
 int REG_CLR_BIT (struct ath_hw*,int ,int ) ;
 int REG_READ (struct ath_hw*,int ) ;
 int REG_SET_BIT (struct ath_hw*,int ,int ) ;
 int REG_WRITE (struct ath_hw*,int ,int ) ;
 int ar9003_mci_set_power_awake (struct ath_hw*) ;
 int ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_init_pll (struct ath_hw*,int *) ;
 scalar_t__ ath9k_hw_mci_is_enabled (struct ath_hw*) ;
 int ath9k_hw_set_reset_reg (struct ath_hw*,int ) ;
 int ath_err (int ,char*,int) ;
 int mdelay (int) ;
 int udelay (int) ;

__attribute__((used)) static bool ath9k_hw_set_power_awake(struct ath_hw *ah)
{
 u32 val;
 int i;


 if (AR_SREV_9300_20_OR_LATER(ah)) {
  REG_WRITE(ah, AR_WA, ah->WARegVal);
  udelay(10);
 }

 if ((REG_READ(ah, AR_RTC_STATUS) &
      AR_RTC_STATUS_M) == AR_RTC_STATUS_SHUTDOWN) {
  if (!ath9k_hw_set_reset_reg(ah, ATH9K_RESET_POWER_ON)) {
   return 0;
  }
  if (!AR_SREV_9300_20_OR_LATER(ah))
   ath9k_hw_init_pll(ah, ((void*)0));
 }
 if (AR_SREV_9100(ah))
  REG_SET_BIT(ah, AR_RTC_RESET,
       AR_RTC_RESET_EN);

 REG_SET_BIT(ah, AR_RTC_FORCE_WAKE,
      AR_RTC_FORCE_WAKE_EN);
 if (AR_SREV_9100(ah))
  mdelay(10);
 else
  udelay(50);

 for (i = POWER_UP_TIME / 50; i > 0; i--) {
  val = REG_READ(ah, AR_RTC_STATUS) & AR_RTC_STATUS_M;
  if (val == AR_RTC_STATUS_ON)
   break;
  udelay(50);
  REG_SET_BIT(ah, AR_RTC_FORCE_WAKE,
       AR_RTC_FORCE_WAKE_EN);
 }
 if (i == 0) {
  ath_err(ath9k_hw_common(ah),
   "Failed to wakeup in %uus\n",
   POWER_UP_TIME / 20);
  return 0;
 }

 if (ath9k_hw_mci_is_enabled(ah))
  ar9003_mci_set_power_awake(ah);

 REG_CLR_BIT(ah, AR_STA_ID1, AR_STA_ID1_PWR_SAV);

 return 1;
}
