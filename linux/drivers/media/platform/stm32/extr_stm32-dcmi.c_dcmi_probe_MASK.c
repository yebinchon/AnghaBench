#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_37__   TYPE_9__ ;
typedef  struct TYPE_36__   TYPE_4__ ;
typedef  struct TYPE_35__   TYPE_3__ ;
typedef  struct TYPE_34__   TYPE_2__ ;
typedef  struct TYPE_33__   TYPE_1__ ;
typedef  struct TYPE_32__   TYPE_17__ ;
typedef  struct TYPE_31__   TYPE_15__ ;
typedef  struct TYPE_30__   TYPE_14__ ;
typedef  struct TYPE_29__   TYPE_10__ ;

/* Type definitions */
struct vb2_queue {int io_modes; int buf_struct_size; int min_buffers_needed; TYPE_10__* dev; int /*<<< orphan*/  timestamp_flags; int /*<<< orphan*/ * mem_ops; int /*<<< orphan*/ * ops; struct stm32_dcmi* drv_priv; int /*<<< orphan*/ * lock; int /*<<< orphan*/  type; } ;
struct TYPE_35__ {int /*<<< orphan*/  data_shift; int /*<<< orphan*/  bus_width; int /*<<< orphan*/  flags; } ;
struct TYPE_34__ {TYPE_3__ parallel; } ;
struct v4l2_fwnode_endpoint {scalar_t__ bus_type; TYPE_2__ bus; } ;
struct TYPE_32__ {TYPE_10__* dev; int /*<<< orphan*/  bus_info; int /*<<< orphan*/  model; } ;
struct TYPE_37__ {TYPE_17__* mdev; } ;
struct TYPE_31__ {int /*<<< orphan*/  flags; } ;
struct TYPE_33__ {int /*<<< orphan*/  data_shift; int /*<<< orphan*/  bus_width; int /*<<< orphan*/  flags; } ;
struct stm32_dcmi {struct dma_chan* dma_chan; TYPE_17__ mdev; TYPE_9__ v4l2_dev; TYPE_4__* vdev; int /*<<< orphan*/  notifier; struct clk* rstc; int /*<<< orphan*/  lock; TYPE_10__* dev; TYPE_15__ vid_cap_pad; struct vb2_queue queue; int /*<<< orphan*/  state; struct clk* mclk; int /*<<< orphan*/  buffers; int /*<<< orphan*/  complete; int /*<<< orphan*/  dma_lock; int /*<<< orphan*/  irqlock; struct clk* regs; int /*<<< orphan*/  res; TYPE_1__ bus; } ;
struct TYPE_29__ {struct device_node* of_node; } ;
struct platform_device {TYPE_10__ dev; } ;
struct of_device_id {int dummy; } ;
struct dma_chan {int dummy; } ;
struct device_node {int dummy; } ;
struct dcmi_buf {int dummy; } ;
struct clk {int dummy; } ;
struct TYPE_30__ {int /*<<< orphan*/  flags; } ;
struct TYPE_36__ {int device_caps; TYPE_14__ entity; int /*<<< orphan*/ * lock; int /*<<< orphan*/ * ioctl_ops; int /*<<< orphan*/  (* release ) (TYPE_4__*) ;int /*<<< orphan*/  name; struct vb2_queue* queue; TYPE_9__* v4l2_dev; int /*<<< orphan*/ * fops; } ;

