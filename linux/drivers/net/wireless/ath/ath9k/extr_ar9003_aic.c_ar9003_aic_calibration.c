
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ath9k_hw_aic {int aic_cal_state; } ;
struct TYPE_2__ {struct ath9k_hw_aic aic; } ;
struct ath_hw {TYPE_1__ btcoex_hw; } ;



 int AIC_CAL_STATE_ERROR ;


 int ar9003_aic_cal_continue (struct ath_hw*,int) ;
 int ar9003_aic_cal_start (struct ath_hw*,int) ;

u8 ar9003_aic_calibration(struct ath_hw *ah)
{
 struct ath9k_hw_aic *aic = &ah->btcoex_hw.aic;
 u8 cal_ret = AIC_CAL_STATE_ERROR;

 switch (aic->aic_cal_state) {
 case 129:
  cal_ret = ar9003_aic_cal_start(ah, 1);
  break;
 case 128:
  cal_ret = ar9003_aic_cal_continue(ah, 0);
  break;
 case 130:
  cal_ret = 130;
  break;
 default:
  break;
 }

 return cal_ret;
}
