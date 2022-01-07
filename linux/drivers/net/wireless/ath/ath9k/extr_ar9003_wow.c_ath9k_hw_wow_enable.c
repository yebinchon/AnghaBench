
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int wow_event_mask; } ;
struct ath_hw {TYPE_1__ wow; } ;


 int AH_WOW_BEACON_MISS ;
 int AH_WOW_LINK_CHANGE ;
 int AH_WOW_MAGIC_PATTERN_EN ;
 int AR_PCIE_PHY_REG3 ;
 int AR_PCIE_PM_CTRL ;
 int AR_PCIE_PM_CTRL_ENA ;
 int AR_PCU_MISC_MODE3 ;
 int AR_PMCTRL_AUX_PWR_DET ;
 int AR_PMCTRL_HOST_PME_EN ;
 int AR_PMCTRL_PWR_PM_CTRL_ENA ;
 int AR_PMCTRL_PWR_STATE_D1D3 ;
 int AR_PMCTRL_PWR_STATE_D1D3_REAL ;
 int AR_PMCTRL_WOW_PME_CLR ;
 int AR_RSSI_THR ;
 int AR_RSSI_THR_BM_THR ;
 int AR_RTC_KEEP_AWAKE ;
 scalar_t__ AR_SREV_9462 (struct ath_hw*) ;
 int AR_STA_ID1 ;
 int AR_STA_ID1_PRESERVE_SEQNUM ;
 int AR_WOW_AIFS_CNT (int ) ;
 int AR_WOW_BACK_OFF_SHIFT (int ) ;
 int AR_WOW_BCN_EN ;
 int AR_WOW_BCN_TIMO ;
 int AR_WOW_BEACON_FAIL ;
 int AR_WOW_BEACON_FAIL_EN ;
 int AR_WOW_BEACON_TIMO ;
 int AR_WOW_BEACON_TIMO_MAX ;
 int AR_WOW_BMISSTHRESHOLD ;
 int AR_WOW_CNT_AIFS_CNT ;
 int AR_WOW_CNT_KA_CNT ;
 int AR_WOW_CNT_SLOT_CNT ;
 int AR_WOW_COUNT ;
 int AR_WOW_KEEP_ALIVE ;
 int AR_WOW_KEEP_ALIVE_AUTO_DIS ;
 int AR_WOW_KEEP_ALIVE_CNT (int ) ;
 int AR_WOW_KEEP_ALIVE_DELAY ;
 int AR_WOW_KEEP_ALIVE_FAIL ;
 int AR_WOW_KEEP_ALIVE_FAIL_DIS ;
 int AR_WOW_KEEP_ALIVE_NEVER ;
 int AR_WOW_KEEP_ALIVE_TIMO ;
 int AR_WOW_MAC_INTR_EN ;
 int AR_WOW_MAGIC_EN ;
 int AR_WOW_MAGIC_PAT_FOUND ;
 int AR_WOW_PATTERN ;
 int AR_WOW_PATTERN_MATCH_LT_256B ;
 int AR_WOW_PATTERN_SUPPORTED ;
 int AR_WOW_PAT_BACKOFF ;
 int AR_WOW_SLOT_CNT (int ) ;
 int BIT (int) ;
 int KAL_DELAY ;
 int KAL_TIMEOUT ;
 int REG_CLR_BIT (struct ath_hw*,int ,int) ;
 int REG_READ (struct ath_hw*,int ) ;
 int REG_RMW_FIELD (struct ath_hw*,int ,int ,int ) ;
 int REG_SET_BIT (struct ath_hw*,int ,int) ;
 int REG_WRITE (struct ath_hw*,int ,int) ;
 scalar_t__ ath9k_hw_mci_is_enabled (struct ath_hw*) ;
 int ath9k_hw_set_powermode_wow_sleep (struct ath_hw*) ;
 int ath9k_hw_wow_set_arwr_reg (struct ath_hw*) ;
 int ath9k_wow_create_keep_alive_pattern (struct ath_hw*) ;

