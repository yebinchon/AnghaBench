
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int use_count; } ;
struct TYPE_7__ {TYPE_3__ entity; } ;
struct TYPE_10__ {TYPE_1__ vdev; } ;
struct fimc_vid_cap {int streaming; TYPE_4__ ve; } ;
struct fimc_dev {int lock; TYPE_2__* pdev; int state; struct fimc_vid_cap vid_cap; } ;
struct file {int dummy; } ;
struct TYPE_8__ {int dev; } ;


 int ST_CAPT_BUSY ;
 int ST_CAPT_SUSPENDED ;
 int _vb2_fop_release (struct file*,int *) ;
 int clear_bit (int ,int *) ;
 int current ;
 int dbg (char*,int ,int ) ;
 int fimc_md_graph_lock (TYPE_4__*) ;
 int fimc_md_graph_unlock (TYPE_4__*) ;
 int fimc_pipeline_call (TYPE_4__*,int) ;
 int media_pipeline_stop (TYPE_3__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_put_sync (int *) ;
 int task_pid_nr (int ) ;
 int v4l2_fh_is_singular_file (struct file*) ;
 struct fimc_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int fimc_capture_release(struct file *file)
{
 struct fimc_dev *fimc = video_drvdata(file);
 struct fimc_vid_cap *vc = &fimc->vid_cap;
 bool close = v4l2_fh_is_singular_file(file);
 int ret;

 dbg("pid: %d, state: 0x%lx", task_pid_nr(current), fimc->state);

 mutex_lock(&fimc->lock);

 if (close && vc->streaming) {
  media_pipeline_stop(&vc->ve.vdev.entity);
  vc->streaming = 0;
 }

 ret = _vb2_fop_release(file, ((void*)0));

 if (close) {
  clear_bit(ST_CAPT_BUSY, &fimc->state);
  fimc_pipeline_call(&vc->ve, close);
  clear_bit(ST_CAPT_SUSPENDED, &fimc->state);

  fimc_md_graph_lock(&vc->ve);
  vc->ve.vdev.entity.use_count--;
  fimc_md_graph_unlock(&vc->ve);
 }

 pm_runtime_put_sync(&fimc->pdev->dev);
 mutex_unlock(&fimc->lock);

 return ret;
}
