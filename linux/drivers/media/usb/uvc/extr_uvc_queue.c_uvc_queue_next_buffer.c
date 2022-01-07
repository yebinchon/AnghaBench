
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvc_video_queue {int irqlock; } ;
struct uvc_buffer {int queue; } ;


 struct uvc_buffer* __uvc_queue_get_current_buffer (struct uvc_video_queue*) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int uvc_queue_buffer_release (struct uvc_buffer*) ;

struct uvc_buffer *uvc_queue_next_buffer(struct uvc_video_queue *queue,
  struct uvc_buffer *buf)
{
 struct uvc_buffer *nextbuf;
 unsigned long flags;

 spin_lock_irqsave(&queue->irqlock, flags);
 list_del(&buf->queue);
 nextbuf = __uvc_queue_get_current_buffer(queue);
 spin_unlock_irqrestore(&queue->irqlock, flags);

 uvc_queue_buffer_release(buf);

 return nextbuf;
}
