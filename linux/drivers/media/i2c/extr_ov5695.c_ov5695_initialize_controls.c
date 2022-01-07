
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct v4l2_ctrl_handler {int error; int * lock; } ;
struct v4l2_ctrl {int flags; } ;
struct ov5695_mode {scalar_t__ exp_def; scalar_t__ vts_def; scalar_t__ height; scalar_t__ width; scalar_t__ hts_def; } ;
struct TYPE_6__ {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct ov5695 {TYPE_3__ subdev; TYPE_2__* client; int test_pattern; void* digi_gain; void* anal_gain; void* exposure; void* vblank; TYPE_1__* hblank; int mutex; struct ov5695_mode* cur_mode; struct v4l2_ctrl_handler ctrl_handler; } ;
typedef scalar_t__ s64 ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {int flags; } ;


 scalar_t__ ANALOG_GAIN_DEFAULT ;
 scalar_t__ ANALOG_GAIN_MAX ;
 scalar_t__ ANALOG_GAIN_MIN ;
 int ANALOG_GAIN_STEP ;
 scalar_t__ ARRAY_SIZE (int ) ;
 scalar_t__ OV5695_DIGI_GAIN_DEFAULT ;
 scalar_t__ OV5695_DIGI_GAIN_MAX ;
 scalar_t__ OV5695_DIGI_GAIN_MIN ;
 int OV5695_DIGI_GAIN_STEP ;
 scalar_t__ OV5695_EXPOSURE_MIN ;
 int OV5695_EXPOSURE_STEP ;
 scalar_t__ OV5695_PIXEL_RATE ;
 scalar_t__ OV5695_VTS_MAX ;
 int V4L2_CID_ANALOGUE_GAIN ;
 int V4L2_CID_DIGITAL_GAIN ;
 int V4L2_CID_EXPOSURE ;
 int V4L2_CID_HBLANK ;
 int V4L2_CID_LINK_FREQ ;
 int V4L2_CID_PIXEL_RATE ;
 int V4L2_CID_TEST_PATTERN ;
 int V4L2_CID_VBLANK ;
 int V4L2_CTRL_FLAG_READ_ONLY ;
 int dev_err (int *,char*,int) ;
 int link_freq_menu_items ;
 int ov5695_ctrl_ops ;
 int ov5695_test_pattern_menu ;
 int v4l2_ctrl_handler_free (struct v4l2_ctrl_handler*) ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int) ;
 struct v4l2_ctrl* v4l2_ctrl_new_int_menu (struct v4l2_ctrl_handler*,int *,int ,int ,int ,int ) ;
 void* v4l2_ctrl_new_std (struct v4l2_ctrl_handler*,int *,int ,scalar_t__,scalar_t__,int,scalar_t__) ;
 int v4l2_ctrl_new_std_menu_items (struct v4l2_ctrl_handler*,int *,int ,scalar_t__,int ,int ,int ) ;

__attribute__((used)) static int ov5695_initialize_controls(struct ov5695 *ov5695)
{
 const struct ov5695_mode *mode;
 struct v4l2_ctrl_handler *handler;
 struct v4l2_ctrl *ctrl;
 s64 exposure_max, vblank_def;
 u32 h_blank;
 int ret;

 handler = &ov5695->ctrl_handler;
 mode = ov5695->cur_mode;
 ret = v4l2_ctrl_handler_init(handler, 8);
 if (ret)
  return ret;
 handler->lock = &ov5695->mutex;

 ctrl = v4l2_ctrl_new_int_menu(handler, ((void*)0), V4L2_CID_LINK_FREQ,
          0, 0, link_freq_menu_items);
 if (ctrl)
  ctrl->flags |= V4L2_CTRL_FLAG_READ_ONLY;

 v4l2_ctrl_new_std(handler, ((void*)0), V4L2_CID_PIXEL_RATE,
     0, OV5695_PIXEL_RATE, 1, OV5695_PIXEL_RATE);

 h_blank = mode->hts_def - mode->width;
 ov5695->hblank = v4l2_ctrl_new_std(handler, ((void*)0), V4L2_CID_HBLANK,
    h_blank, h_blank, 1, h_blank);
 if (ov5695->hblank)
  ov5695->hblank->flags |= V4L2_CTRL_FLAG_READ_ONLY;

 vblank_def = mode->vts_def - mode->height;
 ov5695->vblank = v4l2_ctrl_new_std(handler, &ov5695_ctrl_ops,
    V4L2_CID_VBLANK, vblank_def,
    OV5695_VTS_MAX - mode->height,
    1, vblank_def);

 exposure_max = mode->vts_def - 4;
 ov5695->exposure = v4l2_ctrl_new_std(handler, &ov5695_ctrl_ops,
    V4L2_CID_EXPOSURE, OV5695_EXPOSURE_MIN,
    exposure_max, OV5695_EXPOSURE_STEP,
    mode->exp_def);

 ov5695->anal_gain = v4l2_ctrl_new_std(handler, &ov5695_ctrl_ops,
    V4L2_CID_ANALOGUE_GAIN, ANALOG_GAIN_MIN,
    ANALOG_GAIN_MAX, ANALOG_GAIN_STEP,
    ANALOG_GAIN_DEFAULT);


 ov5695->digi_gain = v4l2_ctrl_new_std(handler, &ov5695_ctrl_ops,
    V4L2_CID_DIGITAL_GAIN, OV5695_DIGI_GAIN_MIN,
    OV5695_DIGI_GAIN_MAX, OV5695_DIGI_GAIN_STEP,
    OV5695_DIGI_GAIN_DEFAULT);

 ov5695->test_pattern = v4l2_ctrl_new_std_menu_items(handler,
    &ov5695_ctrl_ops, V4L2_CID_TEST_PATTERN,
    ARRAY_SIZE(ov5695_test_pattern_menu) - 1,
    0, 0, ov5695_test_pattern_menu);

 if (handler->error) {
  ret = handler->error;
  dev_err(&ov5695->client->dev,
   "Failed to init controls(%d)\n", ret);
  goto err_free_handler;
 }

 ov5695->subdev.ctrl_handler = handler;

 return 0;

err_free_handler:
 v4l2_ctrl_handler_free(handler);

 return ret;
}
