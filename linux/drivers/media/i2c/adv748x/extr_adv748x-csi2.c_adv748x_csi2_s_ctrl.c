
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ctrl {int id; } ;


 int EINVAL ;


__attribute__((used)) static int adv748x_csi2_s_ctrl(struct v4l2_ctrl *ctrl)
{
 switch (ctrl->id) {
 case 128:
  return 0;
 default:
  return -EINVAL;
 }
}
