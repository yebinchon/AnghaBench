
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct chan_centers {int synth_center; } ;
struct ath_hw {int dummy; } ;
struct ath9k_channel {int dummy; } ;


 int AR_PHY_HALFGI ;
 int AR_PHY_HALFGI_DSC_EXP ;
 int AR_PHY_HALFGI_DSC_MAN ;
 int AR_PHY_TIMING3 ;
 int AR_PHY_TIMING3_DSC_EXP ;
 int AR_PHY_TIMING3_DSC_MAN ;
 scalar_t__ IS_CHAN_HALF_RATE (struct ath9k_channel*) ;
 scalar_t__ IS_CHAN_QUARTER_RATE (struct ath9k_channel*) ;
 int REG_RMW_FIELD (struct ath_hw*,int ,int ,int) ;
 int ath9k_hw_get_channel_centers (struct ath_hw*,struct ath9k_channel*,struct chan_centers*) ;
 int ath9k_hw_get_delta_slope_vals (struct ath_hw*,int,int*,int*) ;

__attribute__((used)) static void ar5008_hw_set_delta_slope(struct ath_hw *ah,
          struct ath9k_channel *chan)
{
 u32 coef_scaled, ds_coef_exp, ds_coef_man;
 u32 clockMhzScaled = 0x64000000;
 struct chan_centers centers;

 if (IS_CHAN_HALF_RATE(chan))
  clockMhzScaled = clockMhzScaled >> 1;
 else if (IS_CHAN_QUARTER_RATE(chan))
  clockMhzScaled = clockMhzScaled >> 2;

 ath9k_hw_get_channel_centers(ah, chan, &centers);
 coef_scaled = clockMhzScaled / centers.synth_center;

 ath9k_hw_get_delta_slope_vals(ah, coef_scaled, &ds_coef_man,
          &ds_coef_exp);

 REG_RMW_FIELD(ah, AR_PHY_TIMING3,
        AR_PHY_TIMING3_DSC_MAN, ds_coef_man);
 REG_RMW_FIELD(ah, AR_PHY_TIMING3,
        AR_PHY_TIMING3_DSC_EXP, ds_coef_exp);

 coef_scaled = (9 * coef_scaled) / 10;

 ath9k_hw_get_delta_slope_vals(ah, coef_scaled, &ds_coef_man,
          &ds_coef_exp);

 REG_RMW_FIELD(ah, AR_PHY_HALFGI,
        AR_PHY_HALFGI_DSC_MAN, ds_coef_man);
 REG_RMW_FIELD(ah, AR_PHY_HALFGI,
        AR_PHY_HALFGI_DSC_EXP, ds_coef_exp);
}
