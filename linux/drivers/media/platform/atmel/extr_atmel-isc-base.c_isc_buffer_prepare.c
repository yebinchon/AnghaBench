
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vb2_v4l2_buffer {int field; } ;
struct vb2_buffer {int vb2_queue; } ;
struct TYPE_4__ {unsigned long sizeimage; int field; } ;
struct TYPE_5__ {TYPE_1__ pix; } ;
struct TYPE_6__ {TYPE_2__ fmt; } ;
struct isc_device {TYPE_3__ fmt; int v4l2_dev; } ;


 int EINVAL ;
 struct vb2_v4l2_buffer* to_vb2_v4l2_buffer (struct vb2_buffer*) ;
 int v4l2_err (int *,char*,unsigned long,unsigned long) ;
 struct isc_device* vb2_get_drv_priv (int ) ;
 unsigned long vb2_plane_size (struct vb2_buffer*,int ) ;
 int vb2_set_plane_payload (struct vb2_buffer*,int ,unsigned long) ;

__attribute__((used)) static int isc_buffer_prepare(struct vb2_buffer *vb)
{
 struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
 struct isc_device *isc = vb2_get_drv_priv(vb->vb2_queue);
 unsigned long size = isc->fmt.fmt.pix.sizeimage;

 if (vb2_plane_size(vb, 0) < size) {
  v4l2_err(&isc->v4l2_dev, "buffer too small (%lu < %lu)\n",
    vb2_plane_size(vb, 0), size);
  return -EINVAL;
 }

 vb2_set_plane_payload(vb, 0, size);

 vbuf->field = isc->fmt.fmt.pix.field;

 return 0;
}
