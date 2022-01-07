
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__* sign; } ;
struct TYPE_7__ {scalar_t__* sign; } ;
struct TYPE_6__ {scalar_t__* sign; } ;
struct TYPE_5__ {scalar_t__* sign; } ;
struct ath_hw {scalar_t__ cal_samples; TYPE_4__ meas3; TYPE_3__ meas2; TYPE_2__ meas1; TYPE_1__ meas0; } ;
struct ath9k_cal_list {int calState; } ;


 int AR5416_MAX_CHAINS ;
 int CAL_RUNNING ;
 int ath9k_hw_setup_calibration (struct ath_hw*,struct ath9k_cal_list*) ;

void ath9k_hw_reset_calibration(struct ath_hw *ah,
    struct ath9k_cal_list *currCal)
{
 int i;

 ath9k_hw_setup_calibration(ah, currCal);

 currCal->calState = CAL_RUNNING;

 for (i = 0; i < AR5416_MAX_CHAINS; i++) {
  ah->meas0.sign[i] = 0;
  ah->meas1.sign[i] = 0;
  ah->meas2.sign[i] = 0;
  ah->meas3.sign[i] = 0;
 }

 ah->cal_samples = 0;
}
