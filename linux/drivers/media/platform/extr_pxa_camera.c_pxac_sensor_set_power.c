
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa_camera_dev {int dummy; } ;


 int ENOIOCTLCMD ;
 int core ;
 int dev_warn (int ,char*,char*,int) ;
 int pcdev_to_dev (struct pxa_camera_dev*) ;
 int s_power ;
 int sensor_call (struct pxa_camera_dev*,int ,int ,int) ;

__attribute__((used)) static int pxac_sensor_set_power(struct pxa_camera_dev *pcdev, int on)
{
 int ret;

 ret = sensor_call(pcdev, core, s_power, on);
 if (ret == -ENOIOCTLCMD)
  ret = 0;
 if (ret) {
  dev_warn(pcdev_to_dev(pcdev),
    "Failed to put subdevice in %s mode: %d\n",
    on ? "normal operation" : "power saving", ret);
 }

 return ret;
}
