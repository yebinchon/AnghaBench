
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_format {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct smiapp_sensor {int mutex; } ;


 int __smiapp_get_format (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,struct v4l2_subdev_format*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct smiapp_sensor* to_smiapp_sensor (struct v4l2_subdev*) ;

__attribute__((used)) static int smiapp_get_format(struct v4l2_subdev *subdev,
        struct v4l2_subdev_pad_config *cfg,
        struct v4l2_subdev_format *fmt)
{
 struct smiapp_sensor *sensor = to_smiapp_sensor(subdev);
 int rval;

 mutex_lock(&sensor->mutex);
 rval = __smiapp_get_format(subdev, cfg, fmt);
 mutex_unlock(&sensor->mutex);

 return rval;
}
