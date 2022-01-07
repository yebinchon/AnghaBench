
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int entity; } ;
struct sun4i_csi {int lock; int dev; TYPE_1__ vdev; } ;
struct file {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_put (int ) ;
 int v4l2_fh_release (struct file*) ;
 int v4l2_pipeline_pm_use (int *,int ) ;
 struct sun4i_csi* video_drvdata (struct file*) ;

__attribute__((used)) static int sun4i_csi_release(struct file *file)
{
 struct sun4i_csi *csi = video_drvdata(file);

 mutex_lock(&csi->lock);

 v4l2_fh_release(file);
 v4l2_pipeline_pm_use(&csi->vdev.entity, 0);
 pm_runtime_put(csi->dev);

 mutex_unlock(&csi->lock);

 return 0;
}
