
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int dummy; } ;
struct v4l2_subdev_format {scalar_t__ which; struct v4l2_mbus_framefmt format; int pad; } ;
struct v4l2_subdev {int dummy; } ;
struct ov2680_dev {int lock; struct v4l2_mbus_framefmt fmt; int sd; } ;


 int EINVAL ;
 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ov2680_dev* to_ov2680_dev (struct v4l2_subdev*) ;
 struct v4l2_mbus_framefmt* v4l2_subdev_get_try_format (int *,struct v4l2_subdev_pad_config*,int ) ;

__attribute__((used)) static int ov2680_get_fmt(struct v4l2_subdev *sd,
     struct v4l2_subdev_pad_config *cfg,
     struct v4l2_subdev_format *format)
{
 struct ov2680_dev *sensor = to_ov2680_dev(sd);
 struct v4l2_mbus_framefmt *fmt = ((void*)0);
 int ret = 0;

 if (format->pad != 0)
  return -EINVAL;

 mutex_lock(&sensor->lock);

 if (format->which == V4L2_SUBDEV_FORMAT_TRY) {



  ret = -EINVAL;

 } else {
  fmt = &sensor->fmt;
 }

 if (fmt)
  format->format = *fmt;

 mutex_unlock(&sensor->lock);

 return ret;
}
