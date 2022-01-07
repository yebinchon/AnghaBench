
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ext_control {int value; int id; } ;
struct uvc_video_chain {int dummy; } ;
struct uvc_control_mapping {int dummy; } ;
struct uvc_control {int dummy; } ;


 int EINVAL ;
 int __uvc_ctrl_get (struct uvc_video_chain*,struct uvc_control*,struct uvc_control_mapping*,int *) ;
 struct uvc_control* uvc_find_control (struct uvc_video_chain*,int ,struct uvc_control_mapping**) ;

int uvc_ctrl_get(struct uvc_video_chain *chain,
 struct v4l2_ext_control *xctrl)
{
 struct uvc_control *ctrl;
 struct uvc_control_mapping *mapping;

 ctrl = uvc_find_control(chain, xctrl->id, &mapping);
 if (ctrl == ((void*)0))
  return -EINVAL;

 return __uvc_ctrl_get(chain, ctrl, mapping, &xctrl->value);
}
