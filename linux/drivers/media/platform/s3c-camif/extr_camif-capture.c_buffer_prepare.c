
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_buffer {int vb2_queue; } ;
struct camif_vp {scalar_t__ payload; int vdev; int * out_fmt; } ;


 int EINVAL ;
 int v4l2_err (int *,char*,scalar_t__,scalar_t__) ;
 struct camif_vp* vb2_get_drv_priv (int ) ;
 scalar_t__ vb2_plane_size (struct vb2_buffer*,int ) ;
 int vb2_set_plane_payload (struct vb2_buffer*,int ,scalar_t__) ;

__attribute__((used)) static int buffer_prepare(struct vb2_buffer *vb)
{
 struct camif_vp *vp = vb2_get_drv_priv(vb->vb2_queue);

 if (vp->out_fmt == ((void*)0))
  return -EINVAL;

 if (vb2_plane_size(vb, 0) < vp->payload) {
  v4l2_err(&vp->vdev, "buffer too small: %lu, required: %u\n",
    vb2_plane_size(vb, 0), vp->payload);
  return -EINVAL;
 }
 vb2_set_plane_payload(vb, 0, vp->payload);

 return 0;
}
