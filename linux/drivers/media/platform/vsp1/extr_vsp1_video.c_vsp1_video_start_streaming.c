
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vsp1_video {TYPE_2__* rwpf; } ;
struct vsp1_pipeline {scalar_t__ stream_count; scalar_t__ num_inputs; int irqlock; int lock; } ;
struct vb2_queue {int dummy; } ;
struct TYPE_3__ {struct vsp1_pipeline* pipe; } ;
struct TYPE_4__ {TYPE_1__ entity; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct vsp1_video* vb2_get_drv_priv (struct vb2_queue*) ;
 scalar_t__ vsp1_pipeline_ready (struct vsp1_pipeline*) ;
 int vsp1_video_cleanup_pipeline (struct vsp1_pipeline*) ;
 int vsp1_video_pipeline_run (struct vsp1_pipeline*) ;
 int vsp1_video_release_buffers (struct vsp1_video*) ;
 int vsp1_video_setup_pipeline (struct vsp1_pipeline*) ;

__attribute__((used)) static int vsp1_video_start_streaming(struct vb2_queue *vq, unsigned int count)
{
 struct vsp1_video *video = vb2_get_drv_priv(vq);
 struct vsp1_pipeline *pipe = video->rwpf->entity.pipe;
 bool start_pipeline = 0;
 unsigned long flags;
 int ret;

 mutex_lock(&pipe->lock);
 if (pipe->stream_count == pipe->num_inputs) {
  ret = vsp1_video_setup_pipeline(pipe);
  if (ret < 0) {
   vsp1_video_release_buffers(video);
   vsp1_video_cleanup_pipeline(pipe);
   mutex_unlock(&pipe->lock);
   return ret;
  }

  start_pipeline = 1;
 }

 pipe->stream_count++;
 mutex_unlock(&pipe->lock);
 if (!start_pipeline)
  return 0;

 spin_lock_irqsave(&pipe->irqlock, flags);
 if (vsp1_pipeline_ready(pipe))
  vsp1_video_pipeline_run(pipe);
 spin_unlock_irqrestore(&pipe->irqlock, flags);

 return 0;
}
