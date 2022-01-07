
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fmdev {int curr_fmmode; int flag; } ;


 int ENOMEM ;
 int EPERM ;
 int FM_CORE_READY ;
 int fmerr (char*) ;
 int test_bit (int ,int *) ;

int fmc_get_mode(struct fmdev *fmdev, u8 *fmmode)
{
 if (!test_bit(FM_CORE_READY, &fmdev->flag)) {
  fmerr("FM core is not ready\n");
  return -EPERM;
 }
 if (fmmode == ((void*)0)) {
  fmerr("Invalid memory\n");
  return -ENOMEM;
 }

 *fmmode = fmdev->curr_fmmode;
 return 0;
}
