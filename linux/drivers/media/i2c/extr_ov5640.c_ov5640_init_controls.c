
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct v4l2_ctrl_ops {int dummy; } ;
struct v4l2_ctrl_handler {int error; int * lock; } ;
struct TYPE_6__ {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct ov5640_ctrls {void* auto_exp; void* auto_gain; void* auto_wb; TYPE_2__* exposure; TYPE_1__* gain; void* light_freq; void* vflip; void* hflip; int test_pattern; void* contrast; void* hue; void* saturation; void* red_balance; void* blue_balance; struct v4l2_ctrl_handler handler; } ;
struct ov5640_dev {TYPE_3__ sd; int lock; struct ov5640_ctrls ctrls; } ;
struct TYPE_5__ {int flags; } ;
struct TYPE_4__ {int flags; } ;


 scalar_t__ ARRAY_SIZE (int ) ;
 int V4L2_CID_AUTOGAIN ;
 int V4L2_CID_AUTO_WHITE_BALANCE ;
 int V4L2_CID_BLUE_BALANCE ;
 int V4L2_CID_CONTRAST ;
 int V4L2_CID_EXPOSURE ;
 int V4L2_CID_EXPOSURE_AUTO ;
 int V4L2_CID_GAIN ;
 int V4L2_CID_HFLIP ;
 int V4L2_CID_HUE ;
 int V4L2_CID_POWER_LINE_FREQUENCY ;
 int V4L2_CID_POWER_LINE_FREQUENCY_50HZ ;
 int V4L2_CID_POWER_LINE_FREQUENCY_AUTO ;
 int V4L2_CID_RED_BALANCE ;
 int V4L2_CID_SATURATION ;
 int V4L2_CID_TEST_PATTERN ;
 int V4L2_CID_VFLIP ;
 int V4L2_CTRL_FLAG_VOLATILE ;
 int V4L2_EXPOSURE_AUTO ;
 int V4L2_EXPOSURE_MANUAL ;
 struct v4l2_ctrl_ops ov5640_ctrl_ops ;
 int test_pattern_menu ;
 int v4l2_ctrl_auto_cluster (int,void**,int,int) ;
 int v4l2_ctrl_handler_free (struct v4l2_ctrl_handler*) ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int) ;
 void* v4l2_ctrl_new_std (struct v4l2_ctrl_handler*,struct v4l2_ctrl_ops const*,int ,int ,int,int,int) ;
 void* v4l2_ctrl_new_std_menu (struct v4l2_ctrl_handler*,struct v4l2_ctrl_ops const*,int ,int ,int ,int ) ;
 int v4l2_ctrl_new_std_menu_items (struct v4l2_ctrl_handler*,struct v4l2_ctrl_ops const*,int ,scalar_t__,int ,int ,int ) ;

__attribute__((used)) static int ov5640_init_controls(struct ov5640_dev *sensor)
{
 const struct v4l2_ctrl_ops *ops = &ov5640_ctrl_ops;
 struct ov5640_ctrls *ctrls = &sensor->ctrls;
 struct v4l2_ctrl_handler *hdl = &ctrls->handler;
 int ret;

 v4l2_ctrl_handler_init(hdl, 32);


 hdl->lock = &sensor->lock;


 ctrls->auto_wb = v4l2_ctrl_new_std(hdl, ops,
        V4L2_CID_AUTO_WHITE_BALANCE,
        0, 1, 1, 1);
 ctrls->blue_balance = v4l2_ctrl_new_std(hdl, ops, V4L2_CID_BLUE_BALANCE,
      0, 4095, 1, 0);
 ctrls->red_balance = v4l2_ctrl_new_std(hdl, ops, V4L2_CID_RED_BALANCE,
            0, 4095, 1, 0);

 ctrls->auto_exp = v4l2_ctrl_new_std_menu(hdl, ops,
       V4L2_CID_EXPOSURE_AUTO,
       V4L2_EXPOSURE_MANUAL, 0,
       V4L2_EXPOSURE_AUTO);
 ctrls->exposure = v4l2_ctrl_new_std(hdl, ops, V4L2_CID_EXPOSURE,
         0, 65535, 1, 0);

 ctrls->auto_gain = v4l2_ctrl_new_std(hdl, ops, V4L2_CID_AUTOGAIN,
          0, 1, 1, 1);
 ctrls->gain = v4l2_ctrl_new_std(hdl, ops, V4L2_CID_GAIN,
     0, 1023, 1, 0);

 ctrls->saturation = v4l2_ctrl_new_std(hdl, ops, V4L2_CID_SATURATION,
           0, 255, 1, 64);
 ctrls->hue = v4l2_ctrl_new_std(hdl, ops, V4L2_CID_HUE,
           0, 359, 1, 0);
 ctrls->contrast = v4l2_ctrl_new_std(hdl, ops, V4L2_CID_CONTRAST,
         0, 255, 1, 0);
 ctrls->test_pattern =
  v4l2_ctrl_new_std_menu_items(hdl, ops, V4L2_CID_TEST_PATTERN,
          ARRAY_SIZE(test_pattern_menu) - 1,
          0, 0, test_pattern_menu);
 ctrls->hflip = v4l2_ctrl_new_std(hdl, ops, V4L2_CID_HFLIP,
      0, 1, 1, 0);
 ctrls->vflip = v4l2_ctrl_new_std(hdl, ops, V4L2_CID_VFLIP,
      0, 1, 1, 0);

 ctrls->light_freq =
  v4l2_ctrl_new_std_menu(hdl, ops,
           V4L2_CID_POWER_LINE_FREQUENCY,
           V4L2_CID_POWER_LINE_FREQUENCY_AUTO, 0,
           V4L2_CID_POWER_LINE_FREQUENCY_50HZ);

 if (hdl->error) {
  ret = hdl->error;
  goto free_ctrls;
 }

 ctrls->gain->flags |= V4L2_CTRL_FLAG_VOLATILE;
 ctrls->exposure->flags |= V4L2_CTRL_FLAG_VOLATILE;

 v4l2_ctrl_auto_cluster(3, &ctrls->auto_wb, 0, 0);
 v4l2_ctrl_auto_cluster(2, &ctrls->auto_gain, 0, 1);
 v4l2_ctrl_auto_cluster(2, &ctrls->auto_exp, 1, 1);

 sensor->sd.ctrl_handler = hdl;
 return 0;

free_ctrls:
 v4l2_ctrl_handler_free(hdl);
 return ret;
}
