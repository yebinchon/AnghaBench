
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct isp_ccdc_device {int ioctl_lock; } ;


 long ENOIOCTLCMD ;

 int ccdc_config (struct isp_ccdc_device*,void*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct isp_ccdc_device* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static long ccdc_ioctl(struct v4l2_subdev *sd, unsigned int cmd, void *arg)
{
 struct isp_ccdc_device *ccdc = v4l2_get_subdevdata(sd);
 int ret;

 switch (cmd) {
 case 128:
  mutex_lock(&ccdc->ioctl_lock);
  ret = ccdc_config(ccdc, arg);
  mutex_unlock(&ccdc->ioctl_lock);
  break;

 default:
  return -ENOIOCTLCMD;
 }

 return ret;
}
