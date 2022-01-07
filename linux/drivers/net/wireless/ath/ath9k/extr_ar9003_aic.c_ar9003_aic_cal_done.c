
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath9k_hw_aic {int aic_cal_state; } ;
struct TYPE_2__ {struct ath9k_hw_aic aic; } ;
struct ath_hw {TYPE_1__ btcoex_hw; } ;


 int AIC_CAL_STATE_DONE ;
 int AIC_CAL_STATE_ERROR ;
 int ATH_AIC_BT_AIC_ENABLE ;
 int ATH_AIC_BT_JUPITER_CTRL ;
 int REG_READ (struct ath_hw*,int ) ;
 int REG_WRITE (struct ath_hw*,int ,int) ;
 scalar_t__ ar9003_aic_cal_post_process (struct ath_hw*) ;

__attribute__((used)) static void ar9003_aic_cal_done(struct ath_hw *ah)
{
 struct ath9k_hw_aic *aic = &ah->btcoex_hw.aic;


 REG_WRITE(ah, ATH_AIC_BT_JUPITER_CTRL,
    (REG_READ(ah, ATH_AIC_BT_JUPITER_CTRL) &
     ~ATH_AIC_BT_AIC_ENABLE));

 if (ar9003_aic_cal_post_process(ah))
  aic->aic_cal_state = AIC_CAL_STATE_DONE;
 else
  aic->aic_cal_state = AIC_CAL_STATE_ERROR;
}
