
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int use_count; } ;
struct TYPE_4__ {TYPE_3__ entity; } ;
struct exynos_video_entity {TYPE_1__ vdev; } ;
struct fimc_vid_cap {int inh_sensor_ctrls; int ctx; scalar_t__ user_subdev_api; struct exynos_video_entity ve; } ;
struct fimc_dev {int lock; TYPE_2__* pdev; int state; struct fimc_vid_cap vid_cap; } ;
struct file {int dummy; } ;
struct TYPE_5__ {int dev; } ;


 int EBUSY ;
 int ST_CAPT_BUSY ;
 int clear_bit (int ,int *) ;
 int current ;
 int dbg (char*,int ,int ) ;
 int fimc_capture_set_default_format (struct fimc_dev*) ;
 int fimc_ctrls_create (int ) ;
 int fimc_ctrls_delete (int ) ;
 scalar_t__ fimc_m2m_active (struct fimc_dev*) ;
 int fimc_md_graph_lock (struct exynos_video_entity*) ;
 int fimc_md_graph_unlock (struct exynos_video_entity*) ;
 int fimc_pipeline_call (struct exynos_video_entity*,int ,TYPE_3__*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int open ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_sync (int *) ;
 int set_bit (int ,int *) ;
 int task_pid_nr (int ) ;
 scalar_t__ v4l2_fh_is_singular_file (struct file*) ;
 int v4l2_fh_open (struct file*) ;
 int v4l2_fh_release (struct file*) ;
 struct fimc_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int fimc_capture_open(struct file *file)
{
 struct fimc_dev *fimc = video_drvdata(file);
 struct fimc_vid_cap *vc = &fimc->vid_cap;
 struct exynos_video_entity *ve = &vc->ve;
 int ret = -EBUSY;

 dbg("pid: %d, state: 0x%lx", task_pid_nr(current), fimc->state);

 mutex_lock(&fimc->lock);

 if (fimc_m2m_active(fimc))
  goto unlock;

 set_bit(ST_CAPT_BUSY, &fimc->state);
 ret = pm_runtime_get_sync(&fimc->pdev->dev);
 if (ret < 0)
  goto unlock;

 ret = v4l2_fh_open(file);
 if (ret) {
  pm_runtime_put_sync(&fimc->pdev->dev);
  goto unlock;
 }

 if (v4l2_fh_is_singular_file(file)) {
  fimc_md_graph_lock(ve);

  ret = fimc_pipeline_call(ve, open, &ve->vdev.entity, 1);

  if (ret == 0 && vc->user_subdev_api && vc->inh_sensor_ctrls) {




   fimc_ctrls_delete(vc->ctx);

   ret = fimc_ctrls_create(vc->ctx);
   if (ret == 0)
    vc->inh_sensor_ctrls = 0;
  }
  if (ret == 0)
   ve->vdev.entity.use_count++;

  fimc_md_graph_unlock(ve);

  if (ret == 0)
   ret = fimc_capture_set_default_format(fimc);

  if (ret < 0) {
   clear_bit(ST_CAPT_BUSY, &fimc->state);
   pm_runtime_put_sync(&fimc->pdev->dev);
   v4l2_fh_release(file);
  }
 }
unlock:
 mutex_unlock(&fimc->lock);
 return ret;
}
