
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int height; int width; } ;
struct v4l2_subdev_format {int which; struct v4l2_mbus_framefmt format; int pad; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_rect {int height; int width; scalar_t__ top; scalar_t__ left; } ;
struct isp_prev_device {int dummy; } ;


 int EINVAL ;
 int PREV_PAD_SINK ;
 int PREV_PAD_SOURCE ;
 struct v4l2_rect* __preview_get_crop (struct isp_prev_device*,struct v4l2_subdev_pad_config*,int ) ;
 struct v4l2_mbus_framefmt* __preview_get_format (struct isp_prev_device*,struct v4l2_subdev_pad_config*,int ,int ) ;
 int preview_try_crop (struct isp_prev_device*,struct v4l2_mbus_framefmt*,struct v4l2_rect*) ;
 int preview_try_format (struct isp_prev_device*,struct v4l2_subdev_pad_config*,int ,struct v4l2_mbus_framefmt*,int ) ;
 struct isp_prev_device* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int preview_set_format(struct v4l2_subdev *sd, struct v4l2_subdev_pad_config *cfg,
         struct v4l2_subdev_format *fmt)
{
 struct isp_prev_device *prev = v4l2_get_subdevdata(sd);
 struct v4l2_mbus_framefmt *format;
 struct v4l2_rect *crop;

 format = __preview_get_format(prev, cfg, fmt->pad, fmt->which);
 if (format == ((void*)0))
  return -EINVAL;

 preview_try_format(prev, cfg, fmt->pad, &fmt->format, fmt->which);
 *format = fmt->format;


 if (fmt->pad == PREV_PAD_SINK) {

  crop = __preview_get_crop(prev, cfg, fmt->which);
  crop->left = 0;
  crop->top = 0;
  crop->width = fmt->format.width;
  crop->height = fmt->format.height;

  preview_try_crop(prev, &fmt->format, crop);


  format = __preview_get_format(prev, cfg, PREV_PAD_SOURCE,
           fmt->which);
  preview_try_format(prev, cfg, PREV_PAD_SOURCE, format,
       fmt->which);
 }

 return 0;
}
