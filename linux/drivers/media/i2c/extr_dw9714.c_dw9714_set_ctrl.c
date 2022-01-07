
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ctrl {scalar_t__ id; int val; } ;
struct dw9714_device {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_CID_FOCUS_ABSOLUTE ;
 int dw9714_t_focus_vcm (struct dw9714_device*,int ) ;
 struct dw9714_device* to_dw9714_vcm (struct v4l2_ctrl*) ;

__attribute__((used)) static int dw9714_set_ctrl(struct v4l2_ctrl *ctrl)
{
 struct dw9714_device *dev_vcm = to_dw9714_vcm(ctrl);

 if (ctrl->id == V4L2_CID_FOCUS_ABSOLUTE)
  return dw9714_t_focus_vcm(dev_vcm, ctrl->val);

 return -EINVAL;
}
