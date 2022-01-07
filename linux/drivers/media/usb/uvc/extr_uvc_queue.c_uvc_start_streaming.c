
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int dummy; } ;
struct uvc_video_queue {int irqlock; scalar_t__ buf_used; } ;
struct uvc_streaming {int dummy; } ;


 int UVC_BUF_STATE_QUEUED ;
 int lockdep_assert_irqs_enabled () ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int uvc_queue_return_buffers (struct uvc_video_queue*,int ) ;
 struct uvc_streaming* uvc_queue_to_stream (struct uvc_video_queue*) ;
 int uvc_video_start_streaming (struct uvc_streaming*) ;
 struct uvc_video_queue* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static int uvc_start_streaming(struct vb2_queue *vq, unsigned int count)
{
 struct uvc_video_queue *queue = vb2_get_drv_priv(vq);
 struct uvc_streaming *stream = uvc_queue_to_stream(queue);
 int ret;

 lockdep_assert_irqs_enabled();

 queue->buf_used = 0;

 ret = uvc_video_start_streaming(stream);
 if (ret == 0)
  return 0;

 spin_lock_irq(&queue->irqlock);
 uvc_queue_return_buffers(queue, UVC_BUF_STATE_QUEUED);
 spin_unlock_irq(&queue->irqlock);

 return ret;
}
