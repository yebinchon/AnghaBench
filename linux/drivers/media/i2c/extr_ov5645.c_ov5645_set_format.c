
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int colorspace; int field; int code; int height; int width; } ;
struct v4l2_subdev_format {struct v4l2_mbus_framefmt format; int which; int pad; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_rect {int height; int width; } ;
struct ov5645_mode_info {int link_freq; int pixel_clock; int height; int width; } ;
struct ov5645 {struct ov5645_mode_info const* current_mode; int link_freq; int pixel_clock; } ;


 int ARRAY_SIZE (int ) ;
 int MEDIA_BUS_FMT_UYVY8_2X8 ;
 int V4L2_COLORSPACE_SRGB ;
 int V4L2_FIELD_NONE ;
 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 struct v4l2_rect* __ov5645_get_pad_crop (struct ov5645*,struct v4l2_subdev_pad_config*,int ,int ) ;
 struct v4l2_mbus_framefmt* __ov5645_get_pad_format (struct ov5645*,struct v4l2_subdev_pad_config*,int ,int ) ;
 int height ;
 int ov5645_mode_info_data ;
 struct ov5645* to_ov5645 (struct v4l2_subdev*) ;
 int v4l2_ctrl_s_ctrl (int ,int ) ;
 int v4l2_ctrl_s_ctrl_int64 (int ,int ) ;
 struct ov5645_mode_info* v4l2_find_nearest_size (int ,int ,int ,int ,int ,int ) ;
 int width ;

__attribute__((used)) static int ov5645_set_format(struct v4l2_subdev *sd,
        struct v4l2_subdev_pad_config *cfg,
        struct v4l2_subdev_format *format)
{
 struct ov5645 *ov5645 = to_ov5645(sd);
 struct v4l2_mbus_framefmt *__format;
 struct v4l2_rect *__crop;
 const struct ov5645_mode_info *new_mode;
 int ret;

 __crop = __ov5645_get_pad_crop(ov5645, cfg, format->pad,
   format->which);

 new_mode = v4l2_find_nearest_size(ov5645_mode_info_data,
          ARRAY_SIZE(ov5645_mode_info_data),
          width, height,
          format->format.width, format->format.height);

 __crop->width = new_mode->width;
 __crop->height = new_mode->height;

 if (format->which == V4L2_SUBDEV_FORMAT_ACTIVE) {
  ret = v4l2_ctrl_s_ctrl_int64(ov5645->pixel_clock,
          new_mode->pixel_clock);
  if (ret < 0)
   return ret;

  ret = v4l2_ctrl_s_ctrl(ov5645->link_freq,
           new_mode->link_freq);
  if (ret < 0)
   return ret;

  ov5645->current_mode = new_mode;
 }

 __format = __ov5645_get_pad_format(ov5645, cfg, format->pad,
   format->which);
 __format->width = __crop->width;
 __format->height = __crop->height;
 __format->code = MEDIA_BUS_FMT_UYVY8_2X8;
 __format->field = V4L2_FIELD_NONE;
 __format->colorspace = V4L2_COLORSPACE_SRGB;

 format->format = *__format;

 return 0;
}
