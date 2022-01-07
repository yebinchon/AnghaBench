
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {scalar_t__ rf_depend_mute; } ;
struct fmdev {scalar_t__ curr_fmmode; TYPE_1__ rx; } ;


 int EINVAL ;
 int EPERM ;
 scalar_t__ FM_MODE_RX ;
 scalar_t__ FM_RX_RF_DEPENDENT_MUTE_OFF ;
 scalar_t__ FM_RX_RF_DEPENDENT_MUTE_ON ;
 int fm_config_rx_mute_reg (struct fmdev*) ;
 int fmerr (char*) ;

int fm_rx_set_rfdepend_softmute(struct fmdev *fmdev, u8 rfdepend_mute)
{
 u8 org_state;
 int ret;

 if (fmdev->curr_fmmode != FM_MODE_RX)
  return -EPERM;

 if (rfdepend_mute != FM_RX_RF_DEPENDENT_MUTE_ON &&
     rfdepend_mute != FM_RX_RF_DEPENDENT_MUTE_OFF) {
  fmerr("Invalid RF dependent soft mute\n");
  return -EINVAL;
 }
 if (fmdev->rx.rf_depend_mute == rfdepend_mute)
  return 0;

 org_state = fmdev->rx.rf_depend_mute;
 fmdev->rx.rf_depend_mute = rfdepend_mute;

 ret = fm_config_rx_mute_reg(fmdev);
 if (ret < 0) {
  fmdev->rx.rf_depend_mute = org_state;
  return ret;
 }

 return 0;
}
