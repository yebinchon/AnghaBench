
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct ath_hw {int dummy; } ;


 size_t ALL_TARGET_HT40_0_8_16 ;
 size_t ALL_TARGET_HT40_12 ;
 size_t ALL_TARGET_HT40_13 ;
 size_t ALL_TARGET_HT40_14 ;
 size_t ALL_TARGET_HT40_15 ;
 size_t ALL_TARGET_HT40_1_3_9_11_17_19 ;
 size_t ALL_TARGET_HT40_20 ;
 size_t ALL_TARGET_HT40_21 ;
 size_t ALL_TARGET_HT40_22 ;
 size_t ALL_TARGET_HT40_23 ;
 size_t ALL_TARGET_HT40_4 ;
 size_t ALL_TARGET_HT40_5 ;
 size_t ALL_TARGET_HT40_6 ;
 size_t ALL_TARGET_HT40_7 ;
 int HT_TARGET_RATE_0_8_16 ;
 int HT_TARGET_RATE_12 ;
 int HT_TARGET_RATE_13 ;
 int HT_TARGET_RATE_14 ;
 int HT_TARGET_RATE_15 ;
 int HT_TARGET_RATE_1_3_9_11_17_19 ;
 int HT_TARGET_RATE_20 ;
 int HT_TARGET_RATE_21 ;
 int HT_TARGET_RATE_22 ;
 int HT_TARGET_RATE_23 ;
 int HT_TARGET_RATE_4 ;
 int HT_TARGET_RATE_5 ;
 int HT_TARGET_RATE_6 ;
 int HT_TARGET_RATE_7 ;
 scalar_t__ ar9003_hw_eeprom_get_ht40_tgt_pwr (struct ath_hw*,int ,int ,int) ;

__attribute__((used)) static void ar9003_hw_get_ht40_target_powers(struct ath_hw *ah,
         u16 freq,
         u8 *targetPowerValT2,
         bool is2GHz)
{

 u8 ht40PowerIncForPdadc = 0;

 targetPowerValT2[ALL_TARGET_HT40_0_8_16] =
     ar9003_hw_eeprom_get_ht40_tgt_pwr(ah, HT_TARGET_RATE_0_8_16, freq,
           is2GHz) + ht40PowerIncForPdadc;
 targetPowerValT2[ALL_TARGET_HT40_1_3_9_11_17_19] =
     ar9003_hw_eeprom_get_ht40_tgt_pwr(ah, HT_TARGET_RATE_1_3_9_11_17_19,
           freq,
           is2GHz) + ht40PowerIncForPdadc;
 targetPowerValT2[ALL_TARGET_HT40_4] =
     ar9003_hw_eeprom_get_ht40_tgt_pwr(ah, HT_TARGET_RATE_4, freq,
           is2GHz) + ht40PowerIncForPdadc;
 targetPowerValT2[ALL_TARGET_HT40_5] =
     ar9003_hw_eeprom_get_ht40_tgt_pwr(ah, HT_TARGET_RATE_5, freq,
           is2GHz) + ht40PowerIncForPdadc;
 targetPowerValT2[ALL_TARGET_HT40_6] =
     ar9003_hw_eeprom_get_ht40_tgt_pwr(ah, HT_TARGET_RATE_6, freq,
           is2GHz) + ht40PowerIncForPdadc;
 targetPowerValT2[ALL_TARGET_HT40_7] =
     ar9003_hw_eeprom_get_ht40_tgt_pwr(ah, HT_TARGET_RATE_7, freq,
           is2GHz) + ht40PowerIncForPdadc;
 targetPowerValT2[ALL_TARGET_HT40_12] =
     ar9003_hw_eeprom_get_ht40_tgt_pwr(ah, HT_TARGET_RATE_12, freq,
           is2GHz) + ht40PowerIncForPdadc;
 targetPowerValT2[ALL_TARGET_HT40_13] =
     ar9003_hw_eeprom_get_ht40_tgt_pwr(ah, HT_TARGET_RATE_13, freq,
           is2GHz) + ht40PowerIncForPdadc;
 targetPowerValT2[ALL_TARGET_HT40_14] =
     ar9003_hw_eeprom_get_ht40_tgt_pwr(ah, HT_TARGET_RATE_14, freq,
           is2GHz) + ht40PowerIncForPdadc;
 targetPowerValT2[ALL_TARGET_HT40_15] =
     ar9003_hw_eeprom_get_ht40_tgt_pwr(ah, HT_TARGET_RATE_15, freq,
           is2GHz) + ht40PowerIncForPdadc;
 targetPowerValT2[ALL_TARGET_HT40_20] =
     ar9003_hw_eeprom_get_ht40_tgt_pwr(ah, HT_TARGET_RATE_20, freq,
           is2GHz) + ht40PowerIncForPdadc;
 targetPowerValT2[ALL_TARGET_HT40_21] =
     ar9003_hw_eeprom_get_ht40_tgt_pwr(ah, HT_TARGET_RATE_21, freq,
           is2GHz) + ht40PowerIncForPdadc;
 targetPowerValT2[ALL_TARGET_HT40_22] =
     ar9003_hw_eeprom_get_ht40_tgt_pwr(ah, HT_TARGET_RATE_22, freq,
           is2GHz) + ht40PowerIncForPdadc;
 targetPowerValT2[ALL_TARGET_HT40_23] =
     ar9003_hw_eeprom_get_ht40_tgt_pwr(ah, HT_TARGET_RATE_23, freq,
           is2GHz) + ht40PowerIncForPdadc;
}
