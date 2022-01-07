
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ctrl {int id; } ;
 scalar_t__ V4L2_CTRL_CLASS_FM_RX ;
 scalar_t__ V4L2_CTRL_CLASS_FM_TX ;
 scalar_t__ V4L2_CTRL_ID2WHICH (int) ;

bool v4l2_ctrl_radio_filter(const struct v4l2_ctrl *ctrl)
{
 if (V4L2_CTRL_ID2WHICH(ctrl->id) == V4L2_CTRL_CLASS_FM_TX)
  return 1;
 if (V4L2_CTRL_ID2WHICH(ctrl->id) == V4L2_CTRL_CLASS_FM_RX)
  return 1;
 switch (ctrl->id) {
 case 130:
 case 128:
 case 133:
 case 132:
 case 129:
 case 131:
  return 1;
 default:
  break;
 }
 return 0;
}
