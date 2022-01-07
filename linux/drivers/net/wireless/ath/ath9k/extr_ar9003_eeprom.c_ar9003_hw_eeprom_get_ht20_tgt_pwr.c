
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u16 ;
struct cal_tgt_pow_ht {int * tPow2x; } ;
struct ar9300_eeprom {int * calTarget_freqbin_5GHT20; struct cal_tgt_pow_ht* calTargetPower5GHT20; int * calTarget_freqbin_2GHT20; struct cal_tgt_pow_ht* calTargetPower2GHT20; } ;
struct TYPE_2__ {struct ar9300_eeprom ar9300_eep; } ;
struct ath_hw {TYPE_1__ eeprom; } ;
typedef int s32 ;


 size_t AR9300_NUM_2G_20_TARGET_POWERS ;
 int AR9300_NUM_5G_20_TARGET_POWERS ;
 int ar9003_hw_power_interpolate (int ,int *,int *,size_t) ;
 int ath9k_hw_fbin2freq (int ,int) ;

__attribute__((used)) static u8 ar9003_hw_eeprom_get_ht20_tgt_pwr(struct ath_hw *ah,
         u16 rateIndex,
         u16 freq, bool is2GHz)
{
 u16 numPiers, i;
 s32 targetPowerArray[AR9300_NUM_5G_20_TARGET_POWERS];
 s32 freqArray[AR9300_NUM_5G_20_TARGET_POWERS];
 struct ar9300_eeprom *eep = &ah->eeprom.ar9300_eep;
 struct cal_tgt_pow_ht *pEepromTargetPwr;
 u8 *pFreqBin;

 if (is2GHz) {
  numPiers = AR9300_NUM_2G_20_TARGET_POWERS;
  pEepromTargetPwr = eep->calTargetPower2GHT20;
  pFreqBin = eep->calTarget_freqbin_2GHT20;
 } else {
  numPiers = AR9300_NUM_5G_20_TARGET_POWERS;
  pEepromTargetPwr = eep->calTargetPower5GHT20;
  pFreqBin = eep->calTarget_freqbin_5GHT20;
 }





 for (i = 0; i < numPiers; i++) {
  freqArray[i] = ath9k_hw_fbin2freq(pFreqBin[i], is2GHz);
  targetPowerArray[i] = pEepromTargetPwr[i].tPow2x[rateIndex];
 }


 return (u8) ar9003_hw_power_interpolate((s32) freq,
       freqArray,
       targetPowerArray, numPiers);
}
