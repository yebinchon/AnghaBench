
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vb2_buf; } ;
struct vip_buffer {TYPE_1__ vb; } ;
struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_buffer {int vb2_queue; } ;
struct TYPE_4__ {unsigned long sizeimage; } ;
struct sta2x11_vip {int v4l2_dev; TYPE_2__ format; } ;


 int EINVAL ;
 struct vb2_v4l2_buffer* to_vb2_v4l2_buffer (struct vb2_buffer*) ;
 struct vip_buffer* to_vip_buffer (struct vb2_v4l2_buffer*) ;
 int v4l2_err (int *,char*,unsigned long,unsigned long) ;
 struct sta2x11_vip* vb2_get_drv_priv (int ) ;
 unsigned long vb2_plane_size (struct vb2_buffer*,int ) ;
 int vb2_set_plane_payload (int *,int ,unsigned long) ;

__attribute__((used)) static int buffer_prepare(struct vb2_buffer *vb)
{
 struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
 struct sta2x11_vip *vip = vb2_get_drv_priv(vb->vb2_queue);
 struct vip_buffer *vip_buf = to_vip_buffer(vbuf);
 unsigned long size;

 size = vip->format.sizeimage;
 if (vb2_plane_size(vb, 0) < size) {
  v4l2_err(&vip->v4l2_dev, "buffer too small (%lu < %lu)\n",
    vb2_plane_size(vb, 0), size);
  return -EINVAL;
 }

 vb2_set_plane_payload(&vip_buf->vb.vb2_buf, 0, size);

 return 0;
}
