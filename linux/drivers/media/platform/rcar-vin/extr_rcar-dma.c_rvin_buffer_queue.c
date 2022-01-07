
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_buffer {int vb2_queue; } ;
struct rvin_dev {int qlock; int buf_list; } ;


 int list_add_tail (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int to_buf_list (struct vb2_v4l2_buffer*) ;
 struct vb2_v4l2_buffer* to_vb2_v4l2_buffer (struct vb2_buffer*) ;
 struct rvin_dev* vb2_get_drv_priv (int ) ;

__attribute__((used)) static void rvin_buffer_queue(struct vb2_buffer *vb)
{
 struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
 struct rvin_dev *vin = vb2_get_drv_priv(vb->vb2_queue);
 unsigned long flags;

 spin_lock_irqsave(&vin->qlock, flags);

 list_add_tail(to_buf_list(vbuf), &vin->buf_list);

 spin_unlock_irqrestore(&vin->qlock, flags);
}
