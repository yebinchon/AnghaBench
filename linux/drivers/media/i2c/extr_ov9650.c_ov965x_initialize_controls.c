
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct v4l2_ctrl_ops {int dummy; } ;
struct v4l2_ctrl_handler {int error; } ;
struct ov965x_ctrls {void* hflip; void* auto_exp; void* auto_gain; void* auto_wb; TYPE_2__* exposure; TYPE_1__* gain; void* light_freq; void* vflip; void* sharpness; void* brightness; void* saturation; void* red_balance; void* blue_balance; struct v4l2_ctrl_handler handler; } ;
struct TYPE_6__ {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct ov965x {TYPE_3__ sd; struct ov965x_ctrls ctrls; } ;
struct TYPE_5__ {int flags; } ;
struct TYPE_4__ {int flags; } ;


 scalar_t__ ARRAY_SIZE (int ) ;
 int V4L2_CID_AUTOGAIN ;
 int V4L2_CID_AUTO_WHITE_BALANCE ;
 int V4L2_CID_BLUE_BALANCE ;
 int V4L2_CID_BRIGHTNESS ;
 int V4L2_CID_EXPOSURE_ABSOLUTE ;
 int V4L2_CID_EXPOSURE_AUTO ;
 int V4L2_CID_GAIN ;
 int V4L2_CID_HFLIP ;
 int V4L2_CID_POWER_LINE_FREQUENCY ;
 int V4L2_CID_POWER_LINE_FREQUENCY_50HZ ;
 int V4L2_CID_POWER_LINE_FREQUENCY_60HZ ;
 int V4L2_CID_RED_BALANCE ;
 int V4L2_CID_SATURATION ;
 int V4L2_CID_SHARPNESS ;
 int V4L2_CID_TEST_PATTERN ;
 int V4L2_CID_VFLIP ;
 int V4L2_CTRL_FLAG_VOLATILE ;
 int V4L2_EXPOSURE_AUTO ;
 int V4L2_EXPOSURE_MANUAL ;
 struct v4l2_ctrl_ops ov965x_ctrl_ops ;
 int test_pattern_menu ;
 int v4l2_ctrl_auto_cluster (int,void**,int,int) ;
 int v4l2_ctrl_cluster (int,void**) ;
 int v4l2_ctrl_handler_free (struct v4l2_ctrl_handler*) ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int) ;
 void* v4l2_ctrl_new_std (struct v4l2_ctrl_handler*,struct v4l2_ctrl_ops const*,int ,int,int,int,int) ;
 void* v4l2_ctrl_new_std_menu (struct v4l2_ctrl_handler*,struct v4l2_ctrl_ops const*,int ,int ,int,int ) ;
 int v4l2_ctrl_new_std_menu_items (struct v4l2_ctrl_handler*,struct v4l2_ctrl_ops const*,int ,scalar_t__,int ,int ,int ) ;

__attribute__((used)) static int ov965x_initialize_controls(struct ov965x *ov965x)
{
 const struct v4l2_ctrl_ops *ops = &ov965x_ctrl_ops;
 struct ov965x_ctrls *ctrls = &ov965x->ctrls;
 struct v4l2_ctrl_handler *hdl = &ctrls->handler;
 int ret;

 ret = v4l2_ctrl_handler_init(hdl, 16);
 if (ret < 0)
  return ret;


 ctrls->auto_wb = v4l2_ctrl_new_std(hdl, ops,
        V4L2_CID_AUTO_WHITE_BALANCE,
        0, 1, 1, 1);
 ctrls->blue_balance = v4l2_ctrl_new_std(hdl, ops, V4L2_CID_BLUE_BALANCE,
      0, 0xff, 1, 0x80);
 ctrls->red_balance = v4l2_ctrl_new_std(hdl, ops, V4L2_CID_RED_BALANCE,
            0, 0xff, 1, 0x80);

 ctrls->auto_exp =
  v4l2_ctrl_new_std_menu(hdl, ops,
           V4L2_CID_EXPOSURE_AUTO,
           V4L2_EXPOSURE_MANUAL, 0,
           V4L2_EXPOSURE_AUTO);

 ctrls->exposure = v4l2_ctrl_new_std(hdl, ops,
         V4L2_CID_EXPOSURE_ABSOLUTE,
         2, 1500, 1, 500);

 ctrls->auto_gain = v4l2_ctrl_new_std(hdl, ops, V4L2_CID_AUTOGAIN,
          0, 1, 1, 1);
 ctrls->gain = v4l2_ctrl_new_std(hdl, ops, V4L2_CID_GAIN,
     16, 64 * (16 + 15), 1, 64 * 16);

 ctrls->saturation = v4l2_ctrl_new_std(hdl, ops, V4L2_CID_SATURATION,
           -2, 2, 1, 0);
 ctrls->brightness = v4l2_ctrl_new_std(hdl, ops, V4L2_CID_BRIGHTNESS,
           -3, 3, 1, 0);
 ctrls->sharpness = v4l2_ctrl_new_std(hdl, ops, V4L2_CID_SHARPNESS,
          0, 32, 1, 6);

 ctrls->hflip = v4l2_ctrl_new_std(hdl, ops, V4L2_CID_HFLIP, 0, 1, 1, 0);
 ctrls->vflip = v4l2_ctrl_new_std(hdl, ops, V4L2_CID_VFLIP, 0, 1, 1, 0);

 ctrls->light_freq =
  v4l2_ctrl_new_std_menu(hdl, ops,
           V4L2_CID_POWER_LINE_FREQUENCY,
           V4L2_CID_POWER_LINE_FREQUENCY_60HZ, ~0x7,
           V4L2_CID_POWER_LINE_FREQUENCY_50HZ);

 v4l2_ctrl_new_std_menu_items(hdl, ops, V4L2_CID_TEST_PATTERN,
         ARRAY_SIZE(test_pattern_menu) - 1, 0, 0,
         test_pattern_menu);
 if (hdl->error) {
  ret = hdl->error;
  v4l2_ctrl_handler_free(hdl);
  return ret;
 }

 ctrls->gain->flags |= V4L2_CTRL_FLAG_VOLATILE;
 ctrls->exposure->flags |= V4L2_CTRL_FLAG_VOLATILE;

 v4l2_ctrl_auto_cluster(3, &ctrls->auto_wb, 0, 0);
 v4l2_ctrl_auto_cluster(2, &ctrls->auto_gain, 0, 1);
 v4l2_ctrl_auto_cluster(2, &ctrls->auto_exp, 1, 1);
 v4l2_ctrl_cluster(2, &ctrls->hflip);

 ov965x->sd.ctrl_handler = hdl;
 return 0;
}
