
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ath_hw {int curchan; struct ath9k_cal_list* cal_list_curr; } ;
struct ath9k_channel {int dummy; } ;
struct ath9k_cal_list {scalar_t__ calState; struct ath9k_cal_list* calNext; } ;


 scalar_t__ CAL_RUNNING ;
 scalar_t__ CAL_WAITING ;
 int ar9003_hw_per_calibration (struct ath_hw*,struct ath9k_channel*,int ,struct ath9k_cal_list*) ;
 scalar_t__ ath9k_hw_getnf (struct ath_hw*,struct ath9k_channel*) ;
 int ath9k_hw_loadnf (struct ath_hw*,int ) ;
 int ath9k_hw_reset_calibration (struct ath_hw*,struct ath9k_cal_list*) ;
 int ath9k_hw_start_nfcal (struct ath_hw*,int) ;

__attribute__((used)) static int ar9003_hw_calibrate(struct ath_hw *ah, struct ath9k_channel *chan,
          u8 rxchainmask, bool longcal)
{
 bool iscaldone = 1;
 struct ath9k_cal_list *currCal = ah->cal_list_curr;
 int ret;
 if (currCal &&
     (currCal->calState == CAL_RUNNING ||
      currCal->calState == CAL_WAITING)) {
  iscaldone = ar9003_hw_per_calibration(ah, chan,
            rxchainmask, currCal);
  if (iscaldone) {
   ah->cal_list_curr = currCal = currCal->calNext;

   if (currCal->calState == CAL_WAITING) {
    iscaldone = 0;
    ath9k_hw_reset_calibration(ah, currCal);
   }
  }
 }





 if (longcal && ath9k_hw_getnf(ah, chan)) {





  ret = ath9k_hw_loadnf(ah, ah->curchan);
  if (ret < 0)
   return ret;


  ath9k_hw_start_nfcal(ah, 0);
 }

 return iscaldone;
}
