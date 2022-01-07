
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsp1_histogram_buffer {int addr; } ;
struct vsp1_histogram {scalar_t__ data_size; } ;
struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_buffer {int num_planes; int vb2_queue; } ;


 int EINVAL ;
 struct vb2_v4l2_buffer* to_vb2_v4l2_buffer (struct vb2_buffer*) ;
 struct vsp1_histogram_buffer* to_vsp1_histogram_buffer (struct vb2_v4l2_buffer*) ;
 struct vsp1_histogram* vb2_get_drv_priv (int ) ;
 scalar_t__ vb2_plane_size (struct vb2_buffer*,int ) ;
 int vb2_plane_vaddr (struct vb2_buffer*,int ) ;

__attribute__((used)) static int histo_buffer_prepare(struct vb2_buffer *vb)
{
 struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
 struct vsp1_histogram *histo = vb2_get_drv_priv(vb->vb2_queue);
 struct vsp1_histogram_buffer *buf = to_vsp1_histogram_buffer(vbuf);

 if (vb->num_planes != 1)
  return -EINVAL;

 if (vb2_plane_size(vb, 0) < histo->data_size)
  return -EINVAL;

 buf->addr = vb2_plane_vaddr(vb, 0);

 return 0;
}
