
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int dummy; } ;
struct v4l2_subdev_format {scalar_t__ which; struct v4l2_mbus_framefmt format; } ;
struct v4l2_subdev {int dummy; } ;
struct ov7670_info {struct v4l2_mbus_framefmt format; } ;


 int EINVAL ;
 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ;
 struct ov7670_info* to_state (struct v4l2_subdev*) ;
 struct v4l2_mbus_framefmt* v4l2_subdev_get_try_format (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,int ) ;

__attribute__((used)) static int ov7670_get_fmt(struct v4l2_subdev *sd,
     struct v4l2_subdev_pad_config *cfg,
     struct v4l2_subdev_format *format)
{
 struct ov7670_info *info = to_state(sd);




 if (format->which == V4L2_SUBDEV_FORMAT_TRY) {





  return -EINVAL;

 } else {
  format->format = info->format;
 }

 return 0;
}
