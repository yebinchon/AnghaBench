
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_mbus_framefmt {scalar_t__ code; int height; int width; int colorspace; int field; } ;
struct v4l2_subdev_pad_config {struct v4l2_mbus_framefmt try_fmt; } ;
struct v4l2_subdev_format {scalar_t__ which; scalar_t__ pad; struct v4l2_mbus_framefmt format; } ;
struct v4l2_subdev {int dummy; } ;
struct mt9v011 {int height; int width; } ;


 int EINVAL ;
 scalar_t__ MEDIA_BUS_FMT_SGRBG8_1X8 ;
 int V4L2_COLORSPACE_SRGB ;
 int V4L2_FIELD_NONE ;
 scalar_t__ V4L2_SUBDEV_FORMAT_ACTIVE ;
 int set_res (struct v4l2_subdev*) ;
 struct mt9v011* to_mt9v011 (struct v4l2_subdev*) ;
 int v4l_bound_align_image (int *,int,int,int,int *,int,int,int,int ) ;

__attribute__((used)) static int mt9v011_set_fmt(struct v4l2_subdev *sd,
  struct v4l2_subdev_pad_config *cfg,
  struct v4l2_subdev_format *format)
{
 struct v4l2_mbus_framefmt *fmt = &format->format;
 struct mt9v011 *core = to_mt9v011(sd);

 if (format->pad || fmt->code != MEDIA_BUS_FMT_SGRBG8_1X8)
  return -EINVAL;

 v4l_bound_align_image(&fmt->width, 48, 639, 1,
         &fmt->height, 32, 480, 1, 0);
 fmt->field = V4L2_FIELD_NONE;
 fmt->colorspace = V4L2_COLORSPACE_SRGB;

 if (format->which == V4L2_SUBDEV_FORMAT_ACTIVE) {
  core->width = fmt->width;
  core->height = fmt->height;

  set_res(sd);
 } else {
  cfg->try_fmt = *fmt;
 }

 return 0;
}
