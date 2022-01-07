
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_hw {int dummy; } ;
struct ath_common {int dummy; } ;
struct ath9k_cal_list {TYPE_1__* calData; } ;
struct TYPE_2__ {int calType; int calCountMax; } ;




 int AR_PHY_CALMODE ;
 int AR_PHY_CALMODE_ADC_DC_PER ;
 int AR_PHY_CALMODE_ADC_GAIN ;
 int AR_PHY_CALMODE_IQ ;
 int AR_PHY_TIMING_CTRL4 (int ) ;
 int AR_PHY_TIMING_CTRL4_DO_CAL ;
 int AR_PHY_TIMING_CTRL4_IQCAL_LOG_COUNT_MAX ;
 int CALIBRATE ;

 int REG_RMW_FIELD (struct ath_hw*,int ,int ,int ) ;
 int REG_SET_BIT (struct ath_hw*,int ,int ) ;
 int REG_WRITE (struct ath_hw*,int ,int ) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath_dbg (struct ath_common*,int ,char*) ;

__attribute__((used)) static void ar9002_hw_setup_calibration(struct ath_hw *ah,
     struct ath9k_cal_list *currCal)
{
 struct ath_common *common = ath9k_hw_common(ah);

 REG_RMW_FIELD(ah, AR_PHY_TIMING_CTRL4(0),
        AR_PHY_TIMING_CTRL4_IQCAL_LOG_COUNT_MAX,
        currCal->calData->calCountMax);

 switch (currCal->calData->calType) {
 case 128:
  REG_WRITE(ah, AR_PHY_CALMODE, AR_PHY_CALMODE_IQ);
  ath_dbg(common, CALIBRATE,
   "starting IQ Mismatch Calibration\n");
  break;
 case 129:
  REG_WRITE(ah, AR_PHY_CALMODE, AR_PHY_CALMODE_ADC_GAIN);
  ath_dbg(common, CALIBRATE, "starting ADC Gain Calibration\n");
  break;
 case 130:
  REG_WRITE(ah, AR_PHY_CALMODE, AR_PHY_CALMODE_ADC_DC_PER);
  ath_dbg(common, CALIBRATE, "starting ADC DC Calibration\n");
  break;
 }

 REG_SET_BIT(ah, AR_PHY_TIMING_CTRL4(0),
      AR_PHY_TIMING_CTRL4_DO_CAL);
}
