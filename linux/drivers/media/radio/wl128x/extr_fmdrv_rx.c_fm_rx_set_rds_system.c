
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ rds_mode; } ;
struct fmdev {scalar_t__ curr_fmmode; TYPE_1__ rx; } ;
typedef int payload ;


 int EINVAL ;
 int EPERM ;
 scalar_t__ FM_MODE_RX ;
 scalar_t__ FM_RDS_SYSTEM_RBDS ;
 scalar_t__ FM_RDS_SYSTEM_RDS ;
 int RDS_SYSTEM_SET ;
 int REG_WR ;
 int fmc_send_cmd (struct fmdev*,int ,int ,scalar_t__*,int,int *,int *) ;
 int fmerr (char*) ;

int fm_rx_set_rds_system(struct fmdev *fmdev, u8 rds_mode)
{
 u16 payload;
 int ret;

 if (fmdev->curr_fmmode != FM_MODE_RX)
  return -EPERM;

 if (rds_mode != FM_RDS_SYSTEM_RDS && rds_mode != FM_RDS_SYSTEM_RBDS) {
  fmerr("Invalid rds mode\n");
  return -EINVAL;
 }

 payload = (u16)rds_mode;
 ret = fmc_send_cmd(fmdev, RDS_SYSTEM_SET, REG_WR, &payload,
   sizeof(payload), ((void*)0), ((void*)0));
 if (ret < 0)
  return ret;

 fmdev->rx.rds_mode = rds_mode;

 return 0;
}
