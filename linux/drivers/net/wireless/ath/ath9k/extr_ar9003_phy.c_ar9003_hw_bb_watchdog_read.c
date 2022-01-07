
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int bb_watchdog_last_status; } ;


 int AR_PHY_WATCHDOG_STATUS ;
 int AR_PHY_WATCHDOG_STATUS_CLR ;
 int REG_READ (struct ath_hw*,int ) ;
 int REG_WRITE (struct ath_hw*,int ,int) ;

void ar9003_hw_bb_watchdog_read(struct ath_hw *ah)
{




 ah->bb_watchdog_last_status = REG_READ(ah, AR_PHY_WATCHDOG_STATUS);





 REG_WRITE(ah, AR_PHY_WATCHDOG_STATUS,
    ah->bb_watchdog_last_status & ~AR_PHY_WATCHDOG_STATUS_CLR);
}
