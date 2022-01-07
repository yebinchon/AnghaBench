
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct et8ek8_sensor {int dummy; } ;


 int et8ek8_configure (struct et8ek8_sensor*) ;
 int et8ek8_stream_off (struct et8ek8_sensor*) ;
 int et8ek8_stream_on (struct et8ek8_sensor*) ;
 struct et8ek8_sensor* to_et8ek8_sensor (struct v4l2_subdev*) ;

__attribute__((used)) static int et8ek8_s_stream(struct v4l2_subdev *subdev, int streaming)
{
 struct et8ek8_sensor *sensor = to_et8ek8_sensor(subdev);
 int ret;

 if (!streaming)
  return et8ek8_stream_off(sensor);

 ret = et8ek8_configure(sensor);
 if (ret < 0)
  return ret;

 return et8ek8_stream_on(sensor);
}
