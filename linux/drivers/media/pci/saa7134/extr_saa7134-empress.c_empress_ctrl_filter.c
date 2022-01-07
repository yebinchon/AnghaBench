
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ctrl {int id; } ;
__attribute__((used)) static bool empress_ctrl_filter(const struct v4l2_ctrl *ctrl)
{
 switch (ctrl->id) {
 case 133:
 case 131:
 case 132:
 case 128:
 case 135:
 case 134:
 case 129:
 case 130:
  return 1;
 default:
  return 0;
 }
}
