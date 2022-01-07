
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_buffer {int vb2_queue; } ;
struct sun4i_csi_buffer {int list; } ;
struct sun4i_csi {int qlock; int buf_list; } ;


 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct sun4i_csi* vb2_get_drv_priv (int ) ;
 struct sun4i_csi_buffer* vb2_to_csi_buffer (struct vb2_buffer*) ;

__attribute__((used)) static void sun4i_csi_buffer_queue(struct vb2_buffer *vb)
{
 struct sun4i_csi *csi = vb2_get_drv_priv(vb->vb2_queue);
 struct sun4i_csi_buffer *buf = vb2_to_csi_buffer(vb);
 unsigned long flags;

 spin_lock_irqsave(&csi->qlock, flags);
 list_add_tail(&buf->list, &csi->buf_list);
 spin_unlock_irqrestore(&csi->qlock, flags);
}
