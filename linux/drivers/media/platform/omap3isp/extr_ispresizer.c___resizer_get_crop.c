
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_rect {int dummy; } ;
struct TYPE_2__ {struct v4l2_rect request; } ;
struct isp_res_device {TYPE_1__ crop; int subdev; } ;
typedef enum v4l2_subdev_format_whence { ____Placeholder_v4l2_subdev_format_whence } v4l2_subdev_format_whence ;


 int RESZ_PAD_SINK ;
 int V4L2_SUBDEV_FORMAT_TRY ;
 struct v4l2_rect* v4l2_subdev_get_try_crop (int *,struct v4l2_subdev_pad_config*,int ) ;

__attribute__((used)) static struct v4l2_rect *
__resizer_get_crop(struct isp_res_device *res, struct v4l2_subdev_pad_config *cfg,
     enum v4l2_subdev_format_whence which)
{
 if (which == V4L2_SUBDEV_FORMAT_TRY)
  return v4l2_subdev_get_try_crop(&res->subdev, cfg, RESZ_PAD_SINK);
 else
  return &res->crop.request;
}
