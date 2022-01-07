
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct isc_device {int lock; int fmt; TYPE_1__* current_subdev; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct v4l2_subdev* sd; } ;


 int ENOIOCTLCMD ;
 int ERESTARTSYS ;
 int core ;
 int isc_set_fmt (struct isc_device*,int *) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int s_power ;
 int v4l2_fh_is_singular_file (struct file*) ;
 int v4l2_fh_open (struct file*) ;
 int v4l2_fh_release (struct file*) ;
 int v4l2_subdev_call (struct v4l2_subdev*,int ,int ,int) ;
 struct isc_device* video_drvdata (struct file*) ;

__attribute__((used)) static int isc_open(struct file *file)
{
 struct isc_device *isc = video_drvdata(file);
 struct v4l2_subdev *sd = isc->current_subdev->sd;
 int ret;

 if (mutex_lock_interruptible(&isc->lock))
  return -ERESTARTSYS;

 ret = v4l2_fh_open(file);
 if (ret < 0)
  goto unlock;

 if (!v4l2_fh_is_singular_file(file))
  goto unlock;

 ret = v4l2_subdev_call(sd, core, s_power, 1);
 if (ret < 0 && ret != -ENOIOCTLCMD) {
  v4l2_fh_release(file);
  goto unlock;
 }

 ret = isc_set_fmt(isc, &isc->fmt);
 if (ret) {
  v4l2_subdev_call(sd, core, s_power, 0);
  v4l2_fh_release(file);
 }

unlock:
 mutex_unlock(&isc->lock);
 return ret;
}