/* Variables and functions */
 char* DRV_NAME ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC1 (struct clk*) ; 
 char* KBUILD_MODNAME ; 
 int /*<<< orphan*/  MEDIA_ENT_FL_DEFAULT ; 
 int /*<<< orphan*/  MEDIA_PAD_FL_SINK ; 
 int FUNC2 (struct clk*) ; 
 int /*<<< orphan*/  STOPPED ; 
 int /*<<< orphan*/  V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int V4L2_CAP_READWRITE ; 
 int V4L2_CAP_STREAMING ; 
 int V4L2_CAP_VIDEO_CAPTURE ; 
 scalar_t__ V4L2_MBUS_CSI2_DPHY ; 
 int VB2_DMABUF ; 
 int VB2_MMAP ; 
 int VB2_READ ; 
 int /*<<< orphan*/  VFL_TYPE_GRABBER ; 
 int /*<<< orphan*/  dcmi_fops ; 
 int FUNC3 (struct stm32_dcmi*) ; 
 int /*<<< orphan*/  dcmi_ioctl_ops ; 
 int /*<<< orphan*/  dcmi_irq_callback ; 
 int /*<<< orphan*/  dcmi_irq_thread ; 
 int /*<<< orphan*/  dcmi_video_qops ; 
 int /*<<< orphan*/  FUNC4 (TYPE_10__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_10__*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_10__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_10__*) ; 
 struct clk* FUNC8 (TYPE_10__*,char*) ; 
 struct clk* FUNC9 (TYPE_10__*,int /*<<< orphan*/ ) ; 
 struct stm32_dcmi* FUNC10 (TYPE_10__*,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_10__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct stm32_dcmi*) ; 
 struct clk* FUNC12 (TYPE_10__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct dma_chan*) ; 
 struct dma_chan* FUNC14 (TYPE_10__*,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_17__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_17__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_14__*) ; 
 int FUNC19 (TYPE_14__*,int,TYPE_15__*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct device_node*) ; 
 struct device_node* FUNC22 (struct device_node*,int /*<<< orphan*/ *) ; 
 struct of_device_id* FUNC23 (int /*<<< orphan*/ ,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct device_node*) ; 
 int FUNC26 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (struct platform_device*,struct stm32_dcmi*) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_10__*) ; 
 int FUNC30 (struct clk*) ; 
 int FUNC31 (struct clk*) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stm32_dcmi_of_match ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC35 (int,int) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ *) ; 
 int FUNC37 (TYPE_10__*,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC38 (TYPE_9__*) ; 
 int FUNC39 (int /*<<< orphan*/ ,struct v4l2_fwnode_endpoint*) ; 
 int /*<<< orphan*/  vb2_dma_contig_memops ; 
 int FUNC40 (struct vb2_queue*) ; 
 TYPE_4__* FUNC41 () ; 
 int /*<<< orphan*/  FUNC42 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC43 (TYPE_4__*) ; 
 int FUNC44 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC45 (TYPE_4__*,struct stm32_dcmi*) ; 

__attribute__((used)) static int FUNC46(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	const struct of_device_id *match = NULL;
	struct v4l2_fwnode_endpoint ep = { .bus_type = 0 };
	struct stm32_dcmi *dcmi;
	struct vb2_queue *q;
	struct dma_chan *chan;
	struct clk *mclk;
	int irq;
	int ret = 0;

	match = FUNC23(FUNC24(stm32_dcmi_of_match), &pdev->dev);
	if (!match) {
		FUNC5(&pdev->dev, "Could not find a match in devicetree\n");
		return -ENODEV;
	}

	dcmi = FUNC10(&pdev->dev, sizeof(struct stm32_dcmi), GFP_KERNEL);
	if (!dcmi)
		return -ENOMEM;

	dcmi->rstc = FUNC12(&pdev->dev, NULL);
	if (FUNC1(dcmi->rstc)) {
		FUNC5(&pdev->dev, "Could not get reset control\n");
		return FUNC2(dcmi->rstc);
	}

	/* Get bus characteristics from devicetree */
	np = FUNC22(np, NULL);
	if (!np) {
		FUNC5(&pdev->dev, "Could not find the endpoint\n");
		return -ENODEV;
	}

	ret = FUNC39(FUNC21(np), &ep);
	FUNC25(np);
	if (ret) {
		FUNC5(&pdev->dev, "Could not parse the endpoint\n");
		return ret;
	}

	if (ep.bus_type == V4L2_MBUS_CSI2_DPHY) {
		FUNC5(&pdev->dev, "CSI bus not supported\n");
		return -ENODEV;
	}
	dcmi->bus.flags = ep.bus.parallel.flags;
	dcmi->bus.bus_width = ep.bus.parallel.bus_width;
	dcmi->bus.data_shift = ep.bus.parallel.data_shift;

	irq = FUNC26(pdev, 0);
	if (irq <= 0)
		return irq ? irq : -ENXIO;

	dcmi->res = FUNC27(pdev, IORESOURCE_MEM, 0);
	if (!dcmi->res) {
		FUNC5(&pdev->dev, "Could not get resource\n");
		return -ENODEV;
	}

	dcmi->regs = FUNC9(&pdev->dev, dcmi->res);
	if (FUNC1(dcmi->regs)) {
		FUNC5(&pdev->dev, "Could not map registers\n");
		return FUNC2(dcmi->regs);
	}

	ret = FUNC11(&pdev->dev, irq, dcmi_irq_callback,
					dcmi_irq_thread, IRQF_ONESHOT,
					FUNC7(&pdev->dev), dcmi);
	if (ret) {
		FUNC5(&pdev->dev, "Unable to request irq %d\n", irq);
		return ret;
	}

	mclk = FUNC8(&pdev->dev, "mclk");
	if (FUNC1(mclk)) {
		if (FUNC2(mclk) != -EPROBE_DEFER)
			FUNC5(&pdev->dev, "Unable to get mclk\n");
		return FUNC2(mclk);
	}

	chan = FUNC14(&pdev->dev, "tx");
	if (!chan) {
		FUNC6(&pdev->dev, "Unable to request DMA channel, defer probing\n");
		return -EPROBE_DEFER;
	}

	FUNC33(&dcmi->irqlock);
	FUNC20(&dcmi->lock);
	FUNC20(&dcmi->dma_lock);
	FUNC15(&dcmi->complete);
	FUNC0(&dcmi->buffers);

	dcmi->dev = &pdev->dev;
	dcmi->mclk = mclk;
	dcmi->state = STOPPED;
	dcmi->dma_chan = chan;

	q = &dcmi->queue;

	dcmi->v4l2_dev.mdev = &dcmi->mdev;

	/* Initialize media device */
	FUNC34(dcmi->mdev.model, DRV_NAME, sizeof(dcmi->mdev.model));
	FUNC32(dcmi->mdev.bus_info, sizeof(dcmi->mdev.bus_info),
		 "platform:%s", DRV_NAME);
	dcmi->mdev.dev = &pdev->dev;
	FUNC17(&dcmi->mdev);

	/* Initialize the top-level structure */
	ret = FUNC37(&pdev->dev, &dcmi->v4l2_dev);
	if (ret)
		goto err_media_device_cleanup;

	dcmi->vdev = FUNC41();
	if (!dcmi->vdev) {
		ret = -ENOMEM;
		goto err_device_unregister;
	}

	/* Video node */
	dcmi->vdev->fops = &dcmi_fops;
	dcmi->vdev->v4l2_dev = &dcmi->v4l2_dev;
	dcmi->vdev->queue = &dcmi->queue;
	FUNC34(dcmi->vdev->name, KBUILD_MODNAME, sizeof(dcmi->vdev->name));
	dcmi->vdev->release = video_device_release;
	dcmi->vdev->ioctl_ops = &dcmi_ioctl_ops;
	dcmi->vdev->lock = &dcmi->lock;
	dcmi->vdev->device_caps = V4L2_CAP_VIDEO_CAPTURE | V4L2_CAP_STREAMING |
				  V4L2_CAP_READWRITE;
	FUNC45(dcmi->vdev, dcmi);

	/* Media entity pads */
	dcmi->vid_cap_pad.flags = MEDIA_PAD_FL_SINK;
	ret = FUNC19(&dcmi->vdev->entity,
				     1, &dcmi->vid_cap_pad);
	if (ret) {
		FUNC5(dcmi->dev, "Failed to init media entity pad\n");
		goto err_device_release;
	}
	dcmi->vdev->entity.flags |= MEDIA_ENT_FL_DEFAULT;

	ret = FUNC44(dcmi->vdev, VFL_TYPE_GRABBER, -1);
	if (ret) {
		FUNC5(dcmi->dev, "Failed to register video device\n");
		goto err_media_entity_cleanup;
	}

	FUNC4(dcmi->dev, "Device registered as %s\n",
		FUNC42(dcmi->vdev));

	/* Buffer queue */
	q->type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
	q->io_modes = VB2_MMAP | VB2_READ | VB2_DMABUF;
	q->lock = &dcmi->lock;
	q->drv_priv = dcmi;
	q->buf_struct_size = sizeof(struct dcmi_buf);
	q->ops = &dcmi_video_qops;
	q->mem_ops = &vb2_dma_contig_memops;
	q->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
	q->min_buffers_needed = 2;
	q->dev = &pdev->dev;

	ret = FUNC40(q);
	if (ret < 0) {
		FUNC5(&pdev->dev, "Failed to initialize vb2 queue\n");
		goto err_media_entity_cleanup;
	}

	ret = FUNC3(dcmi);
	if (ret < 0)
		goto err_media_entity_cleanup;

	/* Reset device */
	ret = FUNC30(dcmi->rstc);
	if (ret) {
		FUNC5(&pdev->dev, "Failed to assert the reset line\n");
		goto err_cleanup;
	}

	FUNC35(3000, 5000);

	ret = FUNC31(dcmi->rstc);
	if (ret) {
		FUNC5(&pdev->dev, "Failed to deassert the reset line\n");
		goto err_cleanup;
	}

	FUNC6(&pdev->dev, "Probe done\n");

	FUNC28(pdev, dcmi);

	FUNC29(&pdev->dev);

	return 0;

err_cleanup:
	FUNC36(&dcmi->notifier);
err_media_entity_cleanup:
	FUNC18(&dcmi->vdev->entity);
err_device_release:
	FUNC43(dcmi->vdev);
err_device_unregister:
	FUNC38(&dcmi->v4l2_dev);
err_media_device_cleanup:
	FUNC16(&dcmi->mdev);
	FUNC13(dcmi->dma_chan);

	return ret;
}