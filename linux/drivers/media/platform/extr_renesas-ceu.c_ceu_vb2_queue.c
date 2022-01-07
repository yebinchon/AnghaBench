
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_buffer {int vb2_queue; } ;
struct ceu_device {int lock; int capture; } ;
struct ceu_buffer {int queue; } ;


 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct vb2_v4l2_buffer* to_vb2_v4l2_buffer (struct vb2_buffer*) ;
 struct ceu_device* vb2_get_drv_priv (int ) ;
 struct ceu_buffer* vb2_to_ceu (struct vb2_v4l2_buffer*) ;

__attribute__((used)) static void ceu_vb2_queue(struct vb2_buffer *vb)
{
 struct ceu_device *ceudev = vb2_get_drv_priv(vb->vb2_queue);
 struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
 struct ceu_buffer *buf = vb2_to_ceu(vbuf);
 unsigned long irqflags;

 spin_lock_irqsave(&ceudev->lock, irqflags);
 list_add_tail(&buf->queue, &ceudev->capture);
 spin_unlock_irqrestore(&ceudev->lock, irqflags);
}
