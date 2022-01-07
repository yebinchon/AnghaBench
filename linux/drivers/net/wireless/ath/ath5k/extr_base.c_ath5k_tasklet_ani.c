
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath5k_hw {int ah_cal_mask; } ;


 int AR5K_CALIBRATION_ANI ;
 int ath5k_ani_calibration (struct ath5k_hw*) ;

__attribute__((used)) static void
ath5k_tasklet_ani(unsigned long data)
{
 struct ath5k_hw *ah = (void *)data;

 ah->ah_cal_mask |= AR5K_CALIBRATION_ANI;
 ath5k_ani_calibration(ah);
 ah->ah_cal_mask &= ~AR5K_CALIBRATION_ANI;
}
