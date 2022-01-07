
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_buffer {int vb2_queue; } ;
struct gspca_dev {int qlock; int buf_list; } ;
struct gspca_buffer {int list; } ;


 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct gspca_buffer* to_gspca_buffer (struct vb2_buffer*) ;
 struct gspca_dev* vb2_get_drv_priv (int ) ;

__attribute__((used)) static void gspca_buffer_queue(struct vb2_buffer *vb)
{
 struct gspca_dev *gspca_dev = vb2_get_drv_priv(vb->vb2_queue);
 struct gspca_buffer *buf = to_gspca_buffer(vb);
 unsigned long flags;

 spin_lock_irqsave(&gspca_dev->qlock, flags);
 list_add_tail(&buf->list, &gspca_dev->buf_list);
 spin_unlock_irqrestore(&gspca_dev->qlock, flags);
}
