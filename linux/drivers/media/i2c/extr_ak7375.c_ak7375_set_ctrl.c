
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ctrl {scalar_t__ id; int val; } ;
struct ak7375_device {int dummy; } ;


 int AK7375_REG_POSITION ;
 int EINVAL ;
 scalar_t__ V4L2_CID_FOCUS_ABSOLUTE ;
 int ak7375_i2c_write (struct ak7375_device*,int ,int,int) ;
 struct ak7375_device* to_ak7375_vcm (struct v4l2_ctrl*) ;

__attribute__((used)) static int ak7375_set_ctrl(struct v4l2_ctrl *ctrl)
{
 struct ak7375_device *dev_vcm = to_ak7375_vcm(ctrl);

 if (ctrl->id == V4L2_CID_FOCUS_ABSOLUTE)
  return ak7375_i2c_write(dev_vcm, AK7375_REG_POSITION,
     ctrl->val << 4, 2);

 return -EINVAL;
}
