
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct v4l2_ctrl_handler {int error; int * lock; } ;
struct TYPE_7__ {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct ov5675 {TYPE_3__ sd; void* exposure; TYPE_2__* cur_mode; TYPE_1__* hblank; void* vblank; void* pixel_rate; TYPE_4__* link_freq; int mutex; struct v4l2_ctrl_handler ctrl_handler; } ;
typedef int s64 ;
struct TYPE_8__ {int flags; } ;
struct TYPE_6__ {int vts_min; int height; int vts_def; int width; int link_freq_index; int hts; } ;
struct TYPE_5__ {int flags; } ;


 scalar_t__ ARRAY_SIZE (int ) ;
 int OV5675_ANAL_GAIN_MAX ;
 int OV5675_ANAL_GAIN_MIN ;
 int OV5675_ANAL_GAIN_STEP ;
 int OV5675_DGTL_GAIN_DEFAULT ;
 int OV5675_DGTL_GAIN_MAX ;
 int OV5675_DGTL_GAIN_MIN ;
 int OV5675_DGTL_GAIN_STEP ;
 int OV5675_EXPOSURE_MAX_MARGIN ;
 int OV5675_EXPOSURE_MIN ;
 int OV5675_EXPOSURE_STEP ;
 int OV5675_LINK_FREQ_900MBPS ;
 int OV5675_VTS_MAX ;
 int V4L2_CID_ANALOGUE_GAIN ;
 int V4L2_CID_DIGITAL_GAIN ;
 int V4L2_CID_EXPOSURE ;
 int V4L2_CID_HBLANK ;
 int V4L2_CID_LINK_FREQ ;
 int V4L2_CID_PIXEL_RATE ;
 int V4L2_CID_TEST_PATTERN ;
 int V4L2_CID_VBLANK ;
 int V4L2_CTRL_FLAG_READ_ONLY ;
 int link_freq_menu_items ;
 int ov5675_ctrl_ops ;
 int ov5675_test_pattern_menu ;
 int to_pixel_rate (int ) ;
 int to_pixels_per_line (int ,int ) ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int) ;
 TYPE_4__* v4l2_ctrl_new_int_menu (struct v4l2_ctrl_handler*,int *,int ,scalar_t__,int ,int ) ;
 void* v4l2_ctrl_new_std (struct v4l2_ctrl_handler*,int *,int ,int,int,int,int) ;
 int v4l2_ctrl_new_std_menu_items (struct v4l2_ctrl_handler*,int *,int ,scalar_t__,int ,int ,int ) ;

__attribute__((used)) static int ov5675_init_controls(struct ov5675 *ov5675)
{
 struct v4l2_ctrl_handler *ctrl_hdlr;
 s64 exposure_max, h_blank;
 int ret;

 ctrl_hdlr = &ov5675->ctrl_handler;
 ret = v4l2_ctrl_handler_init(ctrl_hdlr, 8);
 if (ret)
  return ret;

 ctrl_hdlr->lock = &ov5675->mutex;
 ov5675->link_freq = v4l2_ctrl_new_int_menu(ctrl_hdlr, &ov5675_ctrl_ops,
        V4L2_CID_LINK_FREQ,
        ARRAY_SIZE(link_freq_menu_items) - 1,
        0, link_freq_menu_items);
 if (ov5675->link_freq)
  ov5675->link_freq->flags |= V4L2_CTRL_FLAG_READ_ONLY;

 ov5675->pixel_rate = v4l2_ctrl_new_std(ctrl_hdlr, &ov5675_ctrl_ops,
           V4L2_CID_PIXEL_RATE, 0,
           to_pixel_rate(OV5675_LINK_FREQ_900MBPS),
           1,
           to_pixel_rate(OV5675_LINK_FREQ_900MBPS));
 ov5675->vblank = v4l2_ctrl_new_std(ctrl_hdlr, &ov5675_ctrl_ops,
     V4L2_CID_VBLANK,
     ov5675->cur_mode->vts_min - ov5675->cur_mode->height,
     OV5675_VTS_MAX - ov5675->cur_mode->height, 1,
     ov5675->cur_mode->vts_def - ov5675->cur_mode->height);
 h_blank = to_pixels_per_line(ov5675->cur_mode->hts,
    ov5675->cur_mode->link_freq_index) - ov5675->cur_mode->width;
 ov5675->hblank = v4l2_ctrl_new_std(ctrl_hdlr, &ov5675_ctrl_ops,
        V4L2_CID_HBLANK, h_blank, h_blank, 1,
        h_blank);
 if (ov5675->hblank)
  ov5675->hblank->flags |= V4L2_CTRL_FLAG_READ_ONLY;

 v4l2_ctrl_new_std(ctrl_hdlr, &ov5675_ctrl_ops, V4L2_CID_ANALOGUE_GAIN,
     OV5675_ANAL_GAIN_MIN, OV5675_ANAL_GAIN_MAX,
     OV5675_ANAL_GAIN_STEP, OV5675_ANAL_GAIN_MIN);
 v4l2_ctrl_new_std(ctrl_hdlr, &ov5675_ctrl_ops, V4L2_CID_DIGITAL_GAIN,
     OV5675_DGTL_GAIN_MIN, OV5675_DGTL_GAIN_MAX,
     OV5675_DGTL_GAIN_STEP, OV5675_DGTL_GAIN_DEFAULT);
 exposure_max = (ov5675->cur_mode->vts_def -
   OV5675_EXPOSURE_MAX_MARGIN) / 2;
 ov5675->exposure = v4l2_ctrl_new_std(ctrl_hdlr, &ov5675_ctrl_ops,
          V4L2_CID_EXPOSURE,
          OV5675_EXPOSURE_MIN, exposure_max,
          OV5675_EXPOSURE_STEP,
          exposure_max);
 v4l2_ctrl_new_std_menu_items(ctrl_hdlr, &ov5675_ctrl_ops,
         V4L2_CID_TEST_PATTERN,
         ARRAY_SIZE(ov5675_test_pattern_menu) - 1,
         0, 0, ov5675_test_pattern_menu);
 if (ctrl_hdlr->error)
  return ctrl_hdlr->error;

 ov5675->sd.ctrl_handler = ctrl_hdlr;

 return 0;
}
