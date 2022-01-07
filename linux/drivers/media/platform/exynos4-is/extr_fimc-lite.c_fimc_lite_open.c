
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* mdev; } ;
struct media_entity {TYPE_3__ graph_obj; int use_count; } ;
struct TYPE_6__ {struct media_entity entity; } ;
struct TYPE_10__ {TYPE_1__ vdev; } ;
struct fimc_lite {int lock; int state; TYPE_4__* pdev; TYPE_5__ ve; int out_path; } ;
struct file {int dummy; } ;
struct TYPE_9__ {int dev; } ;
struct TYPE_7__ {int graph_mutex; } ;


 int EBUSY ;
 scalar_t__ FIMC_IO_DMA ;
 int ST_FLITE_IN_USE ;
 scalar_t__ atomic_read (int *) ;
 int clear_bit (int ,int *) ;
 int fimc_lite_clear_event_counters (struct fimc_lite*) ;
 int fimc_pipeline_call (TYPE_5__*,int ,struct media_entity*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int open ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_sync (int *) ;
 int set_bit (int ,int *) ;
 int v4l2_fh_is_singular_file (struct file*) ;
 int v4l2_fh_open (struct file*) ;
 int v4l2_fh_release (struct file*) ;
 struct fimc_lite* video_drvdata (struct file*) ;

__attribute__((used)) static int fimc_lite_open(struct file *file)
{
 struct fimc_lite *fimc = video_drvdata(file);
 struct media_entity *me = &fimc->ve.vdev.entity;
 int ret;

 mutex_lock(&fimc->lock);
 if (atomic_read(&fimc->out_path) != FIMC_IO_DMA) {
  ret = -EBUSY;
  goto unlock;
 }

 set_bit(ST_FLITE_IN_USE, &fimc->state);
 ret = pm_runtime_get_sync(&fimc->pdev->dev);
 if (ret < 0)
  goto unlock;

 ret = v4l2_fh_open(file);
 if (ret < 0)
  goto err_pm;

 if (!v4l2_fh_is_singular_file(file) ||
     atomic_read(&fimc->out_path) != FIMC_IO_DMA)
  goto unlock;

 mutex_lock(&me->graph_obj.mdev->graph_mutex);

 ret = fimc_pipeline_call(&fimc->ve, open, me, 1);


 if (ret == 0)
  me->use_count++;

 mutex_unlock(&me->graph_obj.mdev->graph_mutex);

 if (!ret) {
  fimc_lite_clear_event_counters(fimc);
  goto unlock;
 }

 v4l2_fh_release(file);
err_pm:
 pm_runtime_put_sync(&fimc->pdev->dev);
 clear_bit(ST_FLITE_IN_USE, &fimc->state);
unlock:
 mutex_unlock(&fimc->lock);
 return ret;
}
