
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct isp_video {TYPE_1__* isp; } ;
struct isp_ccdc_device {int output; scalar_t__ state; int underrun; int lock; scalar_t__ bt656; int running; } ;
struct isp_buffer {int dma; } ;
struct TYPE_2__ {struct isp_ccdc_device isp_ccdc; } ;


 int CCDC_OUTPUT_MEMORY ;
 int ENODEV ;
 scalar_t__ ISP_PIPELINE_STREAM_CONTINUOUS ;
 int ccdc_enable (struct isp_ccdc_device*) ;
 int ccdc_set_outaddr (struct isp_ccdc_device*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ccdc_video_queue(struct isp_video *video, struct isp_buffer *buffer)
{
 struct isp_ccdc_device *ccdc = &video->isp->isp_ccdc;
 unsigned long flags;
 bool restart = 0;

 if (!(ccdc->output & CCDC_OUTPUT_MEMORY))
  return -ENODEV;

 ccdc_set_outaddr(ccdc, buffer->dma);







 spin_lock_irqsave(&ccdc->lock, flags);
 if (ccdc->state == ISP_PIPELINE_STREAM_CONTINUOUS && !ccdc->running &&
     ccdc->bt656)
  restart = 1;
 else
  ccdc->underrun = 1;
 spin_unlock_irqrestore(&ccdc->lock, flags);

 if (restart)
  ccdc_enable(ccdc);

 return 0;
}
