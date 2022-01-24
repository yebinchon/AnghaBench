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
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct solo_vb2_buf {int dummy; } ;
struct TYPE_14__ {int error; } ;
struct TYPE_13__ {int io_modes; int gfp_flags; int buf_struct_size; int /*<<< orphan*/ * dev; int /*<<< orphan*/ * lock; int /*<<< orphan*/  timestamp_flags; struct solo_dev* drv_priv; int /*<<< orphan*/ * mem_ops; int /*<<< orphan*/ * ops; int /*<<< orphan*/  type; } ;
struct solo_dev {int nr_chans; TYPE_2__* vfd; TYPE_7__ disp_hdl; int /*<<< orphan*/  nr_ext; TYPE_1__* pdev; TYPE_6__ vidq; int /*<<< orphan*/  lock; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  vidq_active; int /*<<< orphan*/  slock; int /*<<< orphan*/  disp_thread_wait; } ;
struct TYPE_12__ {int num; int /*<<< orphan*/  name; TYPE_7__* ctrl_handler; int /*<<< orphan*/ * lock; TYPE_6__* queue; int /*<<< orphan*/ * v4l2_dev; } ;
struct TYPE_11__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* SOLO6X10_NAME ; 
 int /*<<< orphan*/  V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int VB2_MMAP ; 
 int VB2_READ ; 
 int VB2_USERPTR ; 
 int /*<<< orphan*/  VFL_TYPE_GRABBER ; 
 int __GFP_DMA32 ; 
 int __GFP_KSWAPD_RECLAIM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct solo_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,char*,char*,int) ; 
 int /*<<< orphan*/  solo_motion_trace_ctrl ; 
 int /*<<< orphan*/  FUNC6 (struct solo_dev*,int) ; 
 TYPE_2__ solo_v4l2_template ; 
 int /*<<< orphan*/  solo_video_qops ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_7__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_7__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vb2_dma_contig_memops ; 
 int FUNC11 (TYPE_6__*) ; 
 TYPE_2__* FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int FUNC14 (TYPE_2__*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,struct solo_dev*) ; 

int FUNC16(struct solo_dev *solo_dev, unsigned nr)
{
	int ret;
	int i;

	FUNC3(&solo_dev->disp_thread_wait);
	FUNC7(&solo_dev->slock);
	FUNC4(&solo_dev->lock);
	FUNC0(&solo_dev->vidq_active);

	solo_dev->vfd = FUNC12();
	if (!solo_dev->vfd)
		return -ENOMEM;

	*solo_dev->vfd = solo_v4l2_template;
	solo_dev->vfd->v4l2_dev = &solo_dev->v4l2_dev;
	solo_dev->vfd->queue = &solo_dev->vidq;
	solo_dev->vfd->lock = &solo_dev->lock;
	FUNC9(&solo_dev->disp_hdl, 1);
	FUNC10(&solo_dev->disp_hdl, &solo_motion_trace_ctrl, NULL);
	if (solo_dev->disp_hdl.error) {
		ret = solo_dev->disp_hdl.error;
		goto fail;
	}
	solo_dev->vfd->ctrl_handler = &solo_dev->disp_hdl;

	FUNC15(solo_dev->vfd, solo_dev);

	solo_dev->vidq.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
	solo_dev->vidq.io_modes = VB2_MMAP | VB2_USERPTR | VB2_READ;
	solo_dev->vidq.ops = &solo_video_qops;
	solo_dev->vidq.mem_ops = &vb2_dma_contig_memops;
	solo_dev->vidq.drv_priv = solo_dev;
	solo_dev->vidq.timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
	solo_dev->vidq.gfp_flags = __GFP_DMA32 | __GFP_KSWAPD_RECLAIM;
	solo_dev->vidq.buf_struct_size = sizeof(struct solo_vb2_buf);
	solo_dev->vidq.lock = &solo_dev->lock;
	solo_dev->vidq.dev = &solo_dev->pdev->dev;
	ret = FUNC11(&solo_dev->vidq);
	if (ret < 0)
		goto fail;

	/* Cycle all the channels and clear */
	for (i = 0; i < solo_dev->nr_chans; i++) {
		FUNC6(solo_dev, i);
		while (FUNC2(solo_dev))
			/* Do nothing */;
	}

	/* Set the default display channel */
	FUNC6(solo_dev, 0);
	while (FUNC2(solo_dev))
		/* Do nothing */;

	ret = FUNC14(solo_dev->vfd, VFL_TYPE_GRABBER, nr);
	if (ret < 0)
		goto fail;

	FUNC5(solo_dev->vfd->name, sizeof(solo_dev->vfd->name), "%s (%i)",
		 SOLO6X10_NAME, solo_dev->vfd->num);

	FUNC1(&solo_dev->pdev->dev, "Display as /dev/video%d with %d inputs (%d extended)\n",
		 solo_dev->vfd->num,
		 solo_dev->nr_chans, solo_dev->nr_ext);

	return 0;

fail:
	FUNC13(solo_dev->vfd);
	FUNC8(&solo_dev->disp_hdl);
	solo_dev->vfd = NULL;
	return ret;
}