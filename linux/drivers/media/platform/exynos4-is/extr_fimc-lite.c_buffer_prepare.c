
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vb2_queue {struct fimc_lite* drv_priv; } ;
struct vb2_buffer {struct vb2_queue* vb2_queue; } ;
struct TYPE_4__ {int vdev; } ;
struct TYPE_6__ {TYPE_2__* fmt; } ;
struct fimc_lite {unsigned long* payload; TYPE_1__ ve; TYPE_3__ out_frame; } ;
struct TYPE_5__ {int memplanes; } ;


 int EINVAL ;
 int v4l2_err (int *,char*,unsigned long,unsigned long) ;
 unsigned long vb2_plane_size (struct vb2_buffer*,int) ;
 int vb2_set_plane_payload (struct vb2_buffer*,int,unsigned long) ;

__attribute__((used)) static int buffer_prepare(struct vb2_buffer *vb)
{
 struct vb2_queue *vq = vb->vb2_queue;
 struct fimc_lite *fimc = vq->drv_priv;
 int i;

 if (fimc->out_frame.fmt == ((void*)0))
  return -EINVAL;

 for (i = 0; i < fimc->out_frame.fmt->memplanes; i++) {
  unsigned long size = fimc->payload[i];

  if (vb2_plane_size(vb, i) < size) {
   v4l2_err(&fimc->ve.vdev,
     "User buffer too small (%ld < %ld)\n",
     vb2_plane_size(vb, i), size);
   return -EINVAL;
  }
  vb2_set_plane_payload(vb, i, size);
 }

 return 0;
}
