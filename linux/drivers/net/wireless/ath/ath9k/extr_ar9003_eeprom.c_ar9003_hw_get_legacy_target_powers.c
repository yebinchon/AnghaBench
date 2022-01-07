
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ath_hw {int dummy; } ;


 size_t ALL_TARGET_LEGACY_36 ;
 size_t ALL_TARGET_LEGACY_48 ;
 size_t ALL_TARGET_LEGACY_54 ;
 size_t ALL_TARGET_LEGACY_6_24 ;
 int LEGACY_TARGET_RATE_36 ;
 int LEGACY_TARGET_RATE_48 ;
 int LEGACY_TARGET_RATE_54 ;
 int LEGACY_TARGET_RATE_6_24 ;
 int ar9003_hw_eeprom_get_tgt_pwr (struct ath_hw*,int ,int ,int) ;

__attribute__((used)) static void ar9003_hw_get_legacy_target_powers(struct ath_hw *ah, u16 freq,
            u8 *targetPowerValT2,
            bool is2GHz)
{
 targetPowerValT2[ALL_TARGET_LEGACY_6_24] =
     ar9003_hw_eeprom_get_tgt_pwr(ah, LEGACY_TARGET_RATE_6_24, freq,
      is2GHz);
 targetPowerValT2[ALL_TARGET_LEGACY_36] =
     ar9003_hw_eeprom_get_tgt_pwr(ah, LEGACY_TARGET_RATE_36, freq,
      is2GHz);
 targetPowerValT2[ALL_TARGET_LEGACY_48] =
     ar9003_hw_eeprom_get_tgt_pwr(ah, LEGACY_TARGET_RATE_48, freq,
      is2GHz);
 targetPowerValT2[ALL_TARGET_LEGACY_54] =
     ar9003_hw_eeprom_get_tgt_pwr(ah, LEGACY_TARGET_RATE_54, freq,
      is2GHz);
}
