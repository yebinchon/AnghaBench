
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int height; int width; int code; } ;
struct v4l2_subdev_format {scalar_t__ which; struct v4l2_mbus_framefmt format; int pad; } ;
struct v4l2_subdev {int dummy; } ;
struct imx258_mode {size_t link_freq_index; size_t vts_def; size_t height; size_t vts_min; size_t width; } ;
struct imx258 {int mutex; int hblank; struct imx258_mode const* cur_mode; int vblank; int pixel_rate; int link_freq; } ;
typedef size_t s64 ;
typedef size_t s32 ;
struct TYPE_2__ {size_t pixels_per_line; } ;


 int ARRAY_SIZE (int ) ;
 size_t IMX258_VTS_MAX ;
 int MEDIA_BUS_FMT_SGRBG10_1X10 ;
 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ;
 int __v4l2_ctrl_modify_range (int ,size_t,size_t,int,size_t) ;
 int __v4l2_ctrl_s_ctrl (int ,size_t) ;
 int __v4l2_ctrl_s_ctrl_int64 (int ,size_t) ;
 int height ;
 int imx258_update_pad_format (struct imx258_mode const*,struct v4l2_subdev_format*) ;
 TYPE_1__* link_freq_configs ;
 size_t* link_freq_menu_items ;
 size_t link_freq_to_pixel_rate (size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int supported_modes ;
 struct imx258* to_imx258 (struct v4l2_subdev*) ;
 struct imx258_mode* v4l2_find_nearest_size (int ,int ,int ,int ,int ,int ) ;
 struct v4l2_mbus_framefmt* v4l2_subdev_get_try_format (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,int ) ;
 int width ;

__attribute__((used)) static int imx258_set_pad_format(struct v4l2_subdev *sd,
     struct v4l2_subdev_pad_config *cfg,
     struct v4l2_subdev_format *fmt)
{
 struct imx258 *imx258 = to_imx258(sd);
 const struct imx258_mode *mode;
 struct v4l2_mbus_framefmt *framefmt;
 s32 vblank_def;
 s32 vblank_min;
 s64 h_blank;
 s64 pixel_rate;
 s64 link_freq;

 mutex_lock(&imx258->mutex);


 fmt->format.code = MEDIA_BUS_FMT_SGRBG10_1X10;

 mode = v4l2_find_nearest_size(supported_modes,
  ARRAY_SIZE(supported_modes), width, height,
  fmt->format.width, fmt->format.height);
 imx258_update_pad_format(mode, fmt);
 if (fmt->which == V4L2_SUBDEV_FORMAT_TRY) {
  framefmt = v4l2_subdev_get_try_format(sd, cfg, fmt->pad);
  *framefmt = fmt->format;
 } else {
  imx258->cur_mode = mode;
  __v4l2_ctrl_s_ctrl(imx258->link_freq, mode->link_freq_index);

  link_freq = link_freq_menu_items[mode->link_freq_index];
  pixel_rate = link_freq_to_pixel_rate(link_freq);
  __v4l2_ctrl_s_ctrl_int64(imx258->pixel_rate, pixel_rate);

  vblank_def = imx258->cur_mode->vts_def -
        imx258->cur_mode->height;
  vblank_min = imx258->cur_mode->vts_min -
        imx258->cur_mode->height;
  __v4l2_ctrl_modify_range(
   imx258->vblank, vblank_min,
   IMX258_VTS_MAX - imx258->cur_mode->height, 1,
   vblank_def);
  __v4l2_ctrl_s_ctrl(imx258->vblank, vblank_def);
  h_blank =
   link_freq_configs[mode->link_freq_index].pixels_per_line
    - imx258->cur_mode->width;
  __v4l2_ctrl_modify_range(imx258->hblank, h_blank,
      h_blank, 1, h_blank);
 }

 mutex_unlock(&imx258->mutex);

 return 0;
}
