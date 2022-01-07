
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_buffer {int vb2_queue; } ;
struct sh_vou_device {int lock; int buf_list; } ;
struct sh_vou_buffer {int list; } ;


 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct sh_vou_buffer* to_sh_vou_buffer (struct vb2_v4l2_buffer*) ;
 struct vb2_v4l2_buffer* to_vb2_v4l2_buffer (struct vb2_buffer*) ;
 struct sh_vou_device* vb2_get_drv_priv (int ) ;

__attribute__((used)) static void sh_vou_buf_queue(struct vb2_buffer *vb)
{
 struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
 struct sh_vou_device *vou_dev = vb2_get_drv_priv(vb->vb2_queue);
 struct sh_vou_buffer *shbuf = to_sh_vou_buffer(vbuf);
 unsigned long flags;

 spin_lock_irqsave(&vou_dev->lock, flags);
 list_add_tail(&shbuf->list, &vou_dev->buf_list);
 spin_unlock_irqrestore(&vou_dev->lock, flags);
}
