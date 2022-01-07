
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct smiapp_sensor {scalar_t__ binner; scalar_t__ pixel_array; scalar_t__ scaler; } ;


 int MEDIA_LNK_FL_ENABLED ;
 int MEDIA_LNK_FL_IMMUTABLE ;
 int SMIAPP_PAD_SINK ;
 int SMIAPP_PAD_SRC ;
 int SMIAPP_PA_PAD_SRC ;
 int smiapp_register_subdev (struct smiapp_sensor*,scalar_t__,scalar_t__,int ,int ,int) ;
 int smiapp_unregistered (struct v4l2_subdev*) ;
 struct smiapp_sensor* to_smiapp_sensor (struct v4l2_subdev*) ;

__attribute__((used)) static int smiapp_registered(struct v4l2_subdev *subdev)
{
 struct smiapp_sensor *sensor = to_smiapp_sensor(subdev);
 int rval;

 if (sensor->scaler) {
  rval = smiapp_register_subdev(
   sensor, sensor->binner, sensor->scaler,
   SMIAPP_PAD_SRC, SMIAPP_PAD_SINK,
   MEDIA_LNK_FL_ENABLED | MEDIA_LNK_FL_IMMUTABLE);
  if (rval < 0)
   return rval;
 }

 rval = smiapp_register_subdev(
  sensor, sensor->pixel_array, sensor->binner,
  SMIAPP_PA_PAD_SRC, SMIAPP_PAD_SINK,
  MEDIA_LNK_FL_ENABLED | MEDIA_LNK_FL_IMMUTABLE);
 if (rval)
  goto out_err;

 return 0;

out_err:
 smiapp_unregistered(subdev);

 return rval;
}
