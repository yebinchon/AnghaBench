
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_queue {int dummy; } ;
struct isp_video_fh {struct isp_video* video; } ;
struct TYPE_2__ {int entity; } ;
struct isp_video {int irqlock; int dmaqueue_flags; int dmaqueue; TYPE_1__ video; } ;
struct isp_pipeline {scalar_t__ input; } ;


 int ISP_PIPELINE_STREAM_CONTINUOUS ;
 int ISP_VIDEO_DMAQUEUE_UNDERRUN ;
 int VB2_BUF_STATE_QUEUED ;
 scalar_t__ list_empty (int *) ;
 int omap3isp_pipeline_set_stream (struct isp_pipeline*,int ) ;
 int omap3isp_video_return_buffers (struct isp_video*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct isp_pipeline* to_isp_pipeline (int *) ;
 struct isp_video_fh* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static int isp_video_start_streaming(struct vb2_queue *queue,
         unsigned int count)
{
 struct isp_video_fh *vfh = vb2_get_drv_priv(queue);
 struct isp_video *video = vfh->video;
 struct isp_pipeline *pipe = to_isp_pipeline(&video->video.entity);
 unsigned long flags;
 int ret;





 if (pipe->input)
  return 0;

 ret = omap3isp_pipeline_set_stream(pipe,
        ISP_PIPELINE_STREAM_CONTINUOUS);
 if (ret < 0) {
  spin_lock_irqsave(&video->irqlock, flags);
  omap3isp_video_return_buffers(video, VB2_BUF_STATE_QUEUED);
  spin_unlock_irqrestore(&video->irqlock, flags);
  return ret;
 }

 spin_lock_irqsave(&video->irqlock, flags);
 if (list_empty(&video->dmaqueue))
  video->dmaqueue_flags |= ISP_VIDEO_DMAQUEUE_UNDERRUN;
 spin_unlock_irqrestore(&video->irqlock, flags);

 return 0;
}
