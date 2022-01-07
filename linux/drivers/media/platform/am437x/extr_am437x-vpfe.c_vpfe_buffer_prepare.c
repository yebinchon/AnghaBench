
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int field; int sizeimage; } ;
struct TYPE_5__ {TYPE_3__ pix; } ;
struct TYPE_4__ {TYPE_2__ fmt; } ;
struct vpfe_device {TYPE_1__ fmt; } ;
struct vb2_v4l2_buffer {int field; } ;
struct vb2_buffer {int vb2_queue; } ;


 int EINVAL ;
 struct vb2_v4l2_buffer* to_vb2_v4l2_buffer (struct vb2_buffer*) ;
 struct vpfe_device* vb2_get_drv_priv (int ) ;
 scalar_t__ vb2_get_plane_payload (struct vb2_buffer*,int ) ;
 scalar_t__ vb2_plane_size (struct vb2_buffer*,int ) ;
 int vb2_set_plane_payload (struct vb2_buffer*,int ,int ) ;

__attribute__((used)) static int vpfe_buffer_prepare(struct vb2_buffer *vb)
{
 struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
 struct vpfe_device *vpfe = vb2_get_drv_priv(vb->vb2_queue);

 vb2_set_plane_payload(vb, 0, vpfe->fmt.fmt.pix.sizeimage);

 if (vb2_get_plane_payload(vb, 0) > vb2_plane_size(vb, 0))
  return -EINVAL;

 vbuf->field = vpfe->fmt.fmt.pix.field;

 return 0;
}
