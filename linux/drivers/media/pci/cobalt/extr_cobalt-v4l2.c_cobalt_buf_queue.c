
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_queue {struct cobalt_stream* drv_priv; } ;
struct vb2_buffer {size_t index; struct vb2_queue* vb2_queue; } ;
struct sg_dma_desc_info {int dummy; } ;
struct cobalt_stream {int irqlock; int bufs; struct sg_dma_desc_info* dma_desc_info; } ;
struct cobalt_buffer {int list; } ;


 int chain_all_buffers (struct cobalt_stream*) ;
 int descriptor_list_interrupt_disable (struct sg_dma_desc_info*) ;
 int descriptor_list_loopback (struct sg_dma_desc_info*) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct cobalt_buffer* to_cobalt_buffer (struct vb2_v4l2_buffer*) ;
 struct vb2_v4l2_buffer* to_vb2_v4l2_buffer (struct vb2_buffer*) ;

__attribute__((used)) static void cobalt_buf_queue(struct vb2_buffer *vb)
{
 struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
 struct vb2_queue *q = vb->vb2_queue;
 struct cobalt_stream *s = q->drv_priv;
 struct cobalt_buffer *cb = to_cobalt_buffer(vbuf);
 struct sg_dma_desc_info *desc = &s->dma_desc_info[vb->index];
 unsigned long flags;


 descriptor_list_loopback(desc);
 descriptor_list_interrupt_disable(desc);

 spin_lock_irqsave(&s->irqlock, flags);
 list_add_tail(&cb->list, &s->bufs);
 chain_all_buffers(s);
 spin_unlock_irqrestore(&s->irqlock, flags);
}
