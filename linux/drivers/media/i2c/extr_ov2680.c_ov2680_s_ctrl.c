
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct v4l2_ctrl {int id; int val; } ;
struct ov2680_ctrls {TYPE_2__* auto_exp; TYPE_1__* auto_gain; } ;
struct ov2680_dev {int is_streaming; int is_enabled; struct ov2680_ctrls ctrls; } ;
struct TYPE_4__ {int val; } ;
struct TYPE_3__ {int val; } ;


 int EBUSY ;
 int EINVAL ;







 struct v4l2_subdev* ctrl_to_sd (struct v4l2_ctrl*) ;
 int ov2680_exposure_set (struct ov2680_dev*,int) ;
 int ov2680_gain_set (struct ov2680_dev*,int) ;
 int ov2680_hflip_disable (struct ov2680_dev*) ;
 int ov2680_hflip_enable (struct ov2680_dev*) ;
 int ov2680_test_pattern_set (struct ov2680_dev*,int ) ;
 int ov2680_vflip_disable (struct ov2680_dev*) ;
 int ov2680_vflip_enable (struct ov2680_dev*) ;
 struct ov2680_dev* to_ov2680_dev (struct v4l2_subdev*) ;

__attribute__((used)) static int ov2680_s_ctrl(struct v4l2_ctrl *ctrl)
{
 struct v4l2_subdev *sd = ctrl_to_sd(ctrl);
 struct ov2680_dev *sensor = to_ov2680_dev(sd);
 struct ov2680_ctrls *ctrls = &sensor->ctrls;

 if (!sensor->is_enabled)
  return 0;

 switch (ctrl->id) {
 case 134:
  return ov2680_gain_set(sensor, !!ctrl->val);
 case 131:
  return ov2680_gain_set(sensor, !!ctrls->auto_gain->val);
 case 132:
  return ov2680_exposure_set(sensor, !!ctrl->val);
 case 133:
  return ov2680_exposure_set(sensor, !!ctrls->auto_exp->val);
 case 128:
  if (sensor->is_streaming)
   return -EBUSY;
  if (ctrl->val)
   return ov2680_vflip_enable(sensor);
  else
   return ov2680_vflip_disable(sensor);
 case 130:
  if (sensor->is_streaming)
   return -EBUSY;
  if (ctrl->val)
   return ov2680_hflip_enable(sensor);
  else
   return ov2680_hflip_disable(sensor);
 case 129:
  return ov2680_test_pattern_set(sensor, ctrl->val);
 default:
  break;
 }

 return -EINVAL;
}
