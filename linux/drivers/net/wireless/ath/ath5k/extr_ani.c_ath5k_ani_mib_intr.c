
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath5k_ani_state {scalar_t__ ani_mode; scalar_t__ ofdm_errors; scalar_t__ cck_errors; } ;
struct TYPE_2__ {int cap_has_phyerr_counters; } ;
struct ath5k_hw {int ani_tasklet; struct ath5k_ani_state ani_state; TYPE_1__ ah_capabilities; } ;


 int AR5K_CCK_FIL_CNT ;
 int AR5K_OFDM_FIL_CNT ;
 scalar_t__ ATH5K_ANI_CCK_TRIG_HIGH ;
 scalar_t__ ATH5K_ANI_MODE_AUTO ;
 scalar_t__ ATH5K_ANI_OFDM_TRIG_HIGH ;
 scalar_t__ ath5k_ani_save_and_clear_phy_errors (struct ath5k_hw*,struct ath5k_ani_state*) ;
 int ath5k_hw_reg_write (struct ath5k_hw*,int ,int ) ;
 int tasklet_schedule (int *) ;

void
ath5k_ani_mib_intr(struct ath5k_hw *ah)
{
 struct ath5k_ani_state *as = &ah->ani_state;



 if (!ah->ah_capabilities.cap_has_phyerr_counters)
  return;


 ath5k_hw_reg_write(ah, 0, AR5K_OFDM_FIL_CNT);
 ath5k_hw_reg_write(ah, 0, AR5K_CCK_FIL_CNT);

 if (ah->ani_state.ani_mode != ATH5K_ANI_MODE_AUTO)
  return;




 if (ath5k_ani_save_and_clear_phy_errors(ah, as) == 0)
  return;

 if (as->ofdm_errors > ATH5K_ANI_OFDM_TRIG_HIGH ||
     as->cck_errors > ATH5K_ANI_CCK_TRIG_HIGH)
  tasklet_schedule(&ah->ani_tasklet);
}
