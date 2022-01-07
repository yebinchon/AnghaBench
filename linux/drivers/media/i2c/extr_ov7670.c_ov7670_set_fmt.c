
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int dummy; } ;
struct v4l2_subdev_format {scalar_t__ which; struct v4l2_mbus_framefmt format; scalar_t__ pad; } ;
struct v4l2_subdev {int dummy; } ;
struct ov7670_info {scalar_t__ on; int wsize; int fmt; } ;


 int EINVAL ;
 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ;
 int ov7670_apply_fmt (struct v4l2_subdev*) ;
 int ov7670_try_fmt_internal (struct v4l2_subdev*,struct v4l2_mbus_framefmt*,int *,int *) ;
 struct ov7670_info* to_state (struct v4l2_subdev*) ;
 struct v4l2_mbus_framefmt* v4l2_subdev_get_try_format (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,scalar_t__) ;

__attribute__((used)) static int ov7670_set_fmt(struct v4l2_subdev *sd,
  struct v4l2_subdev_pad_config *cfg,
  struct v4l2_subdev_format *format)
{
 struct ov7670_info *info = to_state(sd);



 int ret;

 if (format->pad)
  return -EINVAL;

 if (format->which == V4L2_SUBDEV_FORMAT_TRY) {
  ret = ov7670_try_fmt_internal(sd, &format->format, ((void*)0), ((void*)0));
  if (ret)
   return ret;




  return 0;
 }

 ret = ov7670_try_fmt_internal(sd, &format->format, &info->fmt, &info->wsize);
 if (ret)
  return ret;






 if (info->on)
  return ov7670_apply_fmt(sd);

 return 0;
}
