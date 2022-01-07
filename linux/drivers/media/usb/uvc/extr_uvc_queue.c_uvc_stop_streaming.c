
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {scalar_t__ type; } ;
struct uvc_video_queue {int irqlock; } ;


 int UVC_BUF_STATE_ERROR ;
 scalar_t__ V4L2_BUF_TYPE_META_CAPTURE ;
 int lockdep_assert_irqs_enabled () ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int uvc_queue_return_buffers (struct uvc_video_queue*,int ) ;
 int uvc_queue_to_stream (struct uvc_video_queue*) ;
 int uvc_video_stop_streaming (int ) ;
 struct uvc_video_queue* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static void uvc_stop_streaming(struct vb2_queue *vq)
{
 struct uvc_video_queue *queue = vb2_get_drv_priv(vq);

 lockdep_assert_irqs_enabled();

 if (vq->type != V4L2_BUF_TYPE_META_CAPTURE)
  uvc_video_stop_streaming(uvc_queue_to_stream(queue));

 spin_lock_irq(&queue->irqlock);
 uvc_queue_return_buffers(queue, UVC_BUF_STATE_ERROR);
 spin_unlock_irq(&queue->irqlock);
}
