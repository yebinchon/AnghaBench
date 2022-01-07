
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fmdev {int streg_cbdata; } ;


 int complete (int *) ;
 int wait_for_fmdrv_reg_comp ;

__attribute__((used)) static void fm_st_reg_comp_cb(void *arg, int data)
{
 struct fmdev *fmdev;

 fmdev = (struct fmdev *)arg;
 fmdev->streg_cbdata = data;
 complete(&wait_for_fmdrv_reg_comp);
}
