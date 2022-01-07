
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int dummy; } ;
struct mt9m032 {struct v4l2_mbus_framefmt format; int subdev; } ;
typedef enum v4l2_subdev_format_whence { ____Placeholder_v4l2_subdev_format_whence } v4l2_subdev_format_whence ;




 struct v4l2_mbus_framefmt* v4l2_subdev_get_try_format (int *,struct v4l2_subdev_pad_config*,int ) ;

__attribute__((used)) static struct v4l2_mbus_framefmt *
__mt9m032_get_pad_format(struct mt9m032 *sensor, struct v4l2_subdev_pad_config *cfg,
    enum v4l2_subdev_format_whence which)
{
 switch (which) {
 case 128:
  return v4l2_subdev_get_try_format(&sensor->subdev, cfg, 0);
 case 129:
  return &sensor->format;
 default:
  return ((void*)0);
 }
}
