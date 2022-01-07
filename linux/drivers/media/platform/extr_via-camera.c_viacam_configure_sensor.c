
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via_camera {int mbus_code; int sensor_format; } ;
struct v4l2_subdev_format {int format; int which; } ;


 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 int core ;
 int init ;
 int pad ;
 int sensor_call (struct via_camera*,int ,int ,int *,...) ;
 int set_fmt ;
 int v4l2_fill_mbus_format (int *,int *,int ) ;
 int viacam_set_flip (struct via_camera*) ;

__attribute__((used)) static int viacam_configure_sensor(struct via_camera *cam)
{
 struct v4l2_subdev_format format = {
  .which = V4L2_SUBDEV_FORMAT_ACTIVE,
 };
 int ret;

 v4l2_fill_mbus_format(&format.format, &cam->sensor_format, cam->mbus_code);
 ret = sensor_call(cam, core, init, 0);
 if (ret == 0)
  ret = sensor_call(cam, pad, set_fmt, ((void*)0), &format);



 if (ret == 0)
  ret = viacam_set_flip(cam);
 return ret;
}
