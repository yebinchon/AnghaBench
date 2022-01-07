
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_buffer {int vb2_queue; } ;
struct mcam_vb_buffer {int queue; } ;
struct mcam_camera {scalar_t__ state; int dev_lock; int flags; int buffers; } ;


 int CF_SG_RESTART ;
 scalar_t__ S_BUFWAIT ;
 scalar_t__ S_STREAMING ;
 int list_add (int *,int *) ;
 int list_empty (int *) ;
 int mcam_read_setup (struct mcam_camera*) ;
 int mcam_sg_restart (struct mcam_camera*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;
 struct vb2_v4l2_buffer* to_vb2_v4l2_buffer (struct vb2_buffer*) ;
 struct mcam_camera* vb2_get_drv_priv (int ) ;
 struct mcam_vb_buffer* vb_to_mvb (struct vb2_v4l2_buffer*) ;

__attribute__((used)) static void mcam_vb_buf_queue(struct vb2_buffer *vb)
{
 struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
 struct mcam_vb_buffer *mvb = vb_to_mvb(vbuf);
 struct mcam_camera *cam = vb2_get_drv_priv(vb->vb2_queue);
 unsigned long flags;
 int start;

 spin_lock_irqsave(&cam->dev_lock, flags);
 start = (cam->state == S_BUFWAIT) && !list_empty(&cam->buffers);
 list_add(&mvb->queue, &cam->buffers);
 if (cam->state == S_STREAMING && test_bit(CF_SG_RESTART, &cam->flags))
  mcam_sg_restart(cam);
 spin_unlock_irqrestore(&cam->dev_lock, flags);
 if (start)
  mcam_read_setup(cam);
}
