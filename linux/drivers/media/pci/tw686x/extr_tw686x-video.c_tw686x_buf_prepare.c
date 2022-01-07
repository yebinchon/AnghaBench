
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_buffer {int vb2_queue; } ;
struct tw686x_video_channel {int width; int height; TYPE_1__* format; } ;
struct TYPE_2__ {int depth; } ;


 int EINVAL ;
 struct tw686x_video_channel* vb2_get_drv_priv (int ) ;
 unsigned int vb2_plane_size (struct vb2_buffer*,int ) ;
 int vb2_set_plane_payload (struct vb2_buffer*,int ,unsigned int) ;

__attribute__((used)) static int tw686x_buf_prepare(struct vb2_buffer *vb)
{
 struct tw686x_video_channel *vc = vb2_get_drv_priv(vb->vb2_queue);
 unsigned int size =
  (vc->width * vc->height * vc->format->depth) >> 3;

 if (vb2_plane_size(vb, 0) < size)
  return -EINVAL;
 vb2_set_plane_payload(vb, 0, size);
 return 0;
}
