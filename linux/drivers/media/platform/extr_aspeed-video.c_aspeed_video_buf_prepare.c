
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_buffer {int vb2_queue; } ;
struct aspeed_video {scalar_t__ max_compressed_size; } ;


 int EINVAL ;
 struct aspeed_video* vb2_get_drv_priv (int ) ;
 scalar_t__ vb2_plane_size (struct vb2_buffer*,int ) ;

__attribute__((used)) static int aspeed_video_buf_prepare(struct vb2_buffer *vb)
{
 struct aspeed_video *video = vb2_get_drv_priv(vb->vb2_queue);

 if (vb2_plane_size(vb, 0) < video->max_compressed_size)
  return -EINVAL;

 return 0;
}
