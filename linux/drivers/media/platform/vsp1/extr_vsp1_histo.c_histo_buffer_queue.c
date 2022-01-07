
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsp1_histogram_buffer {int queue; } ;
struct vsp1_histogram {int irqlock; int irqqueue; } ;
struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_buffer {int vb2_queue; } ;


 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct vb2_v4l2_buffer* to_vb2_v4l2_buffer (struct vb2_buffer*) ;
 struct vsp1_histogram_buffer* to_vsp1_histogram_buffer (struct vb2_v4l2_buffer*) ;
 struct vsp1_histogram* vb2_get_drv_priv (int ) ;

__attribute__((used)) static void histo_buffer_queue(struct vb2_buffer *vb)
{
 struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
 struct vsp1_histogram *histo = vb2_get_drv_priv(vb->vb2_queue);
 struct vsp1_histogram_buffer *buf = to_vsp1_histogram_buffer(vbuf);
 unsigned long flags;

 spin_lock_irqsave(&histo->irqlock, flags);
 list_add_tail(&buf->queue, &histo->irqqueue);
 spin_unlock_irqrestore(&histo->irqlock, flags);
}
