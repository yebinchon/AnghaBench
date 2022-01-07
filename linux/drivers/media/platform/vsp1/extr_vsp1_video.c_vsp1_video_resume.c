
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct vsp1_pipeline* pipe; } ;
struct vsp1_rwpf {TYPE_1__ entity; } ;
struct vsp1_pipeline {int configured; int irqlock; } ;
struct vsp1_device {struct vsp1_rwpf** wpf; TYPE_2__* info; } ;
struct TYPE_4__ {unsigned int wpf_count; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ vsp1_pipeline_ready (struct vsp1_pipeline*) ;
 int vsp1_video_pipeline_run (struct vsp1_pipeline*) ;

void vsp1_video_resume(struct vsp1_device *vsp1)
{
 unsigned long flags;
 unsigned int i;


 for (i = 0; i < vsp1->info->wpf_count; ++i) {
  struct vsp1_rwpf *wpf = vsp1->wpf[i];
  struct vsp1_pipeline *pipe;

  if (wpf == ((void*)0))
   continue;

  pipe = wpf->entity.pipe;
  if (pipe == ((void*)0))
   continue;





  pipe->configured = 0;

  spin_lock_irqsave(&pipe->irqlock, flags);
  if (vsp1_pipeline_ready(pipe))
   vsp1_video_pipeline_run(pipe);
  spin_unlock_irqrestore(&pipe->irqlock, flags);
 }
}
