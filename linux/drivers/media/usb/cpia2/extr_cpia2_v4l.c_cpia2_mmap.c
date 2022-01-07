
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct file {int private_data; } ;
struct camera_data {int v4l2_lock; int stream_fh; } ;


 int ERESTARTSYS ;
 int cpia2_remap_buffer (struct camera_data*,struct vm_area_struct*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 struct camera_data* video_drvdata (struct file*) ;

__attribute__((used)) static int cpia2_mmap(struct file *file, struct vm_area_struct *area)
{
 struct camera_data *cam = video_drvdata(file);
 int retval;

 if (mutex_lock_interruptible(&cam->v4l2_lock))
  return -ERESTARTSYS;
 retval = cpia2_remap_buffer(cam, area);

 if(!retval)
  cam->stream_fh = file->private_data;
 mutex_unlock(&cam->v4l2_lock);
 return retval;
}
