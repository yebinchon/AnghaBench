
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int imask; } ;
struct ath_beacon_config {int dummy; } ;
struct ath9k_beacon_state {int dummy; } ;


 int ATH9K_INT_BMISS ;
 int EPERM ;
 int ath9k_cmn_beacon_config_sta (struct ath_hw*,struct ath_beacon_config*,struct ath9k_beacon_state*) ;
 int ath9k_hw_disable_interrupts (struct ath_hw*) ;
 int ath9k_hw_enable_interrupts (struct ath_hw*) ;
 int ath9k_hw_set_interrupts (struct ath_hw*) ;
 int ath9k_hw_set_sta_beacon_timers (struct ath_hw*,struct ath9k_beacon_state*) ;

__attribute__((used)) static void ath9k_beacon_config_sta(struct ath_hw *ah,
        struct ath_beacon_config *conf)
{
 struct ath9k_beacon_state bs;

 if (ath9k_cmn_beacon_config_sta(ah, conf, &bs) == -EPERM)
  return;

 ath9k_hw_disable_interrupts(ah);
 ath9k_hw_set_sta_beacon_timers(ah, &bs);
 ah->imask |= ATH9K_INT_BMISS;

 ath9k_hw_set_interrupts(ah);
 ath9k_hw_enable_interrupts(ah);
}
