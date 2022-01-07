
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvc_video_queue {int irqlock; int flags; } ;


 int UVC_BUF_STATE_ERROR ;
 int UVC_QUEUE_DISCONNECTED ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int uvc_queue_return_buffers (struct uvc_video_queue*,int ) ;

void uvc_queue_cancel(struct uvc_video_queue *queue, int disconnect)
{
 unsigned long flags;

 spin_lock_irqsave(&queue->irqlock, flags);
 uvc_queue_return_buffers(queue, UVC_BUF_STATE_ERROR);






 if (disconnect)
  queue->flags |= UVC_QUEUE_DISCONNECTED;
 spin_unlock_irqrestore(&queue->irqlock, flags);
}
