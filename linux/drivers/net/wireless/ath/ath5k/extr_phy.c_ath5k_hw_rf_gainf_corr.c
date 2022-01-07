
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ath5k_rf_reg {int dummy; } ;
struct TYPE_2__ {size_t g_step_idx; int g_f_corr; } ;
struct ath5k_hw {scalar_t__ ah_radio; scalar_t__ ah_radio_5ghz_revision; TYPE_1__ ah_gain; int * ah_rf_banks; int ah_rf_regs_count; } ;
struct ath5k_gain_opt_step {int* gos_param; } ;
struct ath5k_gain_opt {struct ath5k_gain_opt_step* go_step; } ;


 scalar_t__ AR5K_RF5112 ;
 int AR5K_RF_MIXGAIN_STEP ;
 int AR5K_RF_MIXVGA_OVR ;
 scalar_t__ AR5K_SREV_RAD_5112A ;
 int ARRAY_SIZE (struct ath5k_rf_reg*) ;
 int ath5k_hw_rfb_op (struct ath5k_hw*,struct ath5k_rf_reg const*,int ,int ,int) ;
 struct ath5k_rf_reg* rf_regs_5112a ;
 struct ath5k_gain_opt rfgain_opt_5112 ;

__attribute__((used)) static u32
ath5k_hw_rf_gainf_corr(struct ath5k_hw *ah)
{
 u32 mix, step;
 const struct ath5k_gain_opt *go;
 const struct ath5k_gain_opt_step *g_step;
 const struct ath5k_rf_reg *rf_regs;


 if ((ah->ah_radio != AR5K_RF5112) ||
 (ah->ah_radio_5ghz_revision <= AR5K_SREV_RAD_5112A))
  return 0;

 go = &rfgain_opt_5112;
 rf_regs = rf_regs_5112a;
 ah->ah_rf_regs_count = ARRAY_SIZE(rf_regs_5112a);

 g_step = &go->go_step[ah->ah_gain.g_step_idx];

 if (ah->ah_rf_banks == ((void*)0))
  return 0;

 ah->ah_gain.g_f_corr = 0;


 if (ath5k_hw_rfb_op(ah, rf_regs, 0, AR5K_RF_MIXVGA_OVR, 0) != 1)
  return 0;


 step = ath5k_hw_rfb_op(ah, rf_regs, 0, AR5K_RF_MIXGAIN_STEP, 0);


 mix = g_step->gos_param[0];

 switch (mix) {
 case 3:
  ah->ah_gain.g_f_corr = step * 2;
  break;
 case 2:
  ah->ah_gain.g_f_corr = (step - 5) * 2;
  break;
 case 1:
  ah->ah_gain.g_f_corr = step;
  break;
 default:
  ah->ah_gain.g_f_corr = 0;
  break;
 }

 return ah->ah_gain.g_f_corr;
}
