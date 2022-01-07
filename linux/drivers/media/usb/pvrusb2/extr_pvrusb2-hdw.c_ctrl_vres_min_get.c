
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pvr2_ctrl {TYPE_2__* hdw; } ;
struct TYPE_4__ {TYPE_1__* hdw_desc; } ;
struct TYPE_3__ {scalar_t__ flag_has_cx25840; } ;



__attribute__((used)) static int ctrl_vres_min_get(struct pvr2_ctrl *cptr,int *vp)
{

 if (cptr->hdw->hdw_desc->flag_has_cx25840) {
  *vp = 75;
 } else {
  *vp = 17;
 }
 return 0;
}
