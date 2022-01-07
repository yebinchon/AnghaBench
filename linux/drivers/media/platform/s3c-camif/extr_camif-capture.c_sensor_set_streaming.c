
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_sensor {int stream_count; int sd; } ;
struct camif_dev {struct cam_sensor sensor; } ;


 int pr_debug (char*,int,int,int) ;
 int s_stream ;
 int v4l2_subdev_call (int ,int ,int ,int) ;
 int video ;

__attribute__((used)) static int sensor_set_streaming(struct camif_dev *camif, int on)
{
 struct cam_sensor *sensor = &camif->sensor;
 int err = 0;

 if (camif->sensor.stream_count == !on)
  err = v4l2_subdev_call(sensor->sd, video, s_stream, on);
 if (!err)
  sensor->stream_count += on ? 1 : -1;

 pr_debug("on: %d, stream_count: %d, err: %d\n",
   on, sensor->stream_count, err);

 return err;
}
