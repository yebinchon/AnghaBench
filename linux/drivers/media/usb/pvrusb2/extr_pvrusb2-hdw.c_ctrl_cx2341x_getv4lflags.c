
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_queryctrl {int flags; int id; } ;
struct pvr2_ctrl {TYPE_2__* info; TYPE_1__* hdw; } ;
struct pvr2_ctl_info {int * set_value; } ;
struct TYPE_4__ {int v4l_id; } ;
struct TYPE_3__ {int enc_ctl_state; } ;


 int V4L2_CTRL_FLAG_READ_ONLY ;
 int * ctrl_cx2341x_set ;
 int cx2341x_ctrl_query (int *,struct v4l2_queryctrl*) ;

__attribute__((used)) static unsigned int ctrl_cx2341x_getv4lflags(struct pvr2_ctrl *cptr)
{
 struct v4l2_queryctrl qctrl = {};
 struct pvr2_ctl_info *info;
 qctrl.id = cptr->info->v4l_id;
 cx2341x_ctrl_query(&cptr->hdw->enc_ctl_state,&qctrl);






 info = (struct pvr2_ctl_info *)(cptr->info);
 if (qctrl.flags & V4L2_CTRL_FLAG_READ_ONLY) {
  if (info->set_value) {
   info->set_value = ((void*)0);
  }
 } else {
  if (!(info->set_value)) {
   info->set_value = ctrl_cx2341x_set;
  }
 }
 return qctrl.flags;
}
