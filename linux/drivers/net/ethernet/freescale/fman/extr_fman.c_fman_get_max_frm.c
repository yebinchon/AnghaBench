
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;


 scalar_t__ FSL_FM_MAX_FRAME_SIZE ;
 scalar_t__ FSL_FM_MAX_POSSIBLE_FRAME_SIZE ;
 scalar_t__ FSL_FM_MIN_POSSIBLE_FRAME_SIZE ;
 scalar_t__ fsl_fm_max_frm ;
 int pr_warn (char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

u16 fman_get_max_frm(void)
{
 static bool fm_check_mfl;

 if (!fm_check_mfl) {
  if (fsl_fm_max_frm > FSL_FM_MAX_POSSIBLE_FRAME_SIZE ||
      fsl_fm_max_frm < FSL_FM_MIN_POSSIBLE_FRAME_SIZE) {
   pr_warn("Invalid fsl_fm_max_frm value (%d) in bootargs, valid range is %d-%d. Falling back to the default (%d)\n",
    fsl_fm_max_frm,
    FSL_FM_MIN_POSSIBLE_FRAME_SIZE,
    FSL_FM_MAX_POSSIBLE_FRAME_SIZE,
    FSL_FM_MAX_FRAME_SIZE);
   fsl_fm_max_frm = FSL_FM_MAX_FRAME_SIZE;
  }
  fm_check_mfl = 1;
 }

 return fsl_fm_max_frm;
}
