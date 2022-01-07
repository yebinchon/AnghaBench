
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ctrl {int id; int val; int name; } ;
struct fimc_isp {int subdev; } ;
struct fimc_is {int state; } ;


 int EINVAL ;
 int ISP_ADJUST_COMMAND_MANUAL_BRIGHTNESS ;
 int ISP_ADJUST_COMMAND_MANUAL_CONTRAST ;
 int ISP_ADJUST_COMMAND_MANUAL_EXPOSURE ;
 int ISP_ADJUST_COMMAND_MANUAL_HUE ;
 int ISP_ADJUST_COMMAND_MANUAL_SATURATION ;
 int ISP_ADJUST_COMMAND_MANUAL_SHARPNESS ;
 int IS_ST_STREAM_ON ;
 int __ctrl_set_aewb_lock (struct fimc_is*,struct v4l2_ctrl*) ;
 int __ctrl_set_afc (struct fimc_is*,int ) ;
 int __ctrl_set_image_effect (struct fimc_is*,int ) ;
 int __ctrl_set_iso (struct fimc_is*,int ) ;
 int __ctrl_set_metering (struct fimc_is*,int ) ;
 int __ctrl_set_white_balance (struct fimc_is*,int ) ;
 int __is_set_isp_adjust (struct fimc_is*,int ,int ) ;
 struct fimc_isp* ctrl_to_fimc_isp (struct v4l2_ctrl*) ;
 int fimc_is_itf_s_param (struct fimc_is*,int) ;
 struct fimc_is* fimc_isp_to_is (struct fimc_isp*) ;
 scalar_t__ test_bit (int ,int *) ;
 int v4l2_err (int *,char*,int ,int ) ;

__attribute__((used)) static int fimc_is_s_ctrl(struct v4l2_ctrl *ctrl)
{
 struct fimc_isp *isp = ctrl_to_fimc_isp(ctrl);
 struct fimc_is *is = fimc_isp_to_is(isp);
 bool set_param = 1;
 int ret = 0;

 switch (ctrl->id) {
 case 135:
  __is_set_isp_adjust(is, ISP_ADJUST_COMMAND_MANUAL_CONTRAST,
        ctrl->val);
  break;

 case 129:
  __is_set_isp_adjust(is, ISP_ADJUST_COMMAND_MANUAL_SATURATION,
        ctrl->val);
  break;

 case 128:
  __is_set_isp_adjust(is, ISP_ADJUST_COMMAND_MANUAL_SHARPNESS,
        ctrl->val);
  break;

 case 134:
  __is_set_isp_adjust(is, ISP_ADJUST_COMMAND_MANUAL_EXPOSURE,
        ctrl->val);
  break;

 case 137:
  __is_set_isp_adjust(is, ISP_ADJUST_COMMAND_MANUAL_BRIGHTNESS,
        ctrl->val);
  break;

 case 132:
  __is_set_isp_adjust(is, ISP_ADJUST_COMMAND_MANUAL_HUE,
        ctrl->val);
  break;

 case 133:
  ret = __ctrl_set_metering(is, ctrl->val);
  break;

 case 138:
  ret = __ctrl_set_white_balance(is, ctrl->val);
  break;

 case 139:
  ret = __ctrl_set_aewb_lock(is, ctrl);
  set_param = 0;
  break;

 case 131:
  ret = __ctrl_set_iso(is, ctrl->val);
  break;

 case 130:
  ret = __ctrl_set_afc(is, ctrl->val);
  break;

 case 136:
  __ctrl_set_image_effect(is, ctrl->val);
  break;

 default:
  ret = -EINVAL;
  break;
 }

 if (ret < 0) {
  v4l2_err(&isp->subdev, "Failed to set control: %s (%d)\n",
      ctrl->name, ctrl->val);
  return ret;
 }

 if (set_param && test_bit(IS_ST_STREAM_ON, &is->state))
  return fimc_is_itf_s_param(is, 1);

 return 0;
}
