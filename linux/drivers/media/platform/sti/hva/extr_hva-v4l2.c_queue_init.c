
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_queue {int io_modes; int * lock; int timestamp_flags; int * mem_ops; int * ops; struct hva_ctx* drv_priv; } ;
struct hva_ctx {TYPE_1__* hva_dev; } ;
struct TYPE_2__ {int lock; } ;


 int V4L2_BUF_FLAG_TIMESTAMP_COPY ;
 int VB2_DMABUF ;
 int VB2_MMAP ;
 int hva_qops ;
 int vb2_dma_contig_memops ;
 int vb2_queue_init (struct vb2_queue*) ;

__attribute__((used)) static int queue_init(struct hva_ctx *ctx, struct vb2_queue *vq)
{
 vq->io_modes = VB2_MMAP | VB2_DMABUF;
 vq->drv_priv = ctx;
 vq->ops = &hva_qops;
 vq->mem_ops = &vb2_dma_contig_memops;
 vq->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_COPY;
 vq->lock = &ctx->hva_dev->lock;

 return vb2_queue_init(vq);
}
