
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_rect {int dummy; } ;
struct isp_prev_device {struct v4l2_rect crop; int subdev; } ;
typedef enum v4l2_subdev_format_whence { ____Placeholder_v4l2_subdev_format_whence } v4l2_subdev_format_whence ;


 int PREV_PAD_SINK ;
 int V4L2_SUBDEV_FORMAT_TRY ;
 struct v4l2_rect* v4l2_subdev_get_try_crop (int *,struct v4l2_subdev_pad_config*,int ) ;

__attribute__((used)) static struct v4l2_rect *
__preview_get_crop(struct isp_prev_device *prev, struct v4l2_subdev_pad_config *cfg,
     enum v4l2_subdev_format_whence which)
{
 if (which == V4L2_SUBDEV_FORMAT_TRY)
  return v4l2_subdev_get_try_crop(&prev->subdev, cfg, PREV_PAD_SINK);
 else
  return &prev->crop;
}
