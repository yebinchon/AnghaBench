
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_12__ {int vb2_buf; } ;
struct xvip_dma_buffer {int queue; TYPE_5__ buf; } ;
struct TYPE_13__ {scalar_t__ type; } ;
struct TYPE_14__ {int src_sgl; int dst_sgl; int frame_size; int numf; void* src_start; int dir; void* dst_start; } ;
struct TYPE_10__ {int width; int height; scalar_t__ bytesperline; } ;
struct xvip_dma {int dma; TYPE_6__ queue; int queued_lock; int queued_bufs; TYPE_4__* xdev; TYPE_7__ xt; TYPE_3__ format; TYPE_2__* sgl; TYPE_1__* fmtinfo; } ;
struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_buffer {int vb2_queue; } ;
struct dma_async_tx_descriptor {struct xvip_dma_buffer* callback_param; int callback; } ;
typedef void* dma_addr_t ;
struct TYPE_11__ {int dev; } ;
struct TYPE_9__ {int size; scalar_t__ icg; } ;
struct TYPE_8__ {int bpp; } ;


 int DMA_CTRL_ACK ;
 int DMA_DEV_TO_MEM ;
 int DMA_MEM_TO_DEV ;
 int DMA_PREP_INTERRUPT ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int VB2_BUF_STATE_ERROR ;
 int dev_err (int ,char*) ;
 int dma_async_issue_pending (int ) ;
 struct dma_async_tx_descriptor* dmaengine_prep_interleaved_dma (int ,TYPE_7__*,int) ;
 int dmaengine_submit (struct dma_async_tx_descriptor*) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 struct vb2_v4l2_buffer* to_vb2_v4l2_buffer (struct vb2_buffer*) ;
 struct xvip_dma_buffer* to_xvip_dma_buffer (struct vb2_v4l2_buffer*) ;
 int vb2_buffer_done (int *,int ) ;
 void* vb2_dma_contig_plane_dma_addr (struct vb2_buffer*,int ) ;
 struct xvip_dma* vb2_get_drv_priv (int ) ;
 scalar_t__ vb2_is_streaming (TYPE_6__*) ;
 int xvip_dma_complete ;

__attribute__((used)) static void xvip_dma_buffer_queue(struct vb2_buffer *vb)
{
 struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
 struct xvip_dma *dma = vb2_get_drv_priv(vb->vb2_queue);
 struct xvip_dma_buffer *buf = to_xvip_dma_buffer(vbuf);
 struct dma_async_tx_descriptor *desc;
 dma_addr_t addr = vb2_dma_contig_plane_dma_addr(vb, 0);
 u32 flags;

 if (dma->queue.type == V4L2_BUF_TYPE_VIDEO_CAPTURE) {
  flags = DMA_PREP_INTERRUPT | DMA_CTRL_ACK;
  dma->xt.dir = DMA_DEV_TO_MEM;
  dma->xt.src_sgl = 0;
  dma->xt.dst_sgl = 1;
  dma->xt.dst_start = addr;
 } else {
  flags = DMA_PREP_INTERRUPT | DMA_CTRL_ACK;
  dma->xt.dir = DMA_MEM_TO_DEV;
  dma->xt.src_sgl = 1;
  dma->xt.dst_sgl = 0;
  dma->xt.src_start = addr;
 }

 dma->xt.frame_size = 1;
 dma->sgl[0].size = dma->format.width * dma->fmtinfo->bpp;
 dma->sgl[0].icg = dma->format.bytesperline - dma->sgl[0].size;
 dma->xt.numf = dma->format.height;

 desc = dmaengine_prep_interleaved_dma(dma->dma, &dma->xt, flags);
 if (!desc) {
  dev_err(dma->xdev->dev, "Failed to prepare DMA transfer\n");
  vb2_buffer_done(&buf->buf.vb2_buf, VB2_BUF_STATE_ERROR);
  return;
 }
 desc->callback = xvip_dma_complete;
 desc->callback_param = buf;

 spin_lock_irq(&dma->queued_lock);
 list_add_tail(&buf->queue, &dma->queued_bufs);
 spin_unlock_irq(&dma->queued_lock);

 dmaengine_submit(desc);

 if (vb2_is_streaming(&dma->queue))
  dma_async_issue_pending(dma->dma);
}
