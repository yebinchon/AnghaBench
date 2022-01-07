
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {scalar_t__ code; } ;
struct v4l2_subdev_format {scalar_t__ pad; scalar_t__ which; struct v4l2_mbus_framefmt format; } ;
struct v4l2_subdev {int dummy; } ;
struct ov5640_mode_info {int dummy; } ;
struct ov5640_dev {int pending_mode_change; int pending_fmt_change; int lock; struct v4l2_mbus_framefmt fmt; struct ov5640_mode_info const* current_mode; int current_fr; scalar_t__ streaming; } ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ov5640_try_fmt_internal (struct v4l2_subdev*,struct v4l2_mbus_framefmt*,int ,struct ov5640_mode_info const**) ;
 struct ov5640_dev* to_ov5640_dev (struct v4l2_subdev*) ;
 struct v4l2_mbus_framefmt* v4l2_subdev_get_try_format (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,int ) ;

__attribute__((used)) static int ov5640_set_fmt(struct v4l2_subdev *sd,
     struct v4l2_subdev_pad_config *cfg,
     struct v4l2_subdev_format *format)
{
 struct ov5640_dev *sensor = to_ov5640_dev(sd);
 const struct ov5640_mode_info *new_mode;
 struct v4l2_mbus_framefmt *mbus_fmt = &format->format;
 struct v4l2_mbus_framefmt *fmt;
 int ret;

 if (format->pad != 0)
  return -EINVAL;

 mutex_lock(&sensor->lock);

 if (sensor->streaming) {
  ret = -EBUSY;
  goto out;
 }

 ret = ov5640_try_fmt_internal(sd, mbus_fmt,
          sensor->current_fr, &new_mode);
 if (ret)
  goto out;

 if (format->which == V4L2_SUBDEV_FORMAT_TRY)
  fmt = v4l2_subdev_get_try_format(sd, cfg, 0);
 else
  fmt = &sensor->fmt;

 *fmt = *mbus_fmt;

 if (new_mode != sensor->current_mode) {
  sensor->current_mode = new_mode;
  sensor->pending_mode_change = 1;
 }
 if (mbus_fmt->code != sensor->fmt.code)
  sensor->pending_fmt_change = 1;

out:
 mutex_unlock(&sensor->lock);
 return ret;
}
