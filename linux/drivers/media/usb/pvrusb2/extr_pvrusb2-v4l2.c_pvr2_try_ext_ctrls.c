
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_ext_controls {unsigned int count; unsigned int error_idx; struct v4l2_ext_control* controls; } ;
struct v4l2_ext_control {int id; } ;
struct TYPE_4__ {TYPE_1__* mc_head; } ;
struct pvr2_v4l2_fh {TYPE_2__ channel; } ;
struct pvr2_hdw {int dummy; } ;
struct pvr2_ctrl {int dummy; } ;
struct file {struct pvr2_v4l2_fh* private_data; } ;
struct TYPE_3__ {struct pvr2_hdw* hdw; } ;


 int EINVAL ;
 struct pvr2_ctrl* pvr2_hdw_get_ctrl_v4l (struct pvr2_hdw*,int ) ;

__attribute__((used)) static int pvr2_try_ext_ctrls(struct file *file, void *priv,
  struct v4l2_ext_controls *ctls)
{
 struct pvr2_v4l2_fh *fh = file->private_data;
 struct pvr2_hdw *hdw = fh->channel.mc_head->hdw;
 struct v4l2_ext_control *ctrl;
 struct pvr2_ctrl *pctl;
 unsigned int idx;



 for (idx = 0; idx < ctls->count; idx++) {
  ctrl = ctls->controls + idx;
  pctl = pvr2_hdw_get_ctrl_v4l(hdw, ctrl->id);
  if (!pctl) {
   ctls->error_idx = idx;
   return -EINVAL;
  }
 }
 return 0;
}
