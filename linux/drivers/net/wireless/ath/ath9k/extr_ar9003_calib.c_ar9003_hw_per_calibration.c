
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ath_hw {scalar_t__ cal_samples; struct ath9k_hw_cal_data* caldata; } ;
struct ath9k_percal_data {scalar_t__ calNumSamples; int calType; int (* calPostProc ) (struct ath_hw*,unsigned int) ;int (* calCollect ) (struct ath_hw*) ;} ;
struct ath9k_hw_cal_data {int CalValid; } ;
struct ath9k_channel {int dummy; } ;
struct ath9k_cal_list {scalar_t__ calState; struct ath9k_percal_data* calData; } ;


 unsigned int AR9300_MAX_CHAINS ;
 int AR_PHY_TIMING4 ;
 int AR_PHY_TIMING4_DO_CAL ;
 scalar_t__ CAL_DONE ;
 scalar_t__ CAL_RUNNING ;
 int REG_READ (struct ath_hw*,int ) ;
 int ar9003_hw_setup_calibration (struct ath_hw*,struct ath9k_cal_list*) ;
 int ath9k_hw_reset_calibration (struct ath_hw*,struct ath9k_cal_list*) ;
 int stub1 (struct ath_hw*) ;
 int stub2 (struct ath_hw*,unsigned int) ;

__attribute__((used)) static bool ar9003_hw_per_calibration(struct ath_hw *ah,
          struct ath9k_channel *ichan,
          u8 rxchainmask,
          struct ath9k_cal_list *currCal)
{
 struct ath9k_hw_cal_data *caldata = ah->caldata;
 const struct ath9k_percal_data *cur_caldata = currCal->calData;


 if (currCal->calState == CAL_RUNNING) {

  if (REG_READ(ah, AR_PHY_TIMING4) & AR_PHY_TIMING4_DO_CAL)
   return 0;




  cur_caldata->calCollect(ah);
  ah->cal_samples++;

  if (ah->cal_samples >= cur_caldata->calNumSamples) {
   unsigned int i, numChains = 0;
   for (i = 0; i < AR9300_MAX_CHAINS; i++) {
    if (rxchainmask & (1 << i))
     numChains++;
   }




   cur_caldata->calPostProc(ah, numChains);


   caldata->CalValid |= cur_caldata->calType;
   currCal->calState = CAL_DONE;
   return 1;
  } else {




   ar9003_hw_setup_calibration(ah, currCal);
  }
 } else if (!(caldata->CalValid & cur_caldata->calType)) {

  ath9k_hw_reset_calibration(ah, currCal);
 }

 return 0;
}
