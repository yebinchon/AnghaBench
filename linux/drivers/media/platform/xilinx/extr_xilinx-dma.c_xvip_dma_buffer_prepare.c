
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xvip_dma_buffer {struct xvip_dma* dma; } ;
struct xvip_dma {int dummy; } ;
struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_buffer {int vb2_queue; } ;


 struct vb2_v4l2_buffer* to_vb2_v4l2_buffer (struct vb2_buffer*) ;
 struct xvip_dma_buffer* to_xvip_dma_buffer (struct vb2_v4l2_buffer*) ;
 struct xvip_dma* vb2_get_drv_priv (int ) ;

__attribute__((used)) static int xvip_dma_buffer_prepare(struct vb2_buffer *vb)
{
 struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
 struct xvip_dma *dma = vb2_get_drv_priv(vb->vb2_queue);
 struct xvip_dma_buffer *buf = to_xvip_dma_buffer(vbuf);

 buf->dma = dma;

 return 0;
}
