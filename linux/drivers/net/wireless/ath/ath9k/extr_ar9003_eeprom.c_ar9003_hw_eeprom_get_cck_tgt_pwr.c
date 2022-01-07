
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u16 ;
struct cal_tgt_pow_legacy {int * tPow2x; } ;
struct ar9300_eeprom {int * calTarget_freqbin_Cck; struct cal_tgt_pow_legacy* calTargetPowerCck; } ;
struct TYPE_2__ {struct ar9300_eeprom ar9300_eep; } ;
struct ath_hw {TYPE_1__ eeprom; } ;
typedef int s32 ;


 int AR9300_NUM_2G_CCK_TARGET_POWERS ;
 int ar9003_hw_power_interpolate (int ,int *,int *,size_t) ;
 int ath9k_hw_fbin2freq (int ,int) ;

__attribute__((used)) static u8 ar9003_hw_eeprom_get_cck_tgt_pwr(struct ath_hw *ah,
        u16 rateIndex, u16 freq)
{
 u16 numPiers = AR9300_NUM_2G_CCK_TARGET_POWERS, i;
 s32 targetPowerArray[AR9300_NUM_2G_CCK_TARGET_POWERS];
 s32 freqArray[AR9300_NUM_2G_CCK_TARGET_POWERS];
 struct ar9300_eeprom *eep = &ah->eeprom.ar9300_eep;
 struct cal_tgt_pow_legacy *pEepromTargetPwr = eep->calTargetPowerCck;
 u8 *pFreqBin = eep->calTarget_freqbin_Cck;





 for (i = 0; i < numPiers; i++) {
  freqArray[i] = ath9k_hw_fbin2freq(pFreqBin[i], 1);
  targetPowerArray[i] = pEepromTargetPwr[i].tPow2x[rateIndex];
 }


 return (u8) ar9003_hw_power_interpolate((s32) freq,
       freqArray,
       targetPowerArray, numPiers);
}
