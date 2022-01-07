
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_buffer {int vb2_queue; } ;
struct isp_video_fh {struct isp_video* video; } ;
struct TYPE_4__ {int entity; } ;
struct isp_video {scalar_t__ type; int dmaqueue_flags; TYPE_3__* ops; int irqlock; int dmaqueue; int error; TYPE_1__ video; } ;
struct isp_pipeline {int state; int lock; } ;
struct TYPE_5__ {int vb2_buf; } ;
struct isp_buffer {int irqlist; TYPE_2__ vb; } ;
typedef enum isp_pipeline_state { ____Placeholder_isp_pipeline_state } isp_pipeline_state ;
struct TYPE_6__ {int (* queue ) (struct isp_video*,struct isp_buffer*) ;} ;


 int ISP_PIPELINE_QUEUE_INPUT ;
 int ISP_PIPELINE_QUEUE_OUTPUT ;
 int ISP_PIPELINE_STREAM ;
 int ISP_PIPELINE_STREAM_SINGLESHOT ;
 int ISP_VIDEO_DMAQUEUE_QUEUED ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int VB2_BUF_STATE_ERROR ;
 unsigned int isp_pipeline_ready (struct isp_pipeline*) ;
 int list_add_tail (int *,int *) ;
 unsigned int list_empty (int *) ;
 int omap3isp_pipeline_set_stream (struct isp_pipeline*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct isp_video*,struct isp_buffer*) ;
 struct isp_buffer* to_isp_buffer (struct vb2_v4l2_buffer*) ;
 struct isp_pipeline* to_isp_pipeline (int *) ;
 struct vb2_v4l2_buffer* to_vb2_v4l2_buffer (struct vb2_buffer*) ;
 scalar_t__ unlikely (int ) ;
 int vb2_buffer_done (int *,int ) ;
 struct isp_video_fh* vb2_get_drv_priv (int ) ;

__attribute__((used)) static void isp_video_buffer_queue(struct vb2_buffer *buf)
{
 struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(buf);
 struct isp_video_fh *vfh = vb2_get_drv_priv(buf->vb2_queue);
 struct isp_buffer *buffer = to_isp_buffer(vbuf);
 struct isp_video *video = vfh->video;
 struct isp_pipeline *pipe = to_isp_pipeline(&video->video.entity);
 enum isp_pipeline_state state;
 unsigned long flags;
 unsigned int empty;
 unsigned int start;

 spin_lock_irqsave(&video->irqlock, flags);

 if (unlikely(video->error)) {
  vb2_buffer_done(&buffer->vb.vb2_buf, VB2_BUF_STATE_ERROR);
  spin_unlock_irqrestore(&video->irqlock, flags);
  return;
 }

 empty = list_empty(&video->dmaqueue);
 list_add_tail(&buffer->irqlist, &video->dmaqueue);

 spin_unlock_irqrestore(&video->irqlock, flags);

 if (empty) {
  if (video->type == V4L2_BUF_TYPE_VIDEO_CAPTURE)
   state = ISP_PIPELINE_QUEUE_OUTPUT;
  else
   state = ISP_PIPELINE_QUEUE_INPUT;

  spin_lock_irqsave(&pipe->lock, flags);
  pipe->state |= state;
  video->ops->queue(video, buffer);
  video->dmaqueue_flags |= ISP_VIDEO_DMAQUEUE_QUEUED;

  start = isp_pipeline_ready(pipe);
  if (start)
   pipe->state |= ISP_PIPELINE_STREAM;
  spin_unlock_irqrestore(&pipe->lock, flags);

  if (start)
   omap3isp_pipeline_set_stream(pipe,
      ISP_PIPELINE_STREAM_SINGLESHOT);
 }
}
