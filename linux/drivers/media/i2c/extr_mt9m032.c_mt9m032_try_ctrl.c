
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ctrl {scalar_t__ id; int val; } ;


 scalar_t__ V4L2_CID_GAIN ;

__attribute__((used)) static int mt9m032_try_ctrl(struct v4l2_ctrl *ctrl)
{
 if (ctrl->id == V4L2_CID_GAIN && ctrl->val >= 63) {

  ctrl->val &= ~1;
 }

 return 0;
}
