
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
struct imx319_mode {int fll_def; int height; int fll_min; int llp; int width; } ;
struct TYPE_5__ {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct imx319 {int link_def_freq; TYPE_2__ sd; void* vflip; void* hflip; void* exposure; TYPE_1__* hblank; void* vblank; struct imx319_mode* cur_mode; void* pixel_rate; TYPE_3__* link_freq; int mutex; struct v4l2_ctrl_handler ctrl_handler; } ;
struct i2c_client {int dev; } ;
typedef int s64 ;
struct TYPE_6__ {int flags; } ;
struct TYPE_4__ {int flags; } ;


 scalar_t__ ARRAY_SIZE (int ) ;
 int IMX319_ANA_GAIN_DEFAULT ;
 int IMX319_ANA_GAIN_MAX ;
 int IMX319_ANA_GAIN_MIN ;
 int IMX319_ANA_GAIN_STEP ;
 int IMX319_DGTL_GAIN_DEFAULT ;
 int IMX319_DGTL_GAIN_MAX ;
 int IMX319_DGTL_GAIN_MIN ;
 int IMX319_DGTL_GAIN_STEP ;
 int IMX319_EXPOSURE_DEFAULT ;
 int IMX319_EXPOSURE_MIN ;
 int IMX319_EXPOSURE_STEP ;
 int IMX319_FLL_MAX ;
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
 int imx319_ctrl_ops ;
 int imx319_test_pattern_menu ;
 int link_freq_menu_items ;
 int v4l2_ctrl_handler_free (struct v4l2_ctrl_handler*) ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int) ;
 TYPE_3__* v4l2_ctrl_new_int_menu (struct v4l2_ctrl_handler*,int *,int ,scalar_t__,int ,int ) ;
 void* v4l2_ctrl_new_std (struct v4l2_ctrl_handler*,int *,int ,int,int,int,int) ;
 int v4l2_ctrl_new_std_menu_items (struct v4l2_ctrl_handler*,int *,int ,scalar_t__,int ,int ,int ) ;
 struct i2c_client* v4l2_get_subdevdata (TYPE_2__*) ;

__attribute__((used)) static int imx319_init_controls(struct imx319 *imx319)
{
 struct i2c_client *client = v4l2_get_subdevdata(&imx319->sd);
 struct v4l2_ctrl_handler *ctrl_hdlr;
 s64 exposure_max;
 s64 vblank_def;
 s64 vblank_min;
 s64 hblank;
 u64 pixel_rate;
 const struct imx319_mode *mode;
 u32 max;
 int ret;

 ctrl_hdlr = &imx319->ctrl_handler;
 ret = v4l2_ctrl_handler_init(ctrl_hdlr, 10);
 if (ret)
  return ret;

 ctrl_hdlr->lock = &imx319->mutex;
 max = ARRAY_SIZE(link_freq_menu_items) - 1;
 imx319->link_freq = v4l2_ctrl_new_int_menu(ctrl_hdlr, &imx319_ctrl_ops,
         V4L2_CID_LINK_FREQ, max, 0,
         link_freq_menu_items);
 if (imx319->link_freq)
  imx319->link_freq->flags |= V4L2_CTRL_FLAG_READ_ONLY;


 pixel_rate = imx319->link_def_freq * 2 * 4;
 do_div(pixel_rate, 10);

 imx319->pixel_rate = v4l2_ctrl_new_std(ctrl_hdlr, &imx319_ctrl_ops,
            V4L2_CID_PIXEL_RATE, pixel_rate,
            pixel_rate, 1, pixel_rate);


 mode = imx319->cur_mode;
 vblank_def = mode->fll_def - mode->height;
 vblank_min = mode->fll_min - mode->height;
 imx319->vblank = v4l2_ctrl_new_std(ctrl_hdlr, &imx319_ctrl_ops,
        V4L2_CID_VBLANK, vblank_min,
        IMX319_FLL_MAX - mode->height,
        1, vblank_def);

 hblank = mode->llp - mode->width;
 imx319->hblank = v4l2_ctrl_new_std(ctrl_hdlr, &imx319_ctrl_ops,
        V4L2_CID_HBLANK, hblank, hblank,
        1, hblank);
 if (imx319->hblank)
  imx319->hblank->flags |= V4L2_CTRL_FLAG_READ_ONLY;


 exposure_max = mode->fll_def - 18;
 imx319->exposure = v4l2_ctrl_new_std(ctrl_hdlr, &imx319_ctrl_ops,
          V4L2_CID_EXPOSURE,
          IMX319_EXPOSURE_MIN, exposure_max,
          IMX319_EXPOSURE_STEP,
          IMX319_EXPOSURE_DEFAULT);

 imx319->hflip = v4l2_ctrl_new_std(ctrl_hdlr, &imx319_ctrl_ops,
       V4L2_CID_HFLIP, 0, 1, 1, 0);
 imx319->vflip = v4l2_ctrl_new_std(ctrl_hdlr, &imx319_ctrl_ops,
       V4L2_CID_VFLIP, 0, 1, 1, 0);

 v4l2_ctrl_new_std(ctrl_hdlr, &imx319_ctrl_ops, V4L2_CID_ANALOGUE_GAIN,
     IMX319_ANA_GAIN_MIN, IMX319_ANA_GAIN_MAX,
     IMX319_ANA_GAIN_STEP, IMX319_ANA_GAIN_DEFAULT);


 v4l2_ctrl_new_std(ctrl_hdlr, &imx319_ctrl_ops, V4L2_CID_DIGITAL_GAIN,
     IMX319_DGTL_GAIN_MIN, IMX319_DGTL_GAIN_MAX,
     IMX319_DGTL_GAIN_STEP, IMX319_DGTL_GAIN_DEFAULT);

 v4l2_ctrl_new_std_menu_items(ctrl_hdlr, &imx319_ctrl_ops,
         V4L2_CID_TEST_PATTERN,
         ARRAY_SIZE(imx319_test_pattern_menu) - 1,
         0, 0, imx319_test_pattern_menu);
 if (ctrl_hdlr->error) {
  ret = ctrl_hdlr->error;
  dev_err(&client->dev, "control init failed: %d", ret);
  goto error;
 }

 imx319->sd.ctrl_handler = ctrl_hdlr;

 return 0;

error:
 v4l2_ctrl_handler_free(ctrl_hdlr);

 return ret;
}
