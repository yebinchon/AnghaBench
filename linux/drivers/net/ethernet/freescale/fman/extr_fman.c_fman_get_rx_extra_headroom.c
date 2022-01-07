
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ALIGN (scalar_t__,int) ;
 scalar_t__ FSL_FM_RX_EXTRA_HEADROOM ;
 scalar_t__ FSL_FM_RX_EXTRA_HEADROOM_MAX ;
 scalar_t__ FSL_FM_RX_EXTRA_HEADROOM_MIN ;
 scalar_t__ fsl_fm_rx_extra_headroom ;
 int pr_warn (char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

int fman_get_rx_extra_headroom(void)
{
 static bool fm_check_rx_extra_headroom;

 if (!fm_check_rx_extra_headroom) {
  if (fsl_fm_rx_extra_headroom > FSL_FM_RX_EXTRA_HEADROOM_MAX ||
      fsl_fm_rx_extra_headroom < FSL_FM_RX_EXTRA_HEADROOM_MIN) {
   pr_warn("Invalid fsl_fm_rx_extra_headroom value (%d) in bootargs, valid range is %d-%d. Falling back to the default (%d)\n",
    fsl_fm_rx_extra_headroom,
    FSL_FM_RX_EXTRA_HEADROOM_MIN,
    FSL_FM_RX_EXTRA_HEADROOM_MAX,
    FSL_FM_RX_EXTRA_HEADROOM);
   fsl_fm_rx_extra_headroom = FSL_FM_RX_EXTRA_HEADROOM;
  }

  fm_check_rx_extra_headroom = 1;
  fsl_fm_rx_extra_headroom = ALIGN(fsl_fm_rx_extra_headroom, 16);
 }

 return fsl_fm_rx_extra_headroom;
}