void ath9k_hw_wow_enable(struct ath_hw *ah, u32 pattern_enable)
{
 u32 wow_event_mask;
 u32 keep_alive, magic_pattern, host_pm_ctrl;

 wow_event_mask = ah->wow.wow_event_mask;
 REG_SET_BIT(ah, AR_PCIE_PM_CTRL, AR_PMCTRL_HOST_PME_EN |
          AR_PMCTRL_PWR_PM_CTRL_ENA |
          AR_PMCTRL_AUX_PWR_DET |
          AR_PMCTRL_WOW_PME_CLR);
 REG_CLR_BIT(ah, AR_PCIE_PM_CTRL, AR_PMCTRL_WOW_PME_CLR);
 REG_SET_BIT(ah, AR_WOW_PATTERN,
      AR_WOW_BACK_OFF_SHIFT(AR_WOW_PAT_BACKOFF));




 REG_SET_BIT(ah, AR_WOW_COUNT, AR_WOW_AIFS_CNT(AR_WOW_CNT_AIFS_CNT) |
              AR_WOW_SLOT_CNT(AR_WOW_CNT_SLOT_CNT) |
              AR_WOW_KEEP_ALIVE_CNT(AR_WOW_CNT_KA_CNT));



 if (pattern_enable & AH_WOW_BEACON_MISS)
  REG_WRITE(ah, AR_WOW_BCN_TIMO, AR_WOW_BEACON_TIMO);
 else
  REG_WRITE(ah, AR_WOW_BCN_TIMO, AR_WOW_BEACON_TIMO_MAX);




 if (!pattern_enable)
  REG_WRITE(ah, AR_WOW_KEEP_ALIVE_TIMO, AR_WOW_KEEP_ALIVE_NEVER);
 else
  REG_WRITE(ah, AR_WOW_KEEP_ALIVE_TIMO, KAL_TIMEOUT * 32);




 REG_WRITE(ah, AR_WOW_KEEP_ALIVE_DELAY, KAL_DELAY * 1000);




 ath9k_wow_create_keep_alive_pattern(ah);




 keep_alive = REG_READ(ah, AR_WOW_KEEP_ALIVE);


 keep_alive &= ~AR_WOW_KEEP_ALIVE_AUTO_DIS;

 if (pattern_enable & AH_WOW_LINK_CHANGE) {
  keep_alive &= ~AR_WOW_KEEP_ALIVE_FAIL_DIS;
  wow_event_mask |= AR_WOW_KEEP_ALIVE_FAIL;
 } else {
  keep_alive |= AR_WOW_KEEP_ALIVE_FAIL_DIS;
 }

 REG_WRITE(ah, AR_WOW_KEEP_ALIVE, keep_alive);





 REG_RMW_FIELD(ah, AR_RSSI_THR, AR_RSSI_THR_BM_THR,
        AR_WOW_BMISSTHRESHOLD);

 if (pattern_enable & AH_WOW_BEACON_MISS) {
  wow_event_mask |= AR_WOW_BEACON_FAIL;
  REG_SET_BIT(ah, AR_WOW_BCN_EN, AR_WOW_BEACON_FAIL_EN);
 } else {
  REG_CLR_BIT(ah, AR_WOW_BCN_EN, AR_WOW_BEACON_FAIL_EN);
 }




 magic_pattern = REG_READ(ah, AR_WOW_PATTERN);
 magic_pattern |= AR_WOW_MAC_INTR_EN;

 if (pattern_enable & AH_WOW_MAGIC_PATTERN_EN) {
  magic_pattern |= AR_WOW_MAGIC_EN;
  wow_event_mask |= AR_WOW_MAGIC_PAT_FOUND;
 } else {
  magic_pattern &= ~AR_WOW_MAGIC_EN;
 }

 REG_WRITE(ah, AR_WOW_PATTERN, magic_pattern);





 REG_WRITE(ah, AR_WOW_PATTERN_MATCH_LT_256B,
    AR_WOW_PATTERN_SUPPORTED);




 host_pm_ctrl = REG_READ(ah, AR_PCIE_PM_CTRL);
 host_pm_ctrl |= AR_PMCTRL_PWR_STATE_D1D3 |
   AR_PMCTRL_HOST_PME_EN |
   AR_PMCTRL_PWR_PM_CTRL_ENA;
 host_pm_ctrl &= ~AR_PCIE_PM_CTRL_ENA;

 if (AR_SREV_9462(ah)) {





  host_pm_ctrl &= ~AR_PMCTRL_PWR_STATE_D1D3;
  host_pm_ctrl |= AR_PMCTRL_PWR_STATE_D1D3_REAL;
 }

 REG_WRITE(ah, AR_PCIE_PM_CTRL, host_pm_ctrl);




 REG_CLR_BIT(ah, AR_STA_ID1, AR_STA_ID1_PRESERVE_SEQNUM);


 REG_SET_BIT(ah, AR_PCIE_PHY_REG3, BIT(13));

 ath9k_hw_wow_set_arwr_reg(ah);

 if (ath9k_hw_mci_is_enabled(ah))
  REG_WRITE(ah, AR_RTC_KEEP_AWAKE, 0x2);


 REG_CLR_BIT(ah, AR_PCU_MISC_MODE3, BIT(5));

 ath9k_hw_set_powermode_wow_sleep(ah);
 ah->wow.wow_event_mask = wow_event_mask;
}
