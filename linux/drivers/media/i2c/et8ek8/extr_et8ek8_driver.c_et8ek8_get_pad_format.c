
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int dummy; } ;
struct v4l2_subdev_format {struct v4l2_mbus_framefmt format; int which; int pad; } ;
struct v4l2_subdev {int dummy; } ;
struct et8ek8_sensor {int dummy; } ;


 int EINVAL ;
 struct v4l2_mbus_framefmt* __et8ek8_get_pad_format (struct et8ek8_sensor*,struct v4l2_subdev_pad_config*,int ,int ) ;
 struct et8ek8_sensor* to_et8ek8_sensor (struct v4l2_subdev*) ;

__attribute__((used)) static int et8ek8_get_pad_format(struct v4l2_subdev *subdev,
     struct v4l2_subdev_pad_config *cfg,
     struct v4l2_subdev_format *fmt)
{
 struct et8ek8_sensor *sensor = to_et8ek8_sensor(subdev);
 struct v4l2_mbus_framefmt *format;

 format = __et8ek8_get_pad_format(sensor, cfg, fmt->pad, fmt->which);
 if (!format)
  return -EINVAL;

 fmt->format = *format;

 return 0;
}
