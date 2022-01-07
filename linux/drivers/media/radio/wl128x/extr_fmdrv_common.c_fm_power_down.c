
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct fmdev {scalar_t__ curr_fmmode; int flag; } ;
typedef int payload ;


 int EPERM ;
 int FM_CORE_READY ;
 scalar_t__ FM_MODE_OFF ;
 int FM_POWER_MODE ;
 int REG_WR ;
 int fmc_release (struct fmdev*) ;
 int fmc_send_cmd (struct fmdev*,int ,int ,int*,int,int *,int *) ;
 int fmdbg (char*) ;
 int fmerr (char*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int fm_power_down(struct fmdev *fmdev)
{
 u16 payload;
 int ret;

 if (!test_bit(FM_CORE_READY, &fmdev->flag)) {
  fmerr("FM core is not ready\n");
  return -EPERM;
 }
 if (fmdev->curr_fmmode == FM_MODE_OFF) {
  fmdbg("FM chip is already in OFF state\n");
  return 0;
 }

 payload = 0x0;
 ret = fmc_send_cmd(fmdev, FM_POWER_MODE, REG_WR, &payload,
  sizeof(payload), ((void*)0), ((void*)0));
 if (ret < 0)
  return ret;

 return fmc_release(fmdev);
}
