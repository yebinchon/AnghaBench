
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_rect {int dummy; } ;
struct v4l2_mbus_framefmt {int field; int colorspace; int code; void* height; void* width; } ;
struct resizer_ratio {int dummy; } ;
struct isp_res_device {int dummy; } ;
typedef enum v4l2_subdev_format_whence { ____Placeholder_v4l2_subdev_format_whence } v4l2_subdev_format_whence ;


 int MAX_IN_HEIGHT ;
 int MEDIA_BUS_FMT_UYVY8_1X16 ;
 int MEDIA_BUS_FMT_YUYV8_1X16 ;
 int MIN_IN_HEIGHT ;
 int MIN_IN_WIDTH ;


 int V4L2_COLORSPACE_JPEG ;
 int V4L2_FIELD_NONE ;
 struct v4l2_rect* __resizer_get_crop (struct isp_res_device*,struct v4l2_subdev_pad_config*,int) ;
 struct v4l2_mbus_framefmt* __resizer_get_format (struct isp_res_device*,struct v4l2_subdev_pad_config*,int const,int) ;
 void* clamp_t (int ,void*,int ,int ) ;
 int resizer_calc_ratios (struct isp_res_device*,struct v4l2_rect*,struct v4l2_mbus_framefmt*,struct resizer_ratio*) ;
 int resizer_max_in_width (struct isp_res_device*) ;
 int u32 ;

__attribute__((used)) static void resizer_try_format(struct isp_res_device *res,
          struct v4l2_subdev_pad_config *cfg, unsigned int pad,
          struct v4l2_mbus_framefmt *fmt,
          enum v4l2_subdev_format_whence which)
{
 struct v4l2_mbus_framefmt *format;
 struct resizer_ratio ratio;
 struct v4l2_rect crop;

 switch (pad) {
 case 129:
  if (fmt->code != MEDIA_BUS_FMT_YUYV8_1X16 &&
      fmt->code != MEDIA_BUS_FMT_UYVY8_1X16)
   fmt->code = MEDIA_BUS_FMT_YUYV8_1X16;

  fmt->width = clamp_t(u32, fmt->width, MIN_IN_WIDTH,
         resizer_max_in_width(res));
  fmt->height = clamp_t(u32, fmt->height, MIN_IN_HEIGHT,
          MAX_IN_HEIGHT);
  break;

 case 128:
  format = __resizer_get_format(res, cfg, 129, which);
  fmt->code = format->code;

  crop = *__resizer_get_crop(res, cfg, which);
  resizer_calc_ratios(res, &crop, fmt, &ratio);
  break;
 }

 fmt->colorspace = V4L2_COLORSPACE_JPEG;
 fmt->field = V4L2_FIELD_NONE;
}
