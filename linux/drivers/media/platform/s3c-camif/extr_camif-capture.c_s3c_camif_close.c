
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {scalar_t__ private_data; } ;
struct camif_vp {scalar_t__ owner; int vb_queue; int state; int id; struct camif_dev* camif; } ;
struct camif_dev {int lock; int dev; } ;


 int camif_stop_capture (struct camif_vp*) ;
 int current ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_put (int ) ;
 int pr_debug (char*,int ,int ,scalar_t__,int ) ;
 int sensor_set_power (struct camif_dev*,int ) ;
 int task_pid_nr (int ) ;
 int v4l2_fh_release (struct file*) ;
 int vb2_queue_release (int *) ;
 struct camif_vp* video_drvdata (struct file*) ;

__attribute__((used)) static int s3c_camif_close(struct file *file)
{
 struct camif_vp *vp = video_drvdata(file);
 struct camif_dev *camif = vp->camif;
 int ret;

 pr_debug("[vp%d] state: %#x, owner: %p, pid: %d\n", vp->id,
   vp->state, vp->owner, task_pid_nr(current));

 mutex_lock(&camif->lock);

 if (vp->owner == file->private_data) {
  camif_stop_capture(vp);
  vb2_queue_release(&vp->vb_queue);
  vp->owner = ((void*)0);
 }

 sensor_set_power(camif, 0);

 pm_runtime_put(camif->dev);
 ret = v4l2_fh_release(file);

 mutex_unlock(&camif->lock);
 return ret;
}
