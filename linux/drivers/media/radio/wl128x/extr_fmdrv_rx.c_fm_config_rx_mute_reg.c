
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int mute_mode; scalar_t__ rf_depend_mute; } ;
struct fmdev {TYPE_1__ rx; } ;
typedef int payload ;





 int FM_RX_AC_MUTE_MODE ;
 scalar_t__ FM_RX_RF_DEPENDENT_MUTE_ON ;
 int FM_RX_RF_DEP_MODE ;
 int FM_RX_SOFT_MUTE_FORCE_MODE ;
 int FM_RX_UNMUTE_MODE ;
 int MUTE_STATUS_SET ;
 int REG_WR ;
 int fmc_send_cmd (struct fmdev*,int ,int ,int *,int,int *,int *) ;

__attribute__((used)) static int fm_config_rx_mute_reg(struct fmdev *fmdev)
{
 u16 payload, muteval;
 int ret;

 muteval = 0;
 switch (fmdev->rx.mute_mode) {
 case 128:
  muteval = FM_RX_AC_MUTE_MODE;
  break;

 case 129:
  muteval = FM_RX_UNMUTE_MODE;
  break;

 case 130:
  muteval = FM_RX_SOFT_MUTE_FORCE_MODE;
  break;
 }
 if (fmdev->rx.rf_depend_mute == FM_RX_RF_DEPENDENT_MUTE_ON)
  muteval |= FM_RX_RF_DEP_MODE;
 else
  muteval &= ~FM_RX_RF_DEP_MODE;

 payload = muteval;
 ret = fmc_send_cmd(fmdev, MUTE_STATUS_SET, REG_WR, &payload,
   sizeof(payload), ((void*)0), ((void*)0));
 if (ret < 0)
  return ret;

 return 0;
}
