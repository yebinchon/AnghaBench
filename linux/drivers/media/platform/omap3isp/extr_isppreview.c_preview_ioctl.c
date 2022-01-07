
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct isp_prev_device {int dummy; } ;


 long ENOIOCTLCMD ;

 long preview_config (struct isp_prev_device*,void*) ;
 struct isp_prev_device* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static long preview_ioctl(struct v4l2_subdev *sd, unsigned int cmd, void *arg)
{
 struct isp_prev_device *prev = v4l2_get_subdevdata(sd);

 switch (cmd) {
 case 128:
  return preview_config(prev, arg);

 default:
  return -ENOIOCTLCMD;
 }
}
