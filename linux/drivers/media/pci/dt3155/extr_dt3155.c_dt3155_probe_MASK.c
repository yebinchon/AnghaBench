#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  minor; TYPE_3__* queue; int /*<<< orphan*/ * lock; int /*<<< orphan*/ * v4l2_dev; } ;
struct TYPE_6__ {int io_modes; int min_buffers_needed; int /*<<< orphan*/ * dev; int /*<<< orphan*/ * lock; int /*<<< orphan*/  gfp_flags; struct dt3155_priv* drv_priv; int /*<<< orphan*/ * mem_ops; int /*<<< orphan*/ * ops; int /*<<< orphan*/  timestamp_flags; int /*<<< orphan*/  type; } ;
struct dt3155_priv {int width; int height; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  regs; struct pci_dev* pdev; TYPE_1__ vdev; int /*<<< orphan*/  config; int /*<<< orphan*/  lock; TYPE_3__ vidq; int /*<<< orphan*/  mux; int /*<<< orphan*/  dmaq; int /*<<< orphan*/  csr2; int /*<<< orphan*/  std; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACQ_MODE_EVEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DT3155_NAME ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_DMA32 ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  V4L2_STD_625_50 ; 
 int VB2_DMABUF ; 
 int VB2_MMAP ; 
 int VB2_READ ; 
 int /*<<< orphan*/  VFL_TYPE_GRABBER ; 
 int /*<<< orphan*/  VT_50HZ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct dt3155_priv* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct dt3155_priv*) ; 
 int /*<<< orphan*/  dt3155_irq_handler_even ; 
 TYPE_1__ dt3155_vdev ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct dt3155_priv*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  q_ops ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dt3155_priv*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vb2_dma_contig_memops ; 
 int FUNC20 (TYPE_3__*) ; 
 int FUNC21 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*,struct dt3155_priv*) ; 

__attribute__((used)) static int FUNC23(struct pci_dev *pdev, const struct pci_device_id *id)
{
	int err;
	struct dt3155_priv *pd;

	err = FUNC4(&pdev->dev, FUNC0(32));
	if (err)
		return -ENODEV;
	pd = FUNC3(&pdev->dev, sizeof(*pd), GFP_KERNEL);
	if (!pd)
		return -ENOMEM;

	err = FUNC18(&pdev->dev, &pd->v4l2_dev);
	if (err)
		return err;
	pd->vdev = dt3155_vdev;
	pd->vdev.v4l2_dev = &pd->v4l2_dev;
	FUNC22(&pd->vdev, pd);  /* for use in video_fops */
	pd->pdev = pdev;
	pd->std = V4L2_STD_625_50;
	pd->csr2 = VT_50HZ;
	pd->width = 768;
	pd->height = 576;
	FUNC1(&pd->dmaq);
	FUNC7(&pd->mux);
	pd->vdev.lock = &pd->mux; /* for locking v4l2_file_operations */
	pd->vidq.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
	pd->vidq.timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
	pd->vidq.io_modes = VB2_MMAP | VB2_DMABUF | VB2_READ;
	pd->vidq.ops = &q_ops;
	pd->vidq.mem_ops = &vb2_dma_contig_memops;
	pd->vidq.drv_priv = pd;
	pd->vidq.min_buffers_needed = 2;
	pd->vidq.gfp_flags = GFP_DMA32;
	pd->vidq.lock = &pd->mux; /* for locking v4l2_file_operations */
	pd->vidq.dev = &pdev->dev;
	pd->vdev.queue = &pd->vidq;
	err = FUNC20(&pd->vidq);
	if (err < 0)
		goto err_v4l2_dev_unreg;
	FUNC17(&pd->lock);
	pd->config = ACQ_MODE_EVEN;
	err = FUNC9(pdev);
	if (err)
		goto err_v4l2_dev_unreg;
	err = FUNC14(pdev, 0, FUNC12(pdev));
	if (err)
		goto err_pci_disable;
	pd->regs = FUNC10(pdev, 0, FUNC15(pd->pdev, 0));
	if (!pd->regs) {
		err = -ENOMEM;
		goto err_free_reg;
	}
	err = FUNC5(pd);
	if (err)
		goto err_iounmap;
	err = FUNC16(pd->pdev->irq, dt3155_irq_handler_even,
					IRQF_SHARED, DT3155_NAME, pd);
	if (err)
		goto err_iounmap;
	err = FUNC21(&pd->vdev, VFL_TYPE_GRABBER, -1);
	if (err)
		goto err_free_irq;
	FUNC2(&pdev->dev, "/dev/video%i is ready\n", pd->vdev.minor);
	return 0;  /*   success   */

err_free_irq:
	FUNC6(pd->pdev->irq, pd);
err_iounmap:
	FUNC11(pdev, pd->regs);
err_free_reg:
	FUNC13(pdev, 0);
err_pci_disable:
	FUNC8(pdev);
err_v4l2_dev_unreg:
	FUNC19(&pd->v4l2_dev);
	return err;
}