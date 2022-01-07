
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_queryctrl {int id; } ;
struct uvc_video_chain {int ctrl_mutex; } ;
struct uvc_control_mapping {int dummy; } ;
struct uvc_control {int dummy; } ;


 int EINVAL ;
 int ERESTARTSYS ;
 int __uvc_query_v4l2_ctrl (struct uvc_video_chain*,struct uvc_control*,struct uvc_control_mapping*,struct v4l2_queryctrl*) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 struct uvc_control* uvc_find_control (struct uvc_video_chain*,int ,struct uvc_control_mapping**) ;

int uvc_query_v4l2_ctrl(struct uvc_video_chain *chain,
 struct v4l2_queryctrl *v4l2_ctrl)
{
 struct uvc_control *ctrl;
 struct uvc_control_mapping *mapping;
 int ret;

 ret = mutex_lock_interruptible(&chain->ctrl_mutex);
 if (ret < 0)
  return -ERESTARTSYS;

 ctrl = uvc_find_control(chain, v4l2_ctrl->id, &mapping);
 if (ctrl == ((void*)0)) {
  ret = -EINVAL;
  goto done;
 }

 ret = __uvc_query_v4l2_ctrl(chain, ctrl, mapping, v4l2_ctrl);
done:
 mutex_unlock(&chain->ctrl_mutex);
 return ret;
}
