
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct camif_vp {int owner; int state; int id; struct camif_dev* camif; } ;
struct camif_dev {int lock; int dev; } ;


 int ERESTARTSYS ;
 int current ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put (int ) ;
 int pr_debug (char*,int ,int ,int ,int ) ;
 int sensor_set_power (struct camif_dev*,int) ;
 int task_pid_nr (int ) ;
 int v4l2_fh_open (struct file*) ;
 int v4l2_fh_release (struct file*) ;
 struct camif_vp* video_drvdata (struct file*) ;

__attribute__((used)) static int s3c_camif_open(struct file *file)
{
 struct camif_vp *vp = video_drvdata(file);
 struct camif_dev *camif = vp->camif;
 int ret;

 pr_debug("[vp%d] state: %#x,  owner: %p, pid: %d\n", vp->id,
   vp->state, vp->owner, task_pid_nr(current));

 if (mutex_lock_interruptible(&camif->lock))
  return -ERESTARTSYS;

 ret = v4l2_fh_open(file);
 if (ret < 0)
  goto unlock;

 ret = pm_runtime_get_sync(camif->dev);
 if (ret < 0)
  goto err_pm;

 ret = sensor_set_power(camif, 1);
 if (!ret)
  goto unlock;

 pm_runtime_put(camif->dev);
err_pm:
 v4l2_fh_release(file);
unlock:
 mutex_unlock(&camif->lock);
 return ret;
}
