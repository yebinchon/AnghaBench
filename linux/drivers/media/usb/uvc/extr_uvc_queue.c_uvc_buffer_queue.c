
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_buffer {int vb2_queue; } ;
struct uvc_video_queue {int flags; int irqlock; int irqqueue; } ;
struct uvc_buffer {int state; int queue; int ref; } ;


 int UVC_BUF_STATE_ERROR ;
 int UVC_QUEUE_DISCONNECTED ;
 int VB2_BUF_STATE_ERROR ;
 int kref_init (int *) ;
 scalar_t__ likely (int) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct vb2_v4l2_buffer* to_vb2_v4l2_buffer (struct vb2_buffer*) ;
 struct uvc_buffer* uvc_vbuf_to_buffer (struct vb2_v4l2_buffer*) ;
 int vb2_buffer_done (struct vb2_buffer*,int ) ;
 struct uvc_video_queue* vb2_get_drv_priv (int ) ;

__attribute__((used)) static void uvc_buffer_queue(struct vb2_buffer *vb)
{
 struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
 struct uvc_video_queue *queue = vb2_get_drv_priv(vb->vb2_queue);
 struct uvc_buffer *buf = uvc_vbuf_to_buffer(vbuf);
 unsigned long flags;

 spin_lock_irqsave(&queue->irqlock, flags);
 if (likely(!(queue->flags & UVC_QUEUE_DISCONNECTED))) {
  kref_init(&buf->ref);
  list_add_tail(&buf->queue, &queue->irqqueue);
 } else {



  buf->state = UVC_BUF_STATE_ERROR;
  vb2_buffer_done(vb, VB2_BUF_STATE_ERROR);
 }

 spin_unlock_irqrestore(&queue->irqlock, flags);
}
