
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vip_buffer {int list; } ;
struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_buffer {int vb2_queue; } ;
struct sta2x11_vip {int lock; } ;


 int list_del_init (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct vb2_v4l2_buffer* to_vb2_v4l2_buffer (struct vb2_buffer*) ;
 struct vip_buffer* to_vip_buffer (struct vb2_v4l2_buffer*) ;
 struct sta2x11_vip* vb2_get_drv_priv (int ) ;
 scalar_t__ vb2_is_streaming (int ) ;
 int vip_active_buf_next (struct sta2x11_vip*) ;

__attribute__((used)) static void buffer_finish(struct vb2_buffer *vb)
{
 struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
 struct sta2x11_vip *vip = vb2_get_drv_priv(vb->vb2_queue);
 struct vip_buffer *vip_buf = to_vip_buffer(vbuf);


 spin_lock(&vip->lock);
 list_del_init(&vip_buf->list);
 spin_unlock(&vip->lock);

 if (vb2_is_streaming(vb->vb2_queue))
  vip_active_buf_next(vip);
}
