
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sizeimage; } ;
struct via_camera {TYPE_1__ user_format; } ;
struct vb2_buffer {int vb2_queue; } ;


 int EINVAL ;
 int cam_dbg (struct via_camera*,char*,scalar_t__,scalar_t__) ;
 struct via_camera* vb2_get_drv_priv (int ) ;
 scalar_t__ vb2_plane_size (struct vb2_buffer*,int ) ;
 int vb2_set_plane_payload (struct vb2_buffer*,int ,scalar_t__) ;

__attribute__((used)) static int viacam_vb2_prepare(struct vb2_buffer *vb)
{
 struct via_camera *cam = vb2_get_drv_priv(vb->vb2_queue);

 if (vb2_plane_size(vb, 0) < cam->user_format.sizeimage) {
  cam_dbg(cam,
   "Plane size too small (%lu < %u)\n",
   vb2_plane_size(vb, 0),
   cam->user_format.sizeimage);
  return -EINVAL;
 }

 vb2_set_plane_payload(vb, 0, cam->user_format.sizeimage);

 return 0;
}
