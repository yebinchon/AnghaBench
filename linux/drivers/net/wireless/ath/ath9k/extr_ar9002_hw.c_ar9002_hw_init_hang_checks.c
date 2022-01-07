
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hw_hang_checks; } ;
struct ath_hw {TYPE_1__ config; } ;


 scalar_t__ AR_SREV_5416 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9100 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9160 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9280 (struct ath_hw*) ;
 int HW_BB_DFS_HANG ;
 int HW_BB_RIFS_HANG ;
 int HW_BB_RX_CLEAR_STUCK_HANG ;
 int HW_MAC_HANG ;

__attribute__((used)) static void ar9002_hw_init_hang_checks(struct ath_hw *ah)
{
 if (AR_SREV_9100(ah) || AR_SREV_9160(ah)) {
  ah->config.hw_hang_checks |= HW_BB_RIFS_HANG;
  ah->config.hw_hang_checks |= HW_BB_DFS_HANG;
 }

 if (AR_SREV_9280(ah))
  ah->config.hw_hang_checks |= HW_BB_RX_CLEAR_STUCK_HANG;

 if (AR_SREV_5416(ah) || AR_SREV_9100(ah) || AR_SREV_9160(ah))
  ah->config.hw_hang_checks |= HW_MAC_HANG;
}
