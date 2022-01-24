#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct vb2_queue {int io_modes; int buf_struct_size; int min_buffers_needed; int /*<<< orphan*/ * dev; int /*<<< orphan*/  timestamp_flags; int /*<<< orphan*/ * mem_ops; int /*<<< orphan*/ * ops; struct atmel_isi* drv_priv; int /*<<< orphan*/ * lock; int /*<<< orphan*/  type; } ;
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct frame_buffer {int dummy; } ;
struct fbd {int dummy; } ;
struct TYPE_6__ {int data_width_flags; } ;
struct atmel_isi {int width_flags; int irq; int /*<<< orphan*/  v4l2_dev; TYPE_3__* vdev; scalar_t__ fb_descriptors_phys; scalar_t__ p_fb_descriptors; TYPE_1__ pdata; int /*<<< orphan*/  regs; int /*<<< orphan*/  dma_desc_head; TYPE_2__* dma_desc; int /*<<< orphan*/  lock; struct vb2_queue queue; int /*<<< orphan*/  video_buffer_list; int /*<<< orphan*/  irqlock; int /*<<< orphan*/ * dev; int /*<<< orphan*/ * active; int /*<<< orphan*/  pclk; } ;
struct TYPE_8__ {int device_caps; int /*<<< orphan*/ * lock; int /*<<< orphan*/ * ioctl_ops; int /*<<< orphan*/  (* release ) (TYPE_3__*) ;int /*<<< orphan*/  name; struct vb2_queue* queue; int /*<<< orphan*/ * v4l2_dev; int /*<<< orphan*/ * fops; } ;
struct TYPE_7__ {int /*<<< orphan*/  list; scalar_t__ fbd_phys; scalar_t__ p_fbd; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int ISI_DATAWIDTH_10 ; 
 int ISI_DATAWIDTH_8 ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int V4L2_CAP_READWRITE ; 
 int V4L2_CAP_STREAMING ; 
 int V4L2_CAP_VIDEO_CAPTURE ; 
 int VB2_DMABUF ; 
 int VB2_MMAP ; 
 int VB2_READ ; 
 int VIDEO_MAX_FRAME ; 
 int FUNC3 (struct atmel_isi*,struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct resource*) ; 
 struct atmel_isi* FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct atmel_isi*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  isi_fops ; 
 int FUNC11 (struct atmel_isi*) ; 
 int /*<<< orphan*/  isi_interrupt ; 
 int /*<<< orphan*/  isi_ioctl_ops ; 
 int /*<<< orphan*/  isi_video_qops ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC15 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*,struct atmel_isi*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vb2_dma_contig_memops ; 
 int FUNC23 (struct vb2_queue*) ; 
 TYPE_3__* FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_3__*,struct atmel_isi*) ; 

__attribute__((used)) static int FUNC27(struct platform_device *pdev)
{
	int irq;
	struct atmel_isi *isi;
	struct vb2_queue *q;
	struct resource *regs;
	int ret, i;

	isi = FUNC7(&pdev->dev, sizeof(struct atmel_isi), GFP_KERNEL);
	if (!isi)
		return -ENOMEM;

	isi->pclk = FUNC5(&pdev->dev, "isi_clk");
	if (FUNC1(isi->pclk))
		return FUNC2(isi->pclk);

	ret = FUNC3(isi, pdev);
	if (ret)
		return ret;

	isi->active = NULL;
	isi->dev = &pdev->dev;
	FUNC13(&isi->lock);
	FUNC19(&isi->irqlock);
	FUNC0(&isi->video_buffer_list);
	FUNC0(&isi->dma_desc_head);

	q = &isi->queue;

	/* Initialize the top-level structure */
	ret = FUNC21(&pdev->dev, &isi->v4l2_dev);
	if (ret)
		return ret;

	isi->vdev = FUNC24();
	if (!isi->vdev) {
		ret = -ENOMEM;
		goto err_vdev_alloc;
	}

	/* video node */
	isi->vdev->fops = &isi_fops;
	isi->vdev->v4l2_dev = &isi->v4l2_dev;
	isi->vdev->queue = &isi->queue;
	FUNC20(isi->vdev->name, KBUILD_MODNAME, sizeof(isi->vdev->name));
	isi->vdev->release = video_device_release;
	isi->vdev->ioctl_ops = &isi_ioctl_ops;
	isi->vdev->lock = &isi->lock;
	isi->vdev->device_caps = V4L2_CAP_VIDEO_CAPTURE | V4L2_CAP_STREAMING |
		V4L2_CAP_READWRITE;
	FUNC26(isi->vdev, isi);

	/* buffer queue */
	q->type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
	q->io_modes = VB2_MMAP | VB2_READ | VB2_DMABUF;
	q->lock = &isi->lock;
	q->drv_priv = isi;
	q->buf_struct_size = sizeof(struct frame_buffer);
	q->ops = &isi_video_qops;
	q->mem_ops = &vb2_dma_contig_memops;
	q->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
	q->min_buffers_needed = 2;
	q->dev = &pdev->dev;

	ret = FUNC23(q);
	if (ret < 0) {
		FUNC4(&pdev->dev, "failed to initialize VB2 queue\n");
		goto err_vb2_queue;
	}
	isi->p_fb_descriptors = FUNC9(&pdev->dev,
				sizeof(struct fbd) * VIDEO_MAX_FRAME,
				&isi->fb_descriptors_phys,
				GFP_KERNEL);
	if (!isi->p_fb_descriptors) {
		FUNC4(&pdev->dev, "Can't allocate descriptors!\n");
		ret = -ENOMEM;
		goto err_dma_alloc;
	}

	for (i = 0; i < VIDEO_MAX_FRAME; i++) {
		isi->dma_desc[i].p_fbd = isi->p_fb_descriptors + i;
		isi->dma_desc[i].fbd_phys = isi->fb_descriptors_phys +
					i * sizeof(struct fbd);
		FUNC12(&isi->dma_desc[i].list, &isi->dma_desc_head);
	}

	regs = FUNC15(pdev, IORESOURCE_MEM, 0);
	isi->regs = FUNC6(&pdev->dev, regs);
	if (FUNC1(isi->regs)) {
		ret = FUNC2(isi->regs);
		goto err_ioremap;
	}

	if (isi->pdata.data_width_flags & ISI_DATAWIDTH_8)
		isi->width_flags = 1 << 7;
	if (isi->pdata.data_width_flags & ISI_DATAWIDTH_10)
		isi->width_flags |= 1 << 9;

	irq = FUNC14(pdev, 0);
	if (irq < 0) {
		ret = irq;
		goto err_req_irq;
	}

	ret = FUNC8(&pdev->dev, irq, isi_interrupt, 0, "isi", isi);
	if (ret) {
		FUNC4(&pdev->dev, "Unable to request irq %d\n", irq);
		goto err_req_irq;
	}
	isi->irq = irq;

	ret = FUNC11(isi);
	if (ret < 0)
		goto err_req_irq;

	FUNC18(&pdev->dev, true);
	FUNC17(&pdev->dev);
	FUNC16(pdev, isi);
	return 0;

err_req_irq:
err_ioremap:
	FUNC10(&pdev->dev,
			sizeof(struct fbd) * VIDEO_MAX_FRAME,
			isi->p_fb_descriptors,
			isi->fb_descriptors_phys);
err_dma_alloc:
err_vb2_queue:
	FUNC25(isi->vdev);
err_vdev_alloc:
	FUNC22(&isi->v4l2_dev);

	return ret;
}