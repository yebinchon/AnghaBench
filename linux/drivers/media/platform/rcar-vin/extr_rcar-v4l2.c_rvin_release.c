
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int entity; } ;
struct rvin_dev {int dev; int lock; TYPE_2__ vdev; TYPE_1__* info; } ;
struct file {int dummy; } ;
struct TYPE_3__ {scalar_t__ use_mc; } ;


 int _vb2_fop_release (struct file*,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_put (int ) ;
 int rvin_power_parallel (struct rvin_dev*,int) ;
 int v4l2_fh_is_singular_file (struct file*) ;
 int v4l2_pipeline_pm_use (int *,int ) ;
 struct rvin_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int rvin_release(struct file *file)
{
 struct rvin_dev *vin = video_drvdata(file);
 bool fh_singular;
 int ret;

 mutex_lock(&vin->lock);


 fh_singular = v4l2_fh_is_singular_file(file);


 ret = _vb2_fop_release(file, ((void*)0));

 if (vin->info->use_mc) {
  v4l2_pipeline_pm_use(&vin->vdev.entity, 0);
 } else {
  if (fh_singular)
   rvin_power_parallel(vin, 0);
 }

 mutex_unlock(&vin->lock);

 pm_runtime_put(vin->dev);

 return ret;
}
