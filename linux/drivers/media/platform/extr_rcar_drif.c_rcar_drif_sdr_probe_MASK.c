#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * ops; } ;
struct TYPE_4__ {int io_modes; int buf_struct_size; int /*<<< orphan*/  timestamp_flags; int /*<<< orphan*/ * mem_ops; int /*<<< orphan*/ * ops; struct rcar_drif_sdr* drv_priv; int /*<<< orphan*/  type; } ;
struct rcar_drif_sdr {int /*<<< orphan*/  v4l2_dev; TYPE_2__ notifier; int /*<<< orphan*/  dev; TYPE_1__ vb_queue; int /*<<< orphan*/  queued_bufs; int /*<<< orphan*/  dma_lock; int /*<<< orphan*/  queued_bufs_lock; int /*<<< orphan*/  vb_queue_mutex; int /*<<< orphan*/  v4l2_mutex; int /*<<< orphan*/  hwbuf_size; } ;
struct rcar_drif_frame_buf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RCAR_DRIF_DEFAULT_HWBUF_SIZE ; 
 int /*<<< orphan*/  V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_SDR_CAPTURE ; 
 int VB2_DMABUF ; 
 int VB2_MMAP ; 
 int VB2_READ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rcar_drif_notify_ops ; 
 int FUNC3 (struct rcar_drif_sdr*) ; 
 int FUNC4 (struct rcar_drif_sdr*) ; 
 int /*<<< orphan*/  rcar_drif_vb2_ops ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int FUNC7 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  vb2_vmalloc_memops ; 

__attribute__((used)) static int FUNC11(struct rcar_drif_sdr *sdr)
{
	int ret;

	/* Validate any supported format for enabled channels */
	ret = FUNC4(sdr);
	if (ret) {
		FUNC1(sdr->dev, "failed to set default format\n");
		return ret;
	}

	/* Set defaults */
	sdr->hwbuf_size = RCAR_DRIF_DEFAULT_HWBUF_SIZE;

	FUNC2(&sdr->v4l2_mutex);
	FUNC2(&sdr->vb_queue_mutex);
	FUNC5(&sdr->queued_bufs_lock);
	FUNC5(&sdr->dma_lock);
	FUNC0(&sdr->queued_bufs);

	/* Init videobuf2 queue structure */
	sdr->vb_queue.type = V4L2_BUF_TYPE_SDR_CAPTURE;
	sdr->vb_queue.io_modes = VB2_READ | VB2_MMAP | VB2_DMABUF;
	sdr->vb_queue.drv_priv = sdr;
	sdr->vb_queue.buf_struct_size = sizeof(struct rcar_drif_frame_buf);
	sdr->vb_queue.ops = &rcar_drif_vb2_ops;
	sdr->vb_queue.mem_ops = &vb2_vmalloc_memops;
	sdr->vb_queue.timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;

	/* Init videobuf2 queue */
	ret = FUNC10(&sdr->vb_queue);
	if (ret) {
		FUNC1(sdr->dev, "failed: vb2_queue_init ret %d\n", ret);
		return ret;
	}

	/* Register the v4l2_device */
	ret = FUNC8(sdr->dev, &sdr->v4l2_dev);
	if (ret) {
		FUNC1(sdr->dev, "failed: v4l2_device_register ret %d\n", ret);
		return ret;
	}

	/*
	 * Parse subdevs after v4l2_device_register because if the subdev
	 * is already probed, bound and complete will be called immediately
	 */
	ret = FUNC3(sdr);
	if (ret)
		goto error;

	sdr->notifier.ops = &rcar_drif_notify_ops;

	/* Register notifier */
	ret = FUNC7(&sdr->v4l2_dev, &sdr->notifier);
	if (ret < 0) {
		FUNC1(sdr->dev, "failed: notifier register ret %d\n", ret);
		goto cleanup;
	}

	return ret;

cleanup:
	FUNC6(&sdr->notifier);
error:
	FUNC9(&sdr->v4l2_dev);

	return ret;
}