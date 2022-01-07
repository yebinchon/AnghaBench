
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct fmdev {scalar_t__ curr_fmmode; } ;
typedef int payload ;


 int EPERM ;
 scalar_t__ FM_MODE_TX ;
 int REG_WR ;
 int TA_SET ;
 int fmc_send_cmd (struct fmdev*,int ,int ,scalar_t__*,int,int *,int *) ;
 int fmdbg (char*,int) ;

int fm_tx_set_af(struct fmdev *fmdev, u32 af)
{
 u16 payload;
 int ret;

 if (fmdev->curr_fmmode != FM_MODE_TX)
  return -EPERM;

 fmdbg("AF: %d\n", af);

 af = (af - 87500) / 100;
 payload = (u16)af;
 ret = fmc_send_cmd(fmdev, TA_SET, REG_WR, &payload,
   sizeof(payload), ((void*)0), ((void*)0));
 if (ret < 0)
  return ret;

 return 0;
}
