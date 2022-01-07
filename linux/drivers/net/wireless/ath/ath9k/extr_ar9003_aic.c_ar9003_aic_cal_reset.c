
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ath9k_hw_aic {int aic_cal_state; } ;
struct TYPE_2__ {struct ath9k_hw_aic aic; } ;
struct ath_hw {TYPE_1__ btcoex_hw; } ;


 int AIC_CAL_STATE_IDLE ;

u8 ar9003_aic_cal_reset(struct ath_hw *ah)
{
 struct ath9k_hw_aic *aic = &ah->btcoex_hw.aic;

 aic->aic_cal_state = AIC_CAL_STATE_IDLE;
 return aic->aic_cal_state;
}
