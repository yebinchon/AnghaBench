
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hw_hang_checks; } ;
struct ath_hw {int bb_watchdog_timeout_ms; TYPE_1__ config; } ;


 scalar_t__ AR_SREV_9300_22 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9330 (struct ath_hw*) ;
 int HW_BB_WATCHDOG ;
 int HW_MAC_HANG ;
 int HW_PHYRESTART_CLC_WAR ;

__attribute__((used)) static void ar9003_hw_init_hang_checks(struct ath_hw *ah)
{



 ah->config.hw_hang_checks |= HW_BB_WATCHDOG;
 ah->config.hw_hang_checks |= HW_MAC_HANG;




 if (AR_SREV_9300_22(ah))
  ah->config.hw_hang_checks |= HW_PHYRESTART_CLC_WAR;

 if (AR_SREV_9330(ah))
  ah->bb_watchdog_timeout_ms = 85;
 else
  ah->bb_watchdog_timeout_ms = 25;
}
