
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_video {int error; int irqlock; } ;


 int VB2_BUF_STATE_ERROR ;
 int omap3isp_video_return_buffers (struct isp_video*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void omap3isp_video_cancel_stream(struct isp_video *video)
{
 unsigned long flags;

 spin_lock_irqsave(&video->irqlock, flags);
 omap3isp_video_return_buffers(video, VB2_BUF_STATE_ERROR);
 video->error = 1;
 spin_unlock_irqrestore(&video->irqlock, flags);
}
