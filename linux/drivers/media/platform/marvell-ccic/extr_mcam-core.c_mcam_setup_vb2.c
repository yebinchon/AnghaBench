
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int io_modes; int buf_struct_size; int * mem_ops; int * ops; int dev; int timestamp_flags; int * lock; struct mcam_camera* drv_priv; int type; } ;
struct mcam_vb_buffer {int dummy; } ;
struct mcam_camera {int buffer_mode; int frame_complete; int dma_setup; int s_tasklet; int buffers; int dev; int s_mutex; struct vb2_queue vb_queue; } ;





 int INIT_LIST_HEAD (int *) ;
 int V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int VB2_DMABUF ;
 int VB2_MMAP ;
 int VB2_READ ;
 int VB2_USERPTR ;
 int mcam_ctlr_dma_contig ;
 int mcam_ctlr_dma_sg ;
 int mcam_ctlr_dma_vmalloc ;
 int mcam_dma_contig_done ;
 int mcam_dma_sg_done ;
 int mcam_frame_tasklet ;
 int mcam_vb2_ops ;
 int mcam_vb2_sg_ops ;
 int mcam_vmalloc_done ;
 int memset (struct vb2_queue*,int ,int) ;
 int tasklet_init (int *,int ,unsigned long) ;
 int vb2_dma_contig_memops ;
 int vb2_dma_sg_memops ;
 int vb2_queue_init (struct vb2_queue*) ;
 int vb2_vmalloc_memops ;

__attribute__((used)) static int mcam_setup_vb2(struct mcam_camera *cam)
{
 struct vb2_queue *vq = &cam->vb_queue;

 memset(vq, 0, sizeof(*vq));
 vq->type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
 vq->drv_priv = cam;
 vq->lock = &cam->s_mutex;
 vq->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
 vq->io_modes = VB2_MMAP | VB2_USERPTR | VB2_DMABUF | VB2_READ;
 vq->buf_struct_size = sizeof(struct mcam_vb_buffer);
 vq->dev = cam->dev;
 INIT_LIST_HEAD(&cam->buffers);
 switch (cam->buffer_mode) {
 case 130:






  break;
 case 129:






  break;
 case 128:
  break;
 }
 return vb2_queue_init(vq);
}
