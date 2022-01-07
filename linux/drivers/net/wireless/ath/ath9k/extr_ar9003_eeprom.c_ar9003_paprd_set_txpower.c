
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ath_hw {int paprd_target_power; } ;
struct ath9k_channel {int dummy; } ;


 int ALL_TARGET_HT20_0_8_16 ;
 int ALL_TARGET_HT20_7 ;
 int ALL_TARGET_HT40_0_8_16 ;
 int ALL_TARGET_HT40_7 ;
 int AR_SREV_9330 (struct ath_hw*) ;
 int AR_SREV_9340 (struct ath_hw*) ;
 int AR_SREV_9462 (struct ath_hw*) ;
 int AR_SREV_9565 (struct ath_hw*) ;
 scalar_t__ IS_CHAN_2GHZ (struct ath9k_channel*) ;
 scalar_t__ IS_CHAN_HT40 (struct ath9k_channel*) ;
 int ar9003_is_paprd_enabled (struct ath_hw*) ;

__attribute__((used)) static void ar9003_paprd_set_txpower(struct ath_hw *ah,
         struct ath9k_channel *chan,
         u8 *targetPowerValT2)
{
 int i;

 if (!ar9003_is_paprd_enabled(ah))
  return;

 if (IS_CHAN_HT40(chan))
  i = ALL_TARGET_HT40_7;
 else
  i = ALL_TARGET_HT20_7;

 if (IS_CHAN_2GHZ(chan)) {
  if (!AR_SREV_9330(ah) && !AR_SREV_9340(ah) &&
      !AR_SREV_9462(ah) && !AR_SREV_9565(ah)) {
   if (IS_CHAN_HT40(chan))
    i = ALL_TARGET_HT40_0_8_16;
   else
    i = ALL_TARGET_HT20_0_8_16;
  }
 }

 ah->paprd_target_power = targetPowerValT2[i];
}
