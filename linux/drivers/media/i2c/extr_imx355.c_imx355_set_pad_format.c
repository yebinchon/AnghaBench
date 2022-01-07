
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int height; int width; int code; } ;
struct v4l2_subdev_format {scalar_t__ which; struct v4l2_mbus_framefmt format; int pad; } ;
struct v4l2_subdev {int dummy; } ;
struct imx355_mode {scalar_t__ width; scalar_t__ llp; scalar_t__ fll_min; scalar_t__ fll_def; scalar_t__ height; } ;
struct imx355 {int link_def_freq; int mutex; int hblank; struct imx355_mode const* cur_mode; int vblank; int pixel_rate; } ;
typedef scalar_t__ s64 ;
typedef scalar_t__ s32 ;


 int ARRAY_SIZE (int ) ;
 scalar_t__ IMX355_FLL_MAX ;
 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ;
 int __v4l2_ctrl_modify_range (int ,scalar_t__,scalar_t__,int,scalar_t__) ;
 int __v4l2_ctrl_s_ctrl (int ,scalar_t__) ;
 int __v4l2_ctrl_s_ctrl_int64 (int ,int) ;
 int do_div (int,int) ;
 int imx355_get_format_code (struct imx355*) ;
 int imx355_update_pad_format (struct imx355*,struct imx355_mode const*,struct v4l2_subdev_format*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int supported_modes ;
 struct imx355* to_imx355 (struct v4l2_subdev*) ;
 struct imx355_mode* v4l2_find_nearest_size (int ,int ,int ,scalar_t__,int ,int ) ;
 struct v4l2_mbus_framefmt* v4l2_subdev_get_try_format (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,int ) ;
 int width ;

__attribute__((used)) static int
imx355_set_pad_format(struct v4l2_subdev *sd,
        struct v4l2_subdev_pad_config *cfg,
        struct v4l2_subdev_format *fmt)
{
 struct imx355 *imx355 = to_imx355(sd);
 const struct imx355_mode *mode;
 struct v4l2_mbus_framefmt *framefmt;
 s32 vblank_def;
 s32 vblank_min;
 s64 h_blank;
 u64 pixel_rate;
 u32 height;

 mutex_lock(&imx355->mutex);





 fmt->format.code = imx355_get_format_code(imx355);

 mode = v4l2_find_nearest_size(supported_modes,
          ARRAY_SIZE(supported_modes),
          width, height,
          fmt->format.width, fmt->format.height);
 imx355_update_pad_format(imx355, mode, fmt);
 if (fmt->which == V4L2_SUBDEV_FORMAT_TRY) {
  framefmt = v4l2_subdev_get_try_format(sd, cfg, fmt->pad);
  *framefmt = fmt->format;
 } else {
  imx355->cur_mode = mode;
  pixel_rate = imx355->link_def_freq * 2 * 4;
  do_div(pixel_rate, 10);
  __v4l2_ctrl_s_ctrl_int64(imx355->pixel_rate, pixel_rate);

  height = imx355->cur_mode->height;
  vblank_def = imx355->cur_mode->fll_def - height;
  vblank_min = imx355->cur_mode->fll_min - height;
  height = IMX355_FLL_MAX - height;
  __v4l2_ctrl_modify_range(imx355->vblank, vblank_min, height, 1,
      vblank_def);
  __v4l2_ctrl_s_ctrl(imx355->vblank, vblank_def);
  h_blank = mode->llp - imx355->cur_mode->width;




  __v4l2_ctrl_modify_range(imx355->hblank, h_blank,
      h_blank, 1, h_blank);
 }

 mutex_unlock(&imx355->mutex);

 return 0;
}
