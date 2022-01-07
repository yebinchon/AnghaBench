
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ath_hw {int dummy; } ;
struct ath_common {int dummy; } ;
struct ath9k_channel {int channel; } ;


 int IS_CHAN_2GHZ (struct ath9k_channel*) ;
 scalar_t__ IS_CHAN_HT40 (struct ath9k_channel*) ;
 int REGULATORY ;
 int ar9003_hw_get_cck_target_powers (struct ath_hw*,int ,int *) ;
 int ar9003_hw_get_ht20_target_powers (struct ath_hw*,int ,int *,int) ;
 int ar9003_hw_get_ht40_target_powers (struct ath_hw*,int ,int *,int) ;
 int ar9003_hw_get_legacy_target_powers (struct ath_hw*,int ,int *,int) ;
 unsigned int ar9300RateSize ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath_dbg (struct ath_common*,int ,char*,unsigned int,int ) ;

__attribute__((used)) static void ar9003_hw_get_target_power_eeprom(struct ath_hw *ah,
           struct ath9k_channel *chan,
           u8 *targetPowerValT2)
{
 bool is2GHz = IS_CHAN_2GHZ(chan);
 unsigned int i = 0;
 struct ath_common *common = ath9k_hw_common(ah);
 u16 freq = chan->channel;

 if (is2GHz)
  ar9003_hw_get_cck_target_powers(ah, freq, targetPowerValT2);

 ar9003_hw_get_legacy_target_powers(ah, freq, targetPowerValT2, is2GHz);
 ar9003_hw_get_ht20_target_powers(ah, freq, targetPowerValT2, is2GHz);

 if (IS_CHAN_HT40(chan))
  ar9003_hw_get_ht40_target_powers(ah, freq, targetPowerValT2,
       is2GHz);

 for (i = 0; i < ar9300RateSize; i++) {
  ath_dbg(common, REGULATORY, "TPC[%02d] 0x%08x\n",
   i, targetPowerValT2[i]);
 }
}
