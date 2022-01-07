
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int entity; } ;
struct sun6i_video {int lock; int csi; TYPE_1__ vdev; } ;
struct file {int dummy; } ;


 int ERESTARTSYS ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int sun6i_csi_set_power (int ,int) ;
 int v4l2_fh_is_singular_file (struct file*) ;
 int v4l2_fh_open (struct file*) ;
 int v4l2_fh_release (struct file*) ;
 int v4l2_pipeline_pm_use (int *,int) ;
 struct sun6i_video* video_drvdata (struct file*) ;

__attribute__((used)) static int sun6i_video_open(struct file *file)
{
 struct sun6i_video *video = video_drvdata(file);
 int ret;

 if (mutex_lock_interruptible(&video->lock))
  return -ERESTARTSYS;

 ret = v4l2_fh_open(file);
 if (ret < 0)
  goto unlock;

 ret = v4l2_pipeline_pm_use(&video->vdev.entity, 1);
 if (ret < 0)
  goto fh_release;


 if (!v4l2_fh_is_singular_file(file))
  goto unlock;

 ret = sun6i_csi_set_power(video->csi, 1);
 if (ret < 0)
  goto fh_release;

 mutex_unlock(&video->lock);
 return 0;

fh_release:
 v4l2_fh_release(file);
unlock:
 mutex_unlock(&video->lock);
 return ret;
}
