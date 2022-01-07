
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_buffer {int done_entry; int vb2_queue; } ;
struct dt3155_priv {int lock; struct vb2_v4l2_buffer* curr_buf; int dmaq; } ;


 int list_add_tail (int *,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 struct vb2_v4l2_buffer* to_vb2_v4l2_buffer (struct vb2_buffer*) ;
 struct dt3155_priv* vb2_get_drv_priv (int ) ;

__attribute__((used)) static void dt3155_buf_queue(struct vb2_buffer *vb)
{
 struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
 struct dt3155_priv *pd = vb2_get_drv_priv(vb->vb2_queue);


 spin_lock_irq(&pd->lock);
 if (pd->curr_buf)
  list_add_tail(&vb->done_entry, &pd->dmaq);
 else
  pd->curr_buf = vbuf;
 spin_unlock_irq(&pd->lock);
}
