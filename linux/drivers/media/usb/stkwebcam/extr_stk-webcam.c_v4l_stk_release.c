
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stk_camera {int lock; int interface; struct file* owner; } ;
struct file {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stk_camera_write_reg (struct stk_camera*,int,int) ;
 int stk_free_buffers (struct stk_camera*) ;
 int stk_stop_stream (struct stk_camera*) ;
 int unset_initialised (struct stk_camera*) ;
 int usb_autopm_put_interface (int ) ;
 int v4l2_fh_release (struct file*) ;
 struct stk_camera* video_drvdata (struct file*) ;

__attribute__((used)) static int v4l_stk_release(struct file *fp)
{
 struct stk_camera *dev = video_drvdata(fp);

 mutex_lock(&dev->lock);
 if (dev->owner == fp) {
  stk_stop_stream(dev);
  stk_free_buffers(dev);
  stk_camera_write_reg(dev, 0x0, 0x49);
  unset_initialised(dev);
  dev->owner = ((void*)0);
 }

 usb_autopm_put_interface(dev->interface);
 mutex_unlock(&dev->lock);
 return v4l2_fh_release(fp);
}
