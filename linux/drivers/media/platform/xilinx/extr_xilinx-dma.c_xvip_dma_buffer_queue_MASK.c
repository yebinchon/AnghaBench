#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_12__ {int /*<<< orphan*/  vb2_buf; } ;
struct xvip_dma_buffer {int /*<<< orphan*/  queue; TYPE_5__ buf; } ;
struct TYPE_13__ {scalar_t__ type; } ;
struct TYPE_14__ {int src_sgl; int dst_sgl; int frame_size; int /*<<< orphan*/  numf; void* src_start; int /*<<< orphan*/  dir; void* dst_start; } ;
struct TYPE_10__ {int width; int /*<<< orphan*/  height; scalar_t__ bytesperline; } ;
struct xvip_dma {int /*<<< orphan*/  dma; TYPE_6__ queue; int /*<<< orphan*/  queued_lock; int /*<<< orphan*/  queued_bufs; TYPE_4__* xdev; TYPE_7__ xt; TYPE_3__ format; TYPE_2__* sgl; TYPE_1__* fmtinfo; } ;
struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_buffer {int /*<<< orphan*/  vb2_queue; } ;
struct dma_async_tx_descriptor {struct xvip_dma_buffer* callback_param; int /*<<< orphan*/  callback; } ;
typedef  void* dma_addr_t ;
struct TYPE_11__ {int /*<<< orphan*/  dev; } ;
struct TYPE_9__ {int size; scalar_t__ icg; } ;
struct TYPE_8__ {int bpp; } ;

/* Variables and functions */
 int DMA_CTRL_ACK ; 
 int /*<<< orphan*/  DMA_DEV_TO_MEM ; 
 int /*<<< orphan*/  DMA_MEM_TO_DEV ; 
 int DMA_PREP_INTERRUPT ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  VB2_BUF_STATE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct dma_async_tx_descriptor* FUNC2 (int /*<<< orphan*/ ,TYPE_7__*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct vb2_v4l2_buffer* FUNC7 (struct vb2_buffer*) ; 
 struct xvip_dma_buffer* FUNC8 (struct vb2_v4l2_buffer*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC10 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 
 struct xvip_dma* FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (TYPE_6__*) ; 
 int /*<<< orphan*/  xvip_dma_complete ; 

__attribute__((used)) static void FUNC13(struct vb2_buffer *vb)
{
	struct vb2_v4l2_buffer *vbuf = FUNC7(vb);
	struct xvip_dma *dma = FUNC11(vb->vb2_queue);
	struct xvip_dma_buffer *buf = FUNC8(vbuf);
	struct dma_async_tx_descriptor *desc;
	dma_addr_t addr = FUNC10(vb, 0);
	u32 flags;

	if (dma->queue.type == V4L2_BUF_TYPE_VIDEO_CAPTURE) {
		flags = DMA_PREP_INTERRUPT | DMA_CTRL_ACK;
		dma->xt.dir = DMA_DEV_TO_MEM;
		dma->xt.src_sgl = false;
		dma->xt.dst_sgl = true;
		dma->xt.dst_start = addr;
	} else {
		flags = DMA_PREP_INTERRUPT | DMA_CTRL_ACK;
		dma->xt.dir = DMA_MEM_TO_DEV;
		dma->xt.src_sgl = true;
		dma->xt.dst_sgl = false;
		dma->xt.src_start = addr;
	}

	dma->xt.frame_size = 1;
	dma->sgl[0].size = dma->format.width * dma->fmtinfo->bpp;
	dma->sgl[0].icg = dma->format.bytesperline - dma->sgl[0].size;
	dma->xt.numf = dma->format.height;

	desc = FUNC2(dma->dma, &dma->xt, flags);
	if (!desc) {
		FUNC0(dma->xdev->dev, "Failed to prepare DMA transfer\n");
		FUNC9(&buf->buf.vb2_buf, VB2_BUF_STATE_ERROR);
		return;
	}
	desc->callback = xvip_dma_complete;
	desc->callback_param = buf;

	FUNC5(&dma->queued_lock);
	FUNC4(&buf->queue, &dma->queued_bufs);
	FUNC6(&dma->queued_lock);

	FUNC3(desc);

	if (FUNC12(&dma->queue))
		FUNC1(dma->dma);
}