
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_ctrl_ops {int dummy; } ;
struct v4l2_ctrl_handler {int error; } ;
struct s5k5baf_ctrls {void* auto_exp; void* gain; void* exposure; void* hflip; void* vflip; void* awb; void* gain_blue; void* gain_red; struct v4l2_ctrl_handler handler; } ;
struct TYPE_2__ {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct s5k5baf {TYPE_1__ sd; struct s5k5baf_ctrls ctrls; } ;


 scalar_t__ ARRAY_SIZE (int ) ;
 int S5K5BAF_GAIN_BLUE_DEF ;
 int S5K5BAF_GAIN_RED_DEF ;
 int V4L2_CID_AUTO_WHITE_BALANCE ;
 int V4L2_CID_BLUE_BALANCE ;
 int V4L2_CID_BRIGHTNESS ;
 int V4L2_CID_COLORFX ;
 int V4L2_CID_CONTRAST ;
 int V4L2_CID_EXPOSURE ;
 int V4L2_CID_EXPOSURE_AUTO ;
 int V4L2_CID_GAIN ;
 int V4L2_CID_HFLIP ;
 int V4L2_CID_POWER_LINE_FREQUENCY ;
 int V4L2_CID_POWER_LINE_FREQUENCY_AUTO ;
 int V4L2_CID_RED_BALANCE ;
 int V4L2_CID_SATURATION ;
 int V4L2_CID_SHARPNESS ;
 int V4L2_CID_TEST_PATTERN ;
 int V4L2_CID_VFLIP ;
 int V4L2_CID_WHITE_BALANCE_TEMPERATURE ;
 int V4L2_COLORFX_NONE ;
 int V4L2_COLORFX_SKY_BLUE ;
 int V4L2_EXPOSURE_AUTO ;
 int V4L2_EXPOSURE_MANUAL ;
 struct v4l2_ctrl_ops s5k5baf_ctrl_ops ;
 int s5k5baf_test_pattern_menu ;
 int v4l2_ctrl_auto_cluster (int,void**,int ,int) ;
 int v4l2_ctrl_cluster (int,void**) ;
 int v4l2_ctrl_handler_free (struct v4l2_ctrl_handler*) ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int) ;
 void* v4l2_ctrl_new_std (struct v4l2_ctrl_handler*,struct v4l2_ctrl_ops const*,int ,int,int,int,int) ;
 void* v4l2_ctrl_new_std_menu (struct v4l2_ctrl_handler*,struct v4l2_ctrl_ops const*,int ,int ,int,int ) ;
 int v4l2_ctrl_new_std_menu_items (struct v4l2_ctrl_handler*,struct v4l2_ctrl_ops const*,int ,scalar_t__,int ,int ,int ) ;
 int v4l2_err (TYPE_1__*,char*,int) ;

__attribute__((used)) static int s5k5baf_initialize_ctrls(struct s5k5baf *state)
{
 const struct v4l2_ctrl_ops *ops = &s5k5baf_ctrl_ops;
 struct s5k5baf_ctrls *ctrls = &state->ctrls;
 struct v4l2_ctrl_handler *hdl = &ctrls->handler;
 int ret;

 ret = v4l2_ctrl_handler_init(hdl, 16);
 if (ret < 0) {
  v4l2_err(&state->sd, "cannot init ctrl handler (%d)\n", ret);
  return ret;
 }


 ctrls->awb = v4l2_ctrl_new_std(hdl, ops, V4L2_CID_AUTO_WHITE_BALANCE,
           0, 1, 1, 1);
 ctrls->gain_red = v4l2_ctrl_new_std(hdl, ops, V4L2_CID_RED_BALANCE,
         0, 255, 1, S5K5BAF_GAIN_RED_DEF);
 ctrls->gain_blue = v4l2_ctrl_new_std(hdl, ops, V4L2_CID_BLUE_BALANCE,
          0, 255, 1, S5K5BAF_GAIN_BLUE_DEF);
 v4l2_ctrl_auto_cluster(3, &ctrls->awb, 0, 0);

 ctrls->hflip = v4l2_ctrl_new_std(hdl, ops, V4L2_CID_HFLIP, 0, 1, 1, 0);
 ctrls->vflip = v4l2_ctrl_new_std(hdl, ops, V4L2_CID_VFLIP, 0, 1, 1, 0);
 v4l2_ctrl_cluster(2, &ctrls->hflip);

 ctrls->auto_exp = v4l2_ctrl_new_std_menu(hdl, ops,
    V4L2_CID_EXPOSURE_AUTO,
    V4L2_EXPOSURE_MANUAL, 0, V4L2_EXPOSURE_AUTO);

 ctrls->exposure = v4l2_ctrl_new_std(hdl, ops, V4L2_CID_EXPOSURE,
         0, 6000000U, 1, 100000U);

 ctrls->gain = v4l2_ctrl_new_std(hdl, ops, V4L2_CID_GAIN,
     0, 256, 1, 256);
 v4l2_ctrl_auto_cluster(3, &ctrls->auto_exp, 0, 0);

 v4l2_ctrl_new_std_menu(hdl, ops, V4L2_CID_POWER_LINE_FREQUENCY,
          V4L2_CID_POWER_LINE_FREQUENCY_AUTO, 0,
          V4L2_CID_POWER_LINE_FREQUENCY_AUTO);

 v4l2_ctrl_new_std_menu(hdl, ops, V4L2_CID_COLORFX,
          V4L2_COLORFX_SKY_BLUE, ~0x6f, V4L2_COLORFX_NONE);

 v4l2_ctrl_new_std(hdl, ops, V4L2_CID_WHITE_BALANCE_TEMPERATURE,
     0, 256, 1, 0);

 v4l2_ctrl_new_std(hdl, ops, V4L2_CID_SATURATION, -127, 127, 1, 0);
 v4l2_ctrl_new_std(hdl, ops, V4L2_CID_BRIGHTNESS, -127, 127, 1, 0);
 v4l2_ctrl_new_std(hdl, ops, V4L2_CID_CONTRAST, -127, 127, 1, 0);
 v4l2_ctrl_new_std(hdl, ops, V4L2_CID_SHARPNESS, -127, 127, 1, 0);

 v4l2_ctrl_new_std_menu_items(hdl, ops, V4L2_CID_TEST_PATTERN,
         ARRAY_SIZE(s5k5baf_test_pattern_menu) - 1,
         0, 0, s5k5baf_test_pattern_menu);

 if (hdl->error) {
  v4l2_err(&state->sd, "error creating controls (%d)\n",
    hdl->error);
  ret = hdl->error;
  v4l2_ctrl_handler_free(hdl);
  return ret;
 }

 state->sd.ctrl_handler = hdl;
 return 0;
}
