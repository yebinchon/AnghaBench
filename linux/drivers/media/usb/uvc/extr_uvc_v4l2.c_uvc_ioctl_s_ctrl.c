
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xctrl ;
struct v4l2_ext_control {int value; int id; } ;
struct v4l2_control {int value; int id; } ;
struct uvc_video_chain {int dummy; } ;
struct uvc_fh {struct uvc_video_chain* chain; } ;
struct file {int dummy; } ;


 int memset (struct v4l2_ext_control*,int ,int) ;
 int uvc_ctrl_begin (struct uvc_video_chain*) ;
 int uvc_ctrl_commit (struct uvc_fh*,struct v4l2_ext_control*,int) ;
 int uvc_ctrl_rollback (struct uvc_fh*) ;
 int uvc_ctrl_set (struct uvc_fh*,struct v4l2_ext_control*) ;

__attribute__((used)) static int uvc_ioctl_s_ctrl(struct file *file, void *fh,
       struct v4l2_control *ctrl)
{
 struct uvc_fh *handle = fh;
 struct uvc_video_chain *chain = handle->chain;
 struct v4l2_ext_control xctrl;
 int ret;

 memset(&xctrl, 0, sizeof(xctrl));
 xctrl.id = ctrl->id;
 xctrl.value = ctrl->value;

 ret = uvc_ctrl_begin(chain);
 if (ret < 0)
  return ret;

 ret = uvc_ctrl_set(handle, &xctrl);
 if (ret < 0) {
  uvc_ctrl_rollback(handle);
  return ret;
 }

 ret = uvc_ctrl_commit(handle, &xctrl, 1);
 if (ret < 0)
  return ret;

 ctrl->value = xctrl.value;
 return 0;
}
