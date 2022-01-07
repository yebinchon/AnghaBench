
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpfe_device {int dma_queue_lock; int dma_queue; } ;
struct vpfe_cap_buffer {int list; } ;
struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_buffer {int vb2_queue; } ;


 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct vb2_v4l2_buffer* to_vb2_v4l2_buffer (struct vb2_buffer*) ;
 struct vpfe_cap_buffer* to_vpfe_buffer (struct vb2_v4l2_buffer*) ;
 struct vpfe_device* vb2_get_drv_priv (int ) ;

__attribute__((used)) static void vpfe_buffer_queue(struct vb2_buffer *vb)
{
 struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
 struct vpfe_device *vpfe = vb2_get_drv_priv(vb->vb2_queue);
 struct vpfe_cap_buffer *buf = to_vpfe_buffer(vbuf);
 unsigned long flags = 0;


 spin_lock_irqsave(&vpfe->dma_queue_lock, flags);
 list_add_tail(&buf->list, &vpfe->dma_queue);
 spin_unlock_irqrestore(&vpfe->dma_queue_lock, flags);
}
