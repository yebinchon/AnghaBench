
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct camera_data {int v4l2_lock; scalar_t__ COM_len; scalar_t__ APP_len; } ;


 int EIO ;
 int ENOMEM ;
 int ERESTARTSYS ;
 scalar_t__ cpia2_allocate_buffers (struct camera_data*) ;
 int cpia2_dbg_dump_registers (struct camera_data*) ;
 scalar_t__ cpia2_reset_camera (struct camera_data*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ v4l2_fh_is_singular_file (struct file*) ;
 int v4l2_fh_open (struct file*) ;
 int v4l2_fh_release (struct file*) ;
 struct camera_data* video_drvdata (struct file*) ;

__attribute__((used)) static int cpia2_open(struct file *file)
{
 struct camera_data *cam = video_drvdata(file);
 int retval;

 if (mutex_lock_interruptible(&cam->v4l2_lock))
  return -ERESTARTSYS;
 retval = v4l2_fh_open(file);
 if (retval)
  goto open_unlock;

 if (v4l2_fh_is_singular_file(file)) {
  if (cpia2_allocate_buffers(cam)) {
   v4l2_fh_release(file);
   retval = -ENOMEM;
   goto open_unlock;
  }


  if (cpia2_reset_camera(cam) < 0) {
   v4l2_fh_release(file);
   retval = -EIO;
   goto open_unlock;
  }

  cam->APP_len = 0;
  cam->COM_len = 0;
 }

 cpia2_dbg_dump_registers(cam);
open_unlock:
 mutex_unlock(&cam->v4l2_lock);
 return retval;
}
