
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct v4l2_ctrl_handler {int error; int * lock; } ;
struct imx355_mode {int fll_def; int height; int fll_min; int llp; int width; } ;
struct TYPE_5__ {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct imx355 {int link_def_freq; TYPE_2__ sd; void* vflip; void* hflip; void* exposure; TYPE_1__* hblank; void* vblank; struct imx355_mode* cur_mode; void* pixel_rate; TYPE_3__* link_freq; int mutex; struct v4l2_ctrl_handler ctrl_handler; } ;
struct i2c_client {int dev; } ;
typedef int s64 ;
struct TYPE_6__ {int flags; } ;
struct TYPE_4__ {int flags; } ;


 scalar_t__ ARRAY_SIZE (int ) ;
 int IMX355_ANA_GAIN_DEFAULT ;
 int IMX355_ANA_GAIN_MAX ;
 int IMX355_ANA_GAIN_MIN ;
 int IMX355_ANA_GAIN_STEP ;
 int IMX355_DGTL_GAIN_DEFAULT ;
 int IMX355_DGTL_GAIN_MAX ;
 int IMX355_DGTL_GAIN_MIN ;
 int IMX355_DGTL_GAIN_STEP ;
 int IMX355_EXPOSURE_DEFAULT ;
 int IMX355_EXPOSURE_MIN ;
 int IMX355_EXPOSURE_STEP ;
 int IMX355_FLL_MAX ;
 int V4L2_CID_ANALOGUE_GAIN ;
 int V4L2_CID_DIGITAL_GAIN ;
 int V4L2_CID_EXPOSURE ;
 int V4L2_CID_HBLANK ;
 int V4L2_CID_HFLIP ;
 int V4L2_CID_LINK_FREQ ;
 int V4L2_CID_PIXEL_RATE ;
 int V4L2_CID_TEST_PATTERN ;
 int V4L2_CID_VBLANK ;
 int V4L2_CID_VFLIP ;
 int V4L2_CTRL_FLAG_READ_ONLY ;
 int dev_err (int *,char*,int) ;
 int do_div (int,int) ;
 int imx355_ctrl_ops ;
 int imx355_test_pattern_menu ;
 int link_freq_menu_items ;
 int v4l2_ctrl_handler_free (struct v4l2_ctrl_handler*) ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int) ;
 TYPE_3__* v4l2_ctrl_new_int_menu (struct v4l2_ctrl_handler*,int *,int ,scalar_t__,int ,int ) ;
 void* v4l2_ctrl_new_std (struct v4l2_ctrl_handler*,int *,int ,int,int,int,int) ;
 int v4l2_ctrl_new_std_menu_items (struct v4l2_ctrl_handler*,int *,int ,scalar_t__,int ,int ,int ) ;
 struct i2c_client* v4l2_get_subdevdata (TYPE_2__*) ;

__attribute__((used)) static int imx355_init_controls(struct imx355 *imx355)
{
 struct i2c_client *client = v4l2_get_subdevdata(&imx355->sd);
 struct v4l2_ctrl_handler *ctrl_hdlr;
 s64 exposure_max;
 s64 vblank_def;
 s64 vblank_min;
 s64 hblank;
 u64 pixel_rate;
 const struct imx355_mode *mode;
 u32 max;
 int ret;

 ctrl_hdlr = &imx355->ctrl_handler;
 ret = v4l2_ctrl_handler_init(ctrl_hdlr, 10);
 if (ret)
  return ret;

 ctrl_hdlr->lock = &imx355->mutex;
 max = ARRAY_SIZE(link_freq_menu_items) - 1;
 imx355->link_freq = v4l2_ctrl_new_int_menu(ctrl_hdlr, &imx355_ctrl_ops,
         V4L2_CID_LINK_FREQ, max, 0,
         link_freq_menu_items);
 if (imx355->link_freq)
  imx355->link_freq->flags |= V4L2_CTRL_FLAG_READ_ONLY;


 pixel_rate = imx355->link_def_freq * 2 * 4;
 do_div(pixel_rate, 10);

 imx355->pixel_rate = v4l2_ctrl_new_std(ctrl_hdlr, &imx355_ctrl_ops,
            V4L2_CID_PIXEL_RATE, pixel_rate,
            pixel_rate, 1, pixel_rate);


 mode = imx355->cur_mode;
 vblank_def = mode->fll_def - mode->height;
 vblank_min = mode->fll_min - mode->height;
 imx355->vblank = v4l2_ctrl_new_std(ctrl_hdlr, &imx355_ctrl_ops,
        V4L2_CID_VBLANK, vblank_min,
        IMX355_FLL_MAX - mode->height,
        1, vblank_def);

 hblank = mode->llp - mode->width;
 imx355->hblank = v4l2_ctrl_new_std(ctrl_hdlr, &imx355_ctrl_ops,
        V4L2_CID_HBLANK, hblank, hblank,
        1, hblank);
 if (imx355->hblank)
  imx355->hblank->flags |= V4L2_CTRL_FLAG_READ_ONLY;


 exposure_max = mode->fll_def - 10;
 imx355->exposure = v4l2_ctrl_new_std(ctrl_hdlr, &imx355_ctrl_ops,
          V4L2_CID_EXPOSURE,
          IMX355_EXPOSURE_MIN, exposure_max,
          IMX355_EXPOSURE_STEP,
          IMX355_EXPOSURE_DEFAULT);

 imx355->hflip = v4l2_ctrl_new_std(ctrl_hdlr, &imx355_ctrl_ops,
       V4L2_CID_HFLIP, 0, 1, 1, 0);
 imx355->vflip = v4l2_ctrl_new_std(ctrl_hdlr, &imx355_ctrl_ops,
       V4L2_CID_VFLIP, 0, 1, 1, 0);

 v4l2_ctrl_new_std(ctrl_hdlr, &imx355_ctrl_ops, V4L2_CID_ANALOGUE_GAIN,
     IMX355_ANA_GAIN_MIN, IMX355_ANA_GAIN_MAX,
     IMX355_ANA_GAIN_STEP, IMX355_ANA_GAIN_DEFAULT);


 v4l2_ctrl_new_std(ctrl_hdlr, &imx355_ctrl_ops, V4L2_CID_DIGITAL_GAIN,
     IMX355_DGTL_GAIN_MIN, IMX355_DGTL_GAIN_MAX,
     IMX355_DGTL_GAIN_STEP, IMX355_DGTL_GAIN_DEFAULT);

 v4l2_ctrl_new_std_menu_items(ctrl_hdlr, &imx355_ctrl_ops,
         V4L2_CID_TEST_PATTERN,
         ARRAY_SIZE(imx355_test_pattern_menu) - 1,
         0, 0, imx355_test_pattern_menu);
 if (ctrl_hdlr->error) {
  ret = ctrl_hdlr->error;
  dev_err(&client->dev, "control init failed: %d", ret);
  goto error;
 }

 imx355->sd.ctrl_handler = ctrl_hdlr;

 return 0;

error:
 v4l2_ctrl_handler_free(ctrl_hdlr);

 return ret;
}
