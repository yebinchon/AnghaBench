
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_hw {int supp_cals; TYPE_1__* caldata; int * cal_list_curr; int * cal_list; int iq_caldata; int adcdc_caldata; int adcgain_caldata; int * cal_list_last; } ;
struct ath_common {int dummy; } ;
struct ath9k_channel {int dummy; } ;
struct TYPE_2__ {scalar_t__ CalValid; int cal_flags; } ;


 int ADC_DC_CAL ;
 int ADC_GAIN_CAL ;
 int AH_WAIT_TIMEOUT ;
 int AR_PHY_ADC_CTL ;
 int AR_PHY_ADC_CTL_OFF_PWDADC ;
 int AR_PHY_AGC_CONTROL ;
 int AR_PHY_AGC_CONTROL_CAL ;
 int AR_PHY_AGC_CONTROL_FLTR_CAL ;
 scalar_t__ AR_SREV_9100 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9160_10_OR_LATER (struct ath_hw*) ;
 scalar_t__ AR_SREV_9271 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9280_20_OR_LATER (struct ath_hw*) ;
 scalar_t__ AR_SREV_9285 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9285_12_OR_LATER (struct ath_hw*) ;
 scalar_t__ AR_SREV_9287 (struct ath_hw*) ;
 int AR_SREV_9287_11_OR_LATER (struct ath_hw*) ;
 int CALIBRATE ;
 int INIT_CAL (int *) ;
 int INSERT_CAL (struct ath_hw*,int *) ;
 int IQ_MISMATCH_CAL ;
 int NFCAL_PENDING ;
 int REG_CLR_BIT (struct ath_hw*,int ,int ) ;
 int REG_READ (struct ath_hw*,int ) ;
 int REG_SET_BIT (struct ath_hw*,int ,int ) ;
 int REG_WRITE (struct ath_hw*,int ,int) ;
 scalar_t__ ar9002_hw_is_cal_supported (struct ath_hw*,struct ath9k_channel*,int) ;
 int ar9002_hw_pa_cal (struct ath_hw*,int) ;
 int ar9285_hw_cl_cal (struct ath_hw*,struct ath9k_channel*) ;
 int ar9285_hw_clc (struct ath_hw*,struct ath9k_channel*) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_loadnf (struct ath_hw*,struct ath9k_channel*) ;
 int ath9k_hw_reset_calibration (struct ath_hw*,int *) ;
 int ath9k_hw_start_nfcal (struct ath_hw*,int) ;
 int ath9k_hw_wait (struct ath_hw*,int ,int,int ,int) ;
 int ath_dbg (struct ath_common*,int ,char*,...) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static bool ar9002_hw_init_cal(struct ath_hw *ah, struct ath9k_channel *chan)
{
 struct ath_common *common = ath9k_hw_common(ah);

 if (AR_SREV_9271(ah)) {
  if (!ar9285_hw_cl_cal(ah, chan))
   return 0;
 } else if (AR_SREV_9285(ah) && AR_SREV_9285_12_OR_LATER(ah)) {
  if (!ar9285_hw_clc(ah, chan))
   return 0;
 } else {
  if (AR_SREV_9280_20_OR_LATER(ah)) {
   if (!AR_SREV_9287_11_OR_LATER(ah))
    REG_CLR_BIT(ah, AR_PHY_ADC_CTL,
         AR_PHY_ADC_CTL_OFF_PWDADC);
   REG_SET_BIT(ah, AR_PHY_AGC_CONTROL,
        AR_PHY_AGC_CONTROL_FLTR_CAL);
  }


  REG_WRITE(ah, AR_PHY_AGC_CONTROL,
     REG_READ(ah, AR_PHY_AGC_CONTROL) |
     AR_PHY_AGC_CONTROL_CAL);


  if (!ath9k_hw_wait(ah, AR_PHY_AGC_CONTROL,
       AR_PHY_AGC_CONTROL_CAL,
       0, AH_WAIT_TIMEOUT)) {
   ath_dbg(common, CALIBRATE,
    "offset calibration failed to complete in %d ms; noisy environment?\n",
    AH_WAIT_TIMEOUT / 1000);
   return 0;
  }

  if (AR_SREV_9280_20_OR_LATER(ah)) {
   if (!AR_SREV_9287_11_OR_LATER(ah))
    REG_SET_BIT(ah, AR_PHY_ADC_CTL,
         AR_PHY_ADC_CTL_OFF_PWDADC);
   REG_CLR_BIT(ah, AR_PHY_AGC_CONTROL,
        AR_PHY_AGC_CONTROL_FLTR_CAL);
  }
 }


 ar9002_hw_pa_cal(ah, 1);
 ath9k_hw_loadnf(ah, chan);
 ath9k_hw_start_nfcal(ah, 1);

 if (ah->caldata)
  set_bit(NFCAL_PENDING, &ah->caldata->cal_flags);

 ah->cal_list = ah->cal_list_last = ah->cal_list_curr = ((void*)0);


 if (AR_SREV_9100(ah) || AR_SREV_9160_10_OR_LATER(ah)) {
  ah->supp_cals = IQ_MISMATCH_CAL;

  if (AR_SREV_9160_10_OR_LATER(ah))
   ah->supp_cals |= ADC_GAIN_CAL | ADC_DC_CAL;

  if (AR_SREV_9287(ah))
   ah->supp_cals &= ~ADC_GAIN_CAL;

  if (ar9002_hw_is_cal_supported(ah, chan, ADC_GAIN_CAL)) {
   INIT_CAL(&ah->adcgain_caldata);
   INSERT_CAL(ah, &ah->adcgain_caldata);
   ath_dbg(common, CALIBRATE,
     "enabling ADC Gain Calibration\n");
  }

  if (ar9002_hw_is_cal_supported(ah, chan, ADC_DC_CAL)) {
   INIT_CAL(&ah->adcdc_caldata);
   INSERT_CAL(ah, &ah->adcdc_caldata);
   ath_dbg(common, CALIBRATE,
     "enabling ADC DC Calibration\n");
  }

  if (ar9002_hw_is_cal_supported(ah, chan, IQ_MISMATCH_CAL)) {
   INIT_CAL(&ah->iq_caldata);
   INSERT_CAL(ah, &ah->iq_caldata);
   ath_dbg(common, CALIBRATE, "enabling IQ Calibration\n");
  }

  ah->cal_list_curr = ah->cal_list;

  if (ah->cal_list_curr)
   ath9k_hw_reset_calibration(ah, ah->cal_list_curr);
 }

 if (ah->caldata)
  ah->caldata->CalValid = 0;

 return 1;
}
