
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int colorspace; int code; int height; int width; } ;
struct v4l2_subdev_format {scalar_t__ pad; scalar_t__ which; struct v4l2_mbus_framefmt format; } ;
struct v4l2_subdev {int dummy; } ;
struct ov2680_mode_info {int height; int width; } ;
struct ov2680_dev {int mode_pending_changes; int lock; struct v4l2_mbus_framefmt fmt; struct ov2680_mode_info const* current_mode; scalar_t__ is_streaming; } ;


 int ARRAY_SIZE (int ) ;
 int EBUSY ;
 int EINVAL ;
 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ;
 int height ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ov2680_mode_data ;
 struct ov2680_dev* to_ov2680_dev (struct v4l2_subdev*) ;
 struct ov2680_mode_info* v4l2_find_nearest_size (int ,int ,int ,int ,int ,int ) ;
 struct v4l2_mbus_framefmt* v4l2_subdev_get_try_format (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,int ) ;
 int width ;

__attribute__((used)) static int ov2680_set_fmt(struct v4l2_subdev *sd,
     struct v4l2_subdev_pad_config *cfg,
     struct v4l2_subdev_format *format)
{
 struct ov2680_dev *sensor = to_ov2680_dev(sd);
 struct v4l2_mbus_framefmt *fmt = &format->format;



 const struct ov2680_mode_info *mode;
 int ret = 0;

 if (format->pad != 0)
  return -EINVAL;

 mutex_lock(&sensor->lock);

 if (sensor->is_streaming) {
  ret = -EBUSY;
  goto unlock;
 }

 mode = v4l2_find_nearest_size(ov2680_mode_data,
          ARRAY_SIZE(ov2680_mode_data), width,
          height, fmt->width, fmt->height);
 if (!mode) {
  ret = -EINVAL;
  goto unlock;
 }

 if (format->which == V4L2_SUBDEV_FORMAT_TRY) {




  goto unlock;
 }

 fmt->width = mode->width;
 fmt->height = mode->height;
 fmt->code = sensor->fmt.code;
 fmt->colorspace = sensor->fmt.colorspace;

 sensor->current_mode = mode;
 sensor->fmt = format->format;
 sensor->mode_pending_changes = 1;

unlock:
 mutex_unlock(&sensor->lock);

 return ret;
}
