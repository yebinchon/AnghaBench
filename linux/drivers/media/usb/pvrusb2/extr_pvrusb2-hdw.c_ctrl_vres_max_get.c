
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pvr2_ctrl {TYPE_1__* hdw; } ;
struct TYPE_2__ {int std_mask_cur; } ;


 int V4L2_STD_525_60 ;

__attribute__((used)) static int ctrl_vres_max_get(struct pvr2_ctrl *cptr,int *vp)
{

 if (cptr->hdw->std_mask_cur & V4L2_STD_525_60) {
  *vp = 480;
 } else {
  *vp = 576;
 }
 return 0;
}
