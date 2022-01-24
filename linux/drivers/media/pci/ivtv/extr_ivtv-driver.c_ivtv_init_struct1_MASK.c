#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct sched_param {int sched_priority; } ;
struct TYPE_18__ {int max_frames_buffered; int track_osd; int /*<<< orphan*/  lace_threshold; int /*<<< orphan*/  lace_mode; int /*<<< orphan*/  next_dma_frame; } ;
struct TYPE_17__ {int /*<<< orphan*/  SGlist; int /*<<< orphan*/  lock; } ;
struct TYPE_14__ {int /*<<< orphan*/  sliced; } ;
struct TYPE_15__ {TYPE_5__ fmt; int /*<<< orphan*/  type; } ;
struct TYPE_16__ {TYPE_6__ in; int /*<<< orphan*/ * sliced_in; } ;
struct TYPE_13__ {int /*<<< orphan*/  capabilities; int /*<<< orphan*/  port; } ;
struct TYPE_12__ {int /*<<< orphan*/  name; } ;
struct TYPE_11__ {int max_mbox; } ;
struct TYPE_10__ {int max_mbox; } ;
struct ivtv {int cur_dma_stream; int cur_pio_stream; int speed; int osd_global_alpha_state; int osd_global_alpha; TYPE_9__ yuv_info; TYPE_8__ udma; TYPE_7__ vbi; int /*<<< orphan*/  dma_timer; int /*<<< orphan*/  dma_waitq; int /*<<< orphan*/  vsync_waitq; int /*<<< orphan*/  event_waitq; int /*<<< orphan*/  eos_waitq; TYPE_4__ cxhdl; int /*<<< orphan*/  irq_work; int /*<<< orphan*/  irq_worker_task; TYPE_3__ v4l2_dev; int /*<<< orphan*/  irq_worker; int /*<<< orphan*/  dma_reg_lock; int /*<<< orphan*/  lock; int /*<<< orphan*/  i2c_bus_lock; int /*<<< orphan*/  serialize_lock; TYPE_2__ dec_mbox; TYPE_1__ enc_mbox; int /*<<< orphan*/  pdev; int /*<<< orphan*/  base_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CX2341X_CAP_HAS_SLICED_VBI ; 
 int /*<<< orphan*/  CX2341X_PORT_MEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IVTV_DMA_SG_OSD_ENT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  SCHED_FIFO ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VBI_CAPTURE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ivtv_irq_work_handler ; 
 int /*<<< orphan*/  ivtv_unfinished_dma ; 
 int /*<<< orphan*/  ivtv_yuv_mode ; 
 int /*<<< orphan*/  ivtv_yuv_threshold ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kthread_worker_fn ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sched_param*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct ivtv *itv)
{
	struct sched_param param = { .sched_priority = 99 };

	itv->base_addr = FUNC8(itv->pdev, 0);
	itv->enc_mbox.max_mbox = 2; /* the encoder has 3 mailboxes (0-2) */
	itv->dec_mbox.max_mbox = 1; /* the decoder has 2 mailboxes (0-1) */

	FUNC7(&itv->serialize_lock);
	FUNC7(&itv->i2c_bus_lock);
	FUNC7(&itv->udma.lock);

	FUNC11(&itv->lock);
	FUNC11(&itv->dma_reg_lock);

	FUNC5(&itv->irq_worker);
	itv->irq_worker_task = FUNC6(kthread_worker_fn, &itv->irq_worker,
					   "%s", itv->v4l2_dev.name);
	if (FUNC0(itv->irq_worker_task)) {
		FUNC1("Could not create ivtv task\n");
		return -1;
	}
	/* must use the FIFO scheduler as it is realtime sensitive */
	FUNC9(itv->irq_worker_task, SCHED_FIFO, &param);

	FUNC4(&itv->irq_work, ivtv_irq_work_handler);

	/* Initial settings */
	itv->cxhdl.port = CX2341X_PORT_MEMORY;
	itv->cxhdl.capabilities = CX2341X_CAP_HAS_SLICED_VBI;
	FUNC3(&itv->eos_waitq);
	FUNC3(&itv->event_waitq);
	FUNC3(&itv->vsync_waitq);
	FUNC3(&itv->dma_waitq);
	FUNC12(&itv->dma_timer, ivtv_unfinished_dma, 0);

	itv->cur_dma_stream = -1;
	itv->cur_pio_stream = -1;

	/* Ctrls */
	itv->speed = 1000;

	/* VBI */
	itv->vbi.in.type = V4L2_BUF_TYPE_VBI_CAPTURE;
	itv->vbi.sliced_in = &itv->vbi.in.fmt.sliced;

	/* Init the sg table for osd/yuv output */
	FUNC10(itv->udma.SGlist, IVTV_DMA_SG_OSD_ENT);

	/* OSD */
	itv->osd_global_alpha_state = 1;
	itv->osd_global_alpha = 255;

	/* YUV */
	FUNC2(&itv->yuv_info.next_dma_frame, -1);
	itv->yuv_info.lace_mode = ivtv_yuv_mode;
	itv->yuv_info.lace_threshold = ivtv_yuv_threshold;
	itv->yuv_info.max_frames_buffered = 3;
	itv->yuv_info.track_osd = 1;
	return 0;
}