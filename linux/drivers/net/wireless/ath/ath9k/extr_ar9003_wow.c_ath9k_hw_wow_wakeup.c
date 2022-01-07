
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int wow_event_mask; int wow_event_mask2; } ;
struct ath_hw {TYPE_1__ wow; scalar_t__ is_pciexpress; } ;


 int AH_WOW_BEACON_MISS ;
 int AH_WOW_LINK_CHANGE ;
 int AH_WOW_MAGIC_PATTERN_EN ;
 int AH_WOW_USER_PATTERN_EN ;
 int AR_DC_TSF2_ENABLE ;
 int AR_DIRECT_CONNECT ;
 int AR_MAC_PCU_WOW4 ;
 int AR_PCIE_PM_CTRL ;
 int AR_PMCTRL_PWR_STATE_D1D3 ;
 int AR_PMCTRL_WOW_PME_CLR ;
 int AR_RSSI_THR ;
 scalar_t__ AR_SREV_9462 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9485 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9565 (struct ath_hw*) ;
 scalar_t__ AR_WOW2_PATTERN_FOUND (int) ;
 int AR_WOW_BEACON_FAIL ;
 int AR_WOW_CLEAR_EVENTS (int) ;
 int AR_WOW_CLEAR_EVENTS2 (int) ;
 int AR_WOW_KEEP_ALIVE_FAIL ;
 int AR_WOW_MAGIC_PAT_FOUND ;
 int AR_WOW_PATTERN ;
 scalar_t__ AR_WOW_PATTERN_FOUND (int) ;
 int AR_WOW_STATUS (int) ;
 int AR_WOW_STATUS2 (int) ;
 int INIT_RSSI_THR ;
 int REG_READ (struct ath_hw*,int ) ;
 int REG_RMW (struct ath_hw*,int ,int ,int ) ;
 int REG_WRITE (struct ath_hw*,int ,int ) ;
 int ath9k_hw_configpcipowersave (struct ath_hw*,int) ;
 int ath9k_hw_gen_timer_start_tsf2 (struct ath_hw*) ;

u32 ath9k_hw_wow_wakeup(struct ath_hw *ah)
{
 u32 wow_status = 0;
 u32 val = 0, rval;





 rval = REG_READ(ah, AR_WOW_PATTERN);
 val = AR_WOW_STATUS(rval);






 val &= ah->wow.wow_event_mask;

 if (val) {
  if (val & AR_WOW_MAGIC_PAT_FOUND)
   wow_status |= AH_WOW_MAGIC_PATTERN_EN;
  if (AR_WOW_PATTERN_FOUND(val))
   wow_status |= AH_WOW_USER_PATTERN_EN;
  if (val & AR_WOW_KEEP_ALIVE_FAIL)
   wow_status |= AH_WOW_LINK_CHANGE;
  if (val & AR_WOW_BEACON_FAIL)
   wow_status |= AH_WOW_BEACON_MISS;
 }

 rval = REG_READ(ah, AR_MAC_PCU_WOW4);
 val = AR_WOW_STATUS2(rval);
 val &= ah->wow.wow_event_mask2;

 if (val) {
  if (AR_WOW2_PATTERN_FOUND(val))
   wow_status |= AH_WOW_USER_PATTERN_EN;
 }
 REG_RMW(ah, AR_PCIE_PM_CTRL, AR_PMCTRL_WOW_PME_CLR,
  AR_PMCTRL_PWR_STATE_D1D3);




 REG_WRITE(ah, AR_WOW_PATTERN,
    AR_WOW_CLEAR_EVENTS(REG_READ(ah, AR_WOW_PATTERN)));
 REG_WRITE(ah, AR_MAC_PCU_WOW4,
    AR_WOW_CLEAR_EVENTS2(REG_READ(ah, AR_MAC_PCU_WOW4)));




 REG_WRITE(ah, AR_RSSI_THR, INIT_RSSI_THR);
 if (ah->is_pciexpress)
  ath9k_hw_configpcipowersave(ah, 0);

 if (AR_SREV_9462(ah) || AR_SREV_9565(ah) || AR_SREV_9485(ah)) {
  u32 dc = REG_READ(ah, AR_DIRECT_CONNECT);

  if (!(dc & AR_DC_TSF2_ENABLE))
   ath9k_hw_gen_timer_start_tsf2(ah);
 }

 ah->wow.wow_event_mask = 0;
 ah->wow.wow_event_mask2 = 0;

 return wow_status;
}
