
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stk_camera {int lock; int interface; scalar_t__ first_init; } ;
struct file {int dummy; } ;


 int ENXIO ;
 int ERESTARTSYS ;
 int is_present (struct stk_camera*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int stk_camera_write_reg (struct stk_camera*,int,int) ;
 int usb_autopm_get_interface (int ) ;
 int v4l2_fh_open (struct file*) ;
 struct stk_camera* video_drvdata (struct file*) ;

__attribute__((used)) static int v4l_stk_open(struct file *fp)
{
 struct stk_camera *dev = video_drvdata(fp);
 int err;

 if (dev == ((void*)0) || !is_present(dev))
  return -ENXIO;

 if (mutex_lock_interruptible(&dev->lock))
  return -ERESTARTSYS;
 if (!dev->first_init)
  stk_camera_write_reg(dev, 0x0, 0x24);
 else
  dev->first_init = 0;

 err = v4l2_fh_open(fp);
 if (!err)
  usb_autopm_get_interface(dev->interface);
 mutex_unlock(&dev->lock);
 return err;
}
