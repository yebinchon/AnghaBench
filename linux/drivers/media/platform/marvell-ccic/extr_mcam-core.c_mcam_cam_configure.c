
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_format {int format; int which; } ;
struct mcam_camera {int mbus_code; int pix_format; } ;


 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 int core ;
 int init ;
 scalar_t__ mcam_cam_set_flip (struct mcam_camera*) ;
 int pad ;
 int sensor_call (struct mcam_camera*,int ,int ,int *,...) ;
 int set_fmt ;
 int v4l2_fill_mbus_format (int *,int *,int ) ;

__attribute__((used)) static int mcam_cam_configure(struct mcam_camera *cam)
{
 struct v4l2_subdev_format format = {
  .which = V4L2_SUBDEV_FORMAT_ACTIVE,
 };
 int ret;

 v4l2_fill_mbus_format(&format.format, &cam->pix_format, cam->mbus_code);
 ret = sensor_call(cam, core, init, 0);
 if (ret == 0)
  ret = sensor_call(cam, pad, set_fmt, ((void*)0), &format);



 ret += mcam_cam_set_flip(cam);
 return ret;
}
