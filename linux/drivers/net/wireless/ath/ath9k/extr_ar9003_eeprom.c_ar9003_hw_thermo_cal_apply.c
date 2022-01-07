
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {int dummy; } ;


 int AR_PHY_BB_THERM_ADC_3 ;
 int AR_PHY_BB_THERM_ADC_3_THERM_ADC_OFFSET ;
 int AR_PHY_BB_THERM_ADC_3_THERM_ADC_SCALE_GAIN ;
 int AR_SREV_9462_20_OR_LATER (struct ath_hw*) ;
 int REG_RMW_FIELD (struct ath_hw*,int ,int ,int) ;
 int ar9300_otp_read_word (struct ath_hw*,int,int*) ;

__attribute__((used)) static void ar9003_hw_thermo_cal_apply(struct ath_hw *ah)
{
 u32 data, ko, kg;

 if (!AR_SREV_9462_20_OR_LATER(ah))
  return;

 ar9300_otp_read_word(ah, 1, &data);
 ko = data & 0xff;
 kg = (data >> 8) & 0xff;
 if (ko || kg) {
  REG_RMW_FIELD(ah, AR_PHY_BB_THERM_ADC_3,
         AR_PHY_BB_THERM_ADC_3_THERM_ADC_OFFSET, ko);
  REG_RMW_FIELD(ah, AR_PHY_BB_THERM_ADC_3,
         AR_PHY_BB_THERM_ADC_3_THERM_ADC_SCALE_GAIN,
         kg + 256);
 }
}
