
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_ext_controls {scalar_t__ which; unsigned int count; unsigned int error_idx; struct v4l2_ext_control* controls; } ;
struct v4l2_ext_control {int value; int id; } ;
struct TYPE_4__ {TYPE_1__* mc_head; } ;
struct pvr2_v4l2_fh {TYPE_2__ channel; } ;
struct pvr2_hdw {int dummy; } ;
struct file {struct pvr2_v4l2_fh* private_data; } ;
struct TYPE_3__ {struct pvr2_hdw* hdw; } ;


 int EINVAL ;
 scalar_t__ V4L2_CTRL_WHICH_DEF_VAL ;
 int pvr2_ctrl_set_value (int ,int ) ;
 int pvr2_hdw_commit_ctl (struct pvr2_hdw*) ;
 int pvr2_hdw_get_ctrl_v4l (struct pvr2_hdw*,int ) ;

__attribute__((used)) static int pvr2_s_ext_ctrls(struct file *file, void *priv,
  struct v4l2_ext_controls *ctls)
{
 struct pvr2_v4l2_fh *fh = file->private_data;
 struct pvr2_hdw *hdw = fh->channel.mc_head->hdw;
 struct v4l2_ext_control *ctrl;
 unsigned int idx;
 int ret;


 if (ctls->which == V4L2_CTRL_WHICH_DEF_VAL)
  return -EINVAL;

 ret = 0;
 for (idx = 0; idx < ctls->count; idx++) {
  ctrl = ctls->controls + idx;
  ret = pvr2_ctrl_set_value(
    pvr2_hdw_get_ctrl_v4l(hdw, ctrl->id),
    ctrl->value);
  if (ret) {
   ctls->error_idx = idx;
   goto commit;
  }
 }
commit:
 pvr2_hdw_commit_ctl(hdw);
 return ret;
}
