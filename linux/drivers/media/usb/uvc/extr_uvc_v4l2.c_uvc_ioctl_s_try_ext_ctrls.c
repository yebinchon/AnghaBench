
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ext_controls {scalar_t__ which; unsigned int count; unsigned int error_idx; struct v4l2_ext_control* controls; } ;
struct v4l2_ext_control {int dummy; } ;
struct uvc_video_chain {int dummy; } ;
struct uvc_fh {struct uvc_video_chain* chain; } ;


 int EINVAL ;
 scalar_t__ V4L2_CTRL_WHICH_DEF_VAL ;
 int uvc_ctrl_begin (struct uvc_video_chain*) ;
 int uvc_ctrl_commit (struct uvc_fh*,struct v4l2_ext_control*,unsigned int) ;
 int uvc_ctrl_rollback (struct uvc_fh*) ;
 int uvc_ctrl_set (struct uvc_fh*,struct v4l2_ext_control*) ;

__attribute__((used)) static int uvc_ioctl_s_try_ext_ctrls(struct uvc_fh *handle,
         struct v4l2_ext_controls *ctrls,
         bool commit)
{
 struct v4l2_ext_control *ctrl = ctrls->controls;
 struct uvc_video_chain *chain = handle->chain;
 unsigned int i;
 int ret;


 if (ctrls->which == V4L2_CTRL_WHICH_DEF_VAL)
  return -EINVAL;

 ret = uvc_ctrl_begin(chain);
 if (ret < 0)
  return ret;

 for (i = 0; i < ctrls->count; ++ctrl, ++i) {
  ret = uvc_ctrl_set(handle, ctrl);
  if (ret < 0) {
   uvc_ctrl_rollback(handle);
   ctrls->error_idx = commit ? ctrls->count : i;
   return ret;
  }
 }

 ctrls->error_idx = 0;

 if (commit)
  return uvc_ctrl_commit(handle, ctrls->controls, ctrls->count);
 else
  return uvc_ctrl_rollback(handle);
}
