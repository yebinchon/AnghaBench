
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct TYPE_3__ {scalar_t__ af_mode; } ;
struct TYPE_4__ {int mask; } ;
struct fmdev {scalar_t__ curr_fmmode; TYPE_1__ rx; TYPE_2__ irq_info; } ;
typedef int payload ;


 int EINVAL ;
 int EPERM ;
 int FM_LEV_EVENT ;
 scalar_t__ FM_MODE_RX ;
 scalar_t__ FM_RX_RDS_AF_SWITCH_MODE_OFF ;
 scalar_t__ FM_RX_RDS_AF_SWITCH_MODE_ON ;
 int INT_MASK_SET ;
 int REG_WR ;
 int fmc_send_cmd (struct fmdev*,int ,int ,int *,int,int *,int *) ;
 int fmerr (char*) ;

int fm_rx_set_af_switch(struct fmdev *fmdev, u8 af_mode)
{
 u16 payload;
 int ret;

 if (fmdev->curr_fmmode != FM_MODE_RX)
  return -EPERM;

 if (af_mode != FM_RX_RDS_AF_SWITCH_MODE_ON &&
     af_mode != FM_RX_RDS_AF_SWITCH_MODE_OFF) {
  fmerr("Invalid af mode\n");
  return -EINVAL;
 }

 if (af_mode == FM_RX_RDS_AF_SWITCH_MODE_ON)
  fmdev->irq_info.mask |= FM_LEV_EVENT;
 else
  fmdev->irq_info.mask &= ~FM_LEV_EVENT;

 payload = fmdev->irq_info.mask;
 ret = fmc_send_cmd(fmdev, INT_MASK_SET, REG_WR, &payload,
   sizeof(payload), ((void*)0), ((void*)0));
 if (ret < 0)
  return ret;

 fmdev->rx.af_mode = af_mode;

 return 0;
}
