
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct TYPE_2__ {int field; int code; int height; int width; } ;
struct v4l2_subdev_format {scalar_t__ which; TYPE_1__ format; int pad; } ;
struct v4l2_subdev {int dummy; } ;
struct ov5695_mode {int height; int width; } ;
struct ov5695 {int mutex; struct ov5695_mode* cur_mode; } ;


 int EINVAL ;
 int MEDIA_BUS_FMT_SBGGR10_1X10 ;
 int V4L2_FIELD_NONE ;
 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ov5695* to_ov5695 (struct v4l2_subdev*) ;
 TYPE_1__* v4l2_subdev_get_try_format (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,int ) ;

__attribute__((used)) static int ov5695_get_fmt(struct v4l2_subdev *sd,
     struct v4l2_subdev_pad_config *cfg,
     struct v4l2_subdev_format *fmt)
{
 struct ov5695 *ov5695 = to_ov5695(sd);
 const struct ov5695_mode *mode = ov5695->cur_mode;

 mutex_lock(&ov5695->mutex);
 if (fmt->which == V4L2_SUBDEV_FORMAT_TRY) {



  mutex_unlock(&ov5695->mutex);
  return -EINVAL;

 } else {
  fmt->format.width = mode->width;
  fmt->format.height = mode->height;
  fmt->format.code = MEDIA_BUS_FMT_SBGGR10_1X10;
  fmt->format.field = V4L2_FIELD_NONE;
 }
 mutex_unlock(&ov5695->mutex);

 return 0;
}
