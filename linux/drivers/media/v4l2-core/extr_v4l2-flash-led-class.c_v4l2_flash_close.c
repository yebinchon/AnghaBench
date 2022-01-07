
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_fh {int vfh; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_flash {scalar_t__* ctrls; struct led_classdev* iled_cdev; struct led_classdev_flash* fled_cdev; } ;
struct led_classdev {int led_access; } ;
struct led_classdev_flash {struct led_classdev led_cdev; } ;


 size_t STROBE_SOURCE ;
 int V4L2_FLASH_STROBE_SOURCE_SOFTWARE ;
 int led_sysfs_enable (struct led_classdev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int v4l2_ctrl_s_ctrl (scalar_t__,int ) ;
 int v4l2_fh_is_singular (int *) ;
 struct v4l2_flash* v4l2_subdev_to_v4l2_flash (struct v4l2_subdev*) ;

__attribute__((used)) static int v4l2_flash_close(struct v4l2_subdev *sd, struct v4l2_subdev_fh *fh)
{
 struct v4l2_flash *v4l2_flash = v4l2_subdev_to_v4l2_flash(sd);
 struct led_classdev_flash *fled_cdev = v4l2_flash->fled_cdev;
 struct led_classdev *led_cdev = fled_cdev ? &fled_cdev->led_cdev : ((void*)0);
 struct led_classdev *led_cdev_ind = v4l2_flash->iled_cdev;
 int ret = 0;

 if (!v4l2_fh_is_singular(&fh->vfh))
  return 0;

 if (led_cdev) {
  mutex_lock(&led_cdev->led_access);

  if (v4l2_flash->ctrls[STROBE_SOURCE])
   ret = v4l2_ctrl_s_ctrl(
    v4l2_flash->ctrls[STROBE_SOURCE],
    V4L2_FLASH_STROBE_SOURCE_SOFTWARE);
  led_sysfs_enable(led_cdev);

  mutex_unlock(&led_cdev->led_access);
 }

 if (led_cdev_ind) {
  mutex_lock(&led_cdev_ind->led_access);
  led_sysfs_enable(led_cdev_ind);
  mutex_unlock(&led_cdev_ind->led_access);
 }

 return ret;
}
