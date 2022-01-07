
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int index; struct vsp1_pipeline* pipe; } ;
struct vsp1_rwpf {TYPE_2__ entity; } ;
struct vsp1_pipeline {scalar_t__ state; int wq; int irqlock; } ;
struct vsp1_device {int dev; struct vsp1_rwpf** wpf; TYPE_1__* info; } ;
struct TYPE_3__ {unsigned int wpf_count; } ;


 scalar_t__ VSP1_PIPELINE_RUNNING ;
 scalar_t__ VSP1_PIPELINE_STOPPING ;
 int dev_warn (int ,char*,int ) ;
 int msecs_to_jiffies (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vsp1_pipeline_stopped (struct vsp1_pipeline*) ;
 int wait_event_timeout (int ,int ,int ) ;

void vsp1_video_suspend(struct vsp1_device *vsp1)
{
 unsigned long flags;
 unsigned int i;
 int ret;






 for (i = 0; i < vsp1->info->wpf_count; ++i) {
  struct vsp1_rwpf *wpf = vsp1->wpf[i];
  struct vsp1_pipeline *pipe;

  if (wpf == ((void*)0))
   continue;

  pipe = wpf->entity.pipe;
  if (pipe == ((void*)0))
   continue;

  spin_lock_irqsave(&pipe->irqlock, flags);
  if (pipe->state == VSP1_PIPELINE_RUNNING)
   pipe->state = VSP1_PIPELINE_STOPPING;
  spin_unlock_irqrestore(&pipe->irqlock, flags);
 }

 for (i = 0; i < vsp1->info->wpf_count; ++i) {
  struct vsp1_rwpf *wpf = vsp1->wpf[i];
  struct vsp1_pipeline *pipe;

  if (wpf == ((void*)0))
   continue;

  pipe = wpf->entity.pipe;
  if (pipe == ((void*)0))
   continue;

  ret = wait_event_timeout(pipe->wq, vsp1_pipeline_stopped(pipe),
      msecs_to_jiffies(500));
  if (ret == 0)
   dev_warn(vsp1->dev, "pipeline %u stop timeout\n",
     wpf->entity.index);
 }
}
