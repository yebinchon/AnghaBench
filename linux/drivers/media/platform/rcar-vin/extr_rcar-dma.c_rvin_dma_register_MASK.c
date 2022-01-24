#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vb2_queue {int io_modes; int buf_struct_size; int min_buffers_needed; int /*<<< orphan*/  dev; int /*<<< orphan*/  timestamp_flags; int /*<<< orphan*/ * mem_ops; int /*<<< orphan*/ * ops; struct rvin_dev* drv_priv; int /*<<< orphan*/ * lock; int /*<<< orphan*/  type; } ;
struct rvin_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; int /*<<< orphan*/ ** queue_buf; int /*<<< orphan*/  state; int /*<<< orphan*/  qlock; int /*<<< orphan*/  buf_list; int /*<<< orphan*/  v4l2_dev; struct vb2_queue queue; } ;
struct rvin_buffer {int dummy; } ;

/* Variables and functions */
 int HW_BUFFER_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 int /*<<< orphan*/  STOPPED ; 
 int /*<<< orphan*/  V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int VB2_DMABUF ; 
 int VB2_MMAP ; 
 int VB2_READ ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rvin_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rvin_dev*) ; 
 int /*<<< orphan*/  rvin_irq ; 
 int /*<<< orphan*/  rvin_qops ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vb2_dma_contig_memops ; 
 int FUNC6 (struct vb2_queue*) ; 
 int /*<<< orphan*/  FUNC7 (struct rvin_dev*,char*) ; 

int FUNC8(struct rvin_dev *vin, int irq)
{
	struct vb2_queue *q = &vin->queue;
	int i, ret;

	/* Initialize the top-level structure */
	ret = FUNC5(vin->dev, &vin->v4l2_dev);
	if (ret)
		return ret;

	FUNC2(&vin->lock);
	FUNC0(&vin->buf_list);

	FUNC4(&vin->qlock);

	vin->state = STOPPED;

	for (i = 0; i < HW_BUFFER_NUM; i++)
		vin->queue_buf[i] = NULL;

	/* buffer queue */
	q->type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
	q->io_modes = VB2_MMAP | VB2_READ | VB2_DMABUF;
	q->lock = &vin->lock;
	q->drv_priv = vin;
	q->buf_struct_size = sizeof(struct rvin_buffer);
	q->ops = &rvin_qops;
	q->mem_ops = &vb2_dma_contig_memops;
	q->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
	q->min_buffers_needed = 4;
	q->dev = vin->dev;

	ret = FUNC6(q);
	if (ret < 0) {
		FUNC7(vin, "failed to initialize VB2 queue\n");
		goto error;
	}

	/* irq */
	ret = FUNC1(vin->dev, irq, rvin_irq, IRQF_SHARED,
			       KBUILD_MODNAME, vin);
	if (ret) {
		FUNC7(vin, "failed to request irq\n");
		goto error;
	}

	return 0;
error:
	FUNC3(vin);

	return ret;
}