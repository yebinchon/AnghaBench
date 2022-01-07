
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int colorspace; int xfer_func; int ycbcr_enc; int quantization; int field; int code; int height; int width; } ;
struct v4l2_subdev_format {struct v4l2_mbus_framefmt format; int which; int pad; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_rect {int height; int width; } ;
struct ov7251_mode_info {int link_freq; int exposure_def; int exposure_max; int pixel_clock; int height; int width; } ;
struct ov7251 {int lock; struct ov7251_mode_info const* current_mode; int gain; int exposure; int link_freq; int pixel_clock; } ;


 int ARRAY_SIZE (int ) ;
 int MEDIA_BUS_FMT_Y10_1X10 ;
 int V4L2_COLORSPACE_SRGB ;
 int V4L2_FIELD_NONE ;
 int V4L2_MAP_QUANTIZATION_DEFAULT (int,int ,int ) ;
 int V4L2_MAP_XFER_FUNC_DEFAULT (int ) ;
 int V4L2_MAP_YCBCR_ENC_DEFAULT (int ) ;
 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 struct v4l2_rect* __ov7251_get_pad_crop (struct ov7251*,struct v4l2_subdev_pad_config*,int ,int ) ;
 struct v4l2_mbus_framefmt* __ov7251_get_pad_format (struct ov7251*,struct v4l2_subdev_pad_config*,int ,int ) ;
 int __v4l2_ctrl_modify_range (int ,int,int ,int,int) ;
 int __v4l2_ctrl_s_ctrl (int ,int) ;
 int __v4l2_ctrl_s_ctrl_int64 (int ,int ) ;
 int height ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ov7251_mode_info_data ;
 struct ov7251* to_ov7251 (struct v4l2_subdev*) ;
 struct ov7251_mode_info* v4l2_find_nearest_size (int ,int ,int ,int ,int ,int ) ;
 int width ;

__attribute__((used)) static int ov7251_set_format(struct v4l2_subdev *sd,
        struct v4l2_subdev_pad_config *cfg,
        struct v4l2_subdev_format *format)
{
 struct ov7251 *ov7251 = to_ov7251(sd);
 struct v4l2_mbus_framefmt *__format;
 struct v4l2_rect *__crop;
 const struct ov7251_mode_info *new_mode;
 int ret = 0;

 mutex_lock(&ov7251->lock);

 __crop = __ov7251_get_pad_crop(ov7251, cfg, format->pad, format->which);

 new_mode = v4l2_find_nearest_size(ov7251_mode_info_data,
    ARRAY_SIZE(ov7251_mode_info_data),
    width, height,
    format->format.width, format->format.height);

 __crop->width = new_mode->width;
 __crop->height = new_mode->height;

 if (format->which == V4L2_SUBDEV_FORMAT_ACTIVE) {
  ret = __v4l2_ctrl_s_ctrl_int64(ov7251->pixel_clock,
            new_mode->pixel_clock);
  if (ret < 0)
   goto exit;

  ret = __v4l2_ctrl_s_ctrl(ov7251->link_freq,
      new_mode->link_freq);
  if (ret < 0)
   goto exit;

  ret = __v4l2_ctrl_modify_range(ov7251->exposure,
            1, new_mode->exposure_max,
            1, new_mode->exposure_def);
  if (ret < 0)
   goto exit;

  ret = __v4l2_ctrl_s_ctrl(ov7251->exposure,
      new_mode->exposure_def);
  if (ret < 0)
   goto exit;

  ret = __v4l2_ctrl_s_ctrl(ov7251->gain, 16);
  if (ret < 0)
   goto exit;

  ov7251->current_mode = new_mode;
 }

 __format = __ov7251_get_pad_format(ov7251, cfg, format->pad,
        format->which);
 __format->width = __crop->width;
 __format->height = __crop->height;
 __format->code = MEDIA_BUS_FMT_Y10_1X10;
 __format->field = V4L2_FIELD_NONE;
 __format->colorspace = V4L2_COLORSPACE_SRGB;
 __format->ycbcr_enc = V4L2_MAP_YCBCR_ENC_DEFAULT(__format->colorspace);
 __format->quantization = V4L2_MAP_QUANTIZATION_DEFAULT(1,
    __format->colorspace, __format->ycbcr_enc);
 __format->xfer_func = V4L2_MAP_XFER_FUNC_DEFAULT(__format->colorspace);

 format->format = *__format;

exit:
 mutex_unlock(&ov7251->lock);

 return ret;
}
