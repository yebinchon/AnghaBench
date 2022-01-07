
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev_fh {int pad; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_rect {int height; int width; } ;
struct v4l2_mbus_framefmt {int field; int code; int height; int width; } ;
struct smiapp_subdev {unsigned int npads; struct smiapp_sensor* sensor; } ;
struct smiapp_sensor {int mutex; struct smiapp_subdev* pixel_array; TYPE_1__* internal_csi_format; } ;
struct TYPE_2__ {int code; } ;


 int V4L2_FIELD_NONE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int smiapp_get_native_size (struct smiapp_subdev*,struct v4l2_rect*) ;
 struct smiapp_subdev* to_smiapp_subdev (struct v4l2_subdev*) ;
 struct v4l2_rect* v4l2_subdev_get_try_compose (struct v4l2_subdev*,int ,unsigned int) ;
 struct v4l2_rect* v4l2_subdev_get_try_crop (struct v4l2_subdev*,int ,unsigned int) ;
 struct v4l2_mbus_framefmt* v4l2_subdev_get_try_format (struct v4l2_subdev*,int ,unsigned int) ;

__attribute__((used)) static int smiapp_open(struct v4l2_subdev *sd, struct v4l2_subdev_fh *fh)
{
 struct smiapp_subdev *ssd = to_smiapp_subdev(sd);
 struct smiapp_sensor *sensor = ssd->sensor;
 unsigned int i;

 mutex_lock(&sensor->mutex);

 for (i = 0; i < ssd->npads; i++) {
  struct v4l2_mbus_framefmt *try_fmt =
   v4l2_subdev_get_try_format(sd, fh->pad, i);
  struct v4l2_rect *try_crop =
   v4l2_subdev_get_try_crop(sd, fh->pad, i);
  struct v4l2_rect *try_comp;

  smiapp_get_native_size(ssd, try_crop);

  try_fmt->width = try_crop->width;
  try_fmt->height = try_crop->height;
  try_fmt->code = sensor->internal_csi_format->code;
  try_fmt->field = V4L2_FIELD_NONE;

  if (ssd != sensor->pixel_array)
   continue;

  try_comp = v4l2_subdev_get_try_compose(sd, fh->pad, i);
  *try_comp = *try_crop;
 }

 mutex_unlock(&sensor->mutex);

 return 0;
}
