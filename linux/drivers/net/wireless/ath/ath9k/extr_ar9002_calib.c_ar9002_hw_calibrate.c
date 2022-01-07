
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ath_hw {int curchan; struct ath9k_cal_list* cal_list_curr; TYPE_1__* caldata; } ;
struct ath9k_channel {int dummy; } ;
struct ath9k_cal_list {scalar_t__ calState; struct ath9k_cal_list* calNext; } ;
struct TYPE_2__ {int cal_flags; } ;


 int AR_PHY_AGC_CONTROL ;
 int AR_PHY_AGC_CONTROL_NF ;
 scalar_t__ CAL_RUNNING ;
 scalar_t__ CAL_WAITING ;
 int NFCAL_PENDING ;
 int REG_READ (struct ath_hw*,int ) ;
 int ar9002_hw_olc_temp_compensation (struct ath_hw*) ;
 int ar9002_hw_pa_cal (struct ath_hw*,int) ;
 int ar9002_hw_per_calibration (struct ath_hw*,struct ath9k_channel*,int ,struct ath9k_cal_list*) ;
 scalar_t__ ath9k_hw_getnf (struct ath_hw*,struct ath9k_channel*) ;
 int ath9k_hw_loadnf (struct ath_hw*,int ) ;
 int ath9k_hw_reset_calibration (struct ath_hw*,struct ath9k_cal_list*) ;
 int ath9k_hw_start_nfcal (struct ath_hw*,int) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int ar9002_hw_calibrate(struct ath_hw *ah, struct ath9k_channel *chan,
          u8 rxchainmask, bool longcal)
{
 struct ath9k_cal_list *currCal = ah->cal_list_curr;
 bool nfcal, nfcal_pending = 0, percal_pending;
 int ret;

 nfcal = !!(REG_READ(ah, AR_PHY_AGC_CONTROL) & AR_PHY_AGC_CONTROL_NF);
 if (ah->caldata)
  nfcal_pending = test_bit(NFCAL_PENDING, &ah->caldata->cal_flags);

 percal_pending = (currCal &&
     (currCal->calState == CAL_RUNNING ||
      currCal->calState == CAL_WAITING));

 if (percal_pending && !nfcal) {
  if (!ar9002_hw_per_calibration(ah, chan, rxchainmask, currCal))
   return 0;

  ah->cal_list_curr = currCal = currCal->calNext;
  if (currCal->calState == CAL_WAITING)
   ath9k_hw_reset_calibration(ah, currCal);

  return 0;
 }


 if (longcal || nfcal_pending) {




  if (ath9k_hw_getnf(ah, chan)) {






   ret = ath9k_hw_loadnf(ah, ah->curchan);
   if (ret < 0)
    return ret;
  }

  if (longcal) {
   ath9k_hw_start_nfcal(ah, 0);

   ar9002_hw_pa_cal(ah, 0);
   ar9002_hw_olc_temp_compensation(ah);
  }
 }

 return !percal_pending;
}
