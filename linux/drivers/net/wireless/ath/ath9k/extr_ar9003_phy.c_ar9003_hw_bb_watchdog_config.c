
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {int bb_watchdog_timeout_ms; scalar_t__ curchan; } ;
struct ath_common {int dummy; } ;


 int AR_PHY_WATCHDOG_CNTL2_MASK ;
 int AR_PHY_WATCHDOG_CTL_1 ;
 int AR_PHY_WATCHDOG_CTL_2 ;
 int AR_PHY_WATCHDOG_IDLE_ENABLE ;
 int AR_PHY_WATCHDOG_IDLE_MASK ;
 int AR_PHY_WATCHDOG_IRQ_ENABLE ;
 int AR_PHY_WATCHDOG_NON_IDLE_ENABLE ;
 int AR_PHY_WATCHDOG_NON_IDLE_MASK ;
 int AR_PHY_WATCHDOG_RST_ENABLE ;
 scalar_t__ IS_CHAN_HT40 (scalar_t__) ;
 int REG_READ (struct ath_hw*,int ) ;
 int REG_WRITE (struct ath_hw*,int ,int) ;
 int RESET ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath_dbg (struct ath_common*,int ,char*,...) ;

void ar9003_hw_bb_watchdog_config(struct ath_hw *ah)
{
 struct ath_common *common = ath9k_hw_common(ah);
 u32 idle_tmo_ms = ah->bb_watchdog_timeout_ms;
 u32 val, idle_count;

 if (!idle_tmo_ms) {

  REG_WRITE(ah, AR_PHY_WATCHDOG_CTL_2,
     REG_READ(ah, AR_PHY_WATCHDOG_CTL_2) &
     ~(AR_PHY_WATCHDOG_RST_ENABLE |
       AR_PHY_WATCHDOG_IRQ_ENABLE));


  REG_WRITE(ah, AR_PHY_WATCHDOG_CTL_1,
     REG_READ(ah, AR_PHY_WATCHDOG_CTL_1) &
     ~(AR_PHY_WATCHDOG_NON_IDLE_ENABLE |
       AR_PHY_WATCHDOG_IDLE_ENABLE));

  ath_dbg(common, RESET, "Disabled BB Watchdog\n");
  return;
 }


 val = REG_READ(ah, AR_PHY_WATCHDOG_CTL_2) & AR_PHY_WATCHDOG_CNTL2_MASK;
 REG_WRITE(ah, AR_PHY_WATCHDOG_CTL_2,
    (val | AR_PHY_WATCHDOG_IRQ_ENABLE) &
    ~AR_PHY_WATCHDOG_RST_ENABLE);


 if (idle_tmo_ms > 10000)
  idle_tmo_ms = 10000;
 idle_count = (100 * idle_tmo_ms) / 74;
 if (ah->curchan && IS_CHAN_HT40(ah->curchan))
  idle_count = (100 * idle_tmo_ms) / 37;





 REG_WRITE(ah, AR_PHY_WATCHDOG_CTL_1,
    AR_PHY_WATCHDOG_NON_IDLE_ENABLE |
    AR_PHY_WATCHDOG_IDLE_MASK |
    (AR_PHY_WATCHDOG_NON_IDLE_MASK & (idle_count << 2)));

 ath_dbg(common, RESET, "Enabled BB Watchdog timeout (%u ms)\n",
  idle_tmo_ms);
}
