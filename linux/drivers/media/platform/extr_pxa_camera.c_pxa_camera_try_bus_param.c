
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_mbus_config {int flags; int type; } ;
struct pxa_camera_dev {int dummy; } ;


 int EINVAL ;
 int ENOIOCTLCMD ;
 int V4L2_MBUS_PARALLEL ;
 int dev_warn (int ,char*,int ,unsigned long) ;
 int g_mbus_config ;
 int pcdev_to_dev (struct pxa_camera_dev*) ;
 unsigned long pxa_mbus_config_compatible (struct v4l2_mbus_config*,unsigned long) ;
 int sensor_call (struct pxa_camera_dev*,int ,int ,struct v4l2_mbus_config*) ;
 int test_platform_param (struct pxa_camera_dev*,unsigned char,unsigned long*) ;
 int video ;

__attribute__((used)) static int pxa_camera_try_bus_param(struct pxa_camera_dev *pcdev,
        unsigned char buswidth)
{
 struct v4l2_mbus_config cfg = {.type = V4L2_MBUS_PARALLEL,};
 unsigned long bus_flags, common_flags;
 int ret = test_platform_param(pcdev, buswidth, &bus_flags);

 if (ret < 0)
  return ret;

 ret = sensor_call(pcdev, video, g_mbus_config, &cfg);
 if (!ret) {
  common_flags = pxa_mbus_config_compatible(&cfg,
         bus_flags);
  if (!common_flags) {
   dev_warn(pcdev_to_dev(pcdev),
     "Flags incompatible: camera 0x%x, host 0x%lx\n",
     cfg.flags, bus_flags);
   return -EINVAL;
  }
 } else if (ret == -ENOIOCTLCMD) {
  ret = 0;
 }

 return ret;
}
