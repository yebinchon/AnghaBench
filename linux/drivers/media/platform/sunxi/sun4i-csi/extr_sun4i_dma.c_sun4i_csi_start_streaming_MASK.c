#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct vb2_queue {int dummy; } ;
struct v4l2_fwnode_bus_parallel {int flags; } ;
struct sun4i_csi_format {int /*<<< orphan*/  output; int /*<<< orphan*/  input; } ;
struct TYPE_8__ {int /*<<< orphan*/  paddr; int /*<<< orphan*/  vaddr; scalar_t__ size; } ;
struct TYPE_7__ {int /*<<< orphan*/  entity; int /*<<< orphan*/  pipe; } ;
struct TYPE_6__ {unsigned int num_planes; int width; TYPE_1__* plane_fmt; int /*<<< orphan*/  height; int /*<<< orphan*/  pixelformat; } ;
struct sun4i_csi {int /*<<< orphan*/  qlock; TYPE_4__ scratch; int /*<<< orphan*/  dev; TYPE_3__ vdev; int /*<<< orphan*/  src_subdev; scalar_t__ regs; TYPE_2__ fmt; scalar_t__ sequence; struct v4l2_fwnode_bus_parallel bus; } ;
struct TYPE_5__ {int bytesperline; scalar_t__ sizeimage; } ;

/* Variables and functions */
 int CSI_BUF_CTRL_DBE ; 
 scalar_t__ CSI_BUF_CTRL_REG ; 
 scalar_t__ CSI_BUF_LEN_REG ; 
 int FUNC0 (unsigned long) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (unsigned long) ; 
 scalar_t__ CSI_CFG_REG ; 
 int FUNC4 (unsigned long) ; 
 scalar_t__ CSI_INT_EN_REG ; 
 int CSI_INT_FRM_DONE ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ CSI_WIN_CTRL_H_REG ; 
 int FUNC6 (int) ; 
 scalar_t__ CSI_WIN_CTRL_W_REG ; 
 int EINVAL ; 
 int ENOIOCTLCMD ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int V4L2_MBUS_DATA_ACTIVE_HIGH ; 
 int V4L2_MBUS_HSYNC_ACTIVE_HIGH ; 
 int V4L2_MBUS_VSYNC_ACTIVE_HIGH ; 
 int /*<<< orphan*/  VB2_BUF_STATE_QUEUED ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct sun4i_csi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_stream ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC16 (struct sun4i_csi*) ; 
 int /*<<< orphan*/  FUNC17 (struct sun4i_csi*) ; 
 int /*<<< orphan*/  FUNC18 (struct sun4i_csi*) ; 
 struct sun4i_csi_format* FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct sun4i_csi* FUNC21 (struct vb2_queue*) ; 
 int /*<<< orphan*/  video ; 
 int /*<<< orphan*/  FUNC22 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC23(struct vb2_queue *vq, unsigned int count)
{
	struct sun4i_csi *csi = FUNC21(vq);
	struct v4l2_fwnode_bus_parallel *bus = &csi->bus;
	const struct sun4i_csi_format *csi_fmt;
	unsigned long hsync_pol, pclk_pol, vsync_pol;
	unsigned long flags;
	unsigned int i;
	int ret;

	csi_fmt = FUNC19(&csi->fmt.pixelformat, NULL);
	if (!csi_fmt)
		return -EINVAL;

	FUNC7(csi->dev, "Starting capture\n");

	csi->sequence = 0;

	/*
	 * We need a scratch buffer in case where we'll not have any
	 * more buffer queued so that we don't error out. One of those
	 * cases is when you end up at the last frame to capture, you
	 * don't havea any buffer queued any more, and yet it doesn't
	 * really matter since you'll never reach the next buffer.
	 *
	 * Since we support the multi-planar API, we need to have a
	 * buffer for each plane. Allocating a single one large enough
	 * to hold all the buffers is simpler, so let's go for that.
	 */
	csi->scratch.size = 0;
	for (i = 0; i < csi->fmt.num_planes; i++)
		csi->scratch.size += csi->fmt.plane_fmt[i].sizeimage;

	csi->scratch.vaddr = FUNC9(csi->dev,
						csi->scratch.size,
						&csi->scratch.paddr,
						GFP_KERNEL);
	if (!csi->scratch.vaddr) {
		FUNC8(csi->dev, "Failed to allocate scratch buffer\n");
		ret = -ENOMEM;
		goto err_clear_dma_queue;
	}

	ret = FUNC11(&csi->vdev.entity, &csi->vdev.pipe);
	if (ret < 0)
		goto err_free_scratch_buffer;

	FUNC14(&csi->qlock, flags);

	/* Setup timings */
	FUNC22(FUNC6(csi->fmt.width * 2),
	       csi->regs + CSI_WIN_CTRL_W_REG);
	FUNC22(FUNC5(csi->fmt.height),
	       csi->regs + CSI_WIN_CTRL_H_REG);

	hsync_pol = !!(bus->flags & V4L2_MBUS_HSYNC_ACTIVE_HIGH);
	pclk_pol = !!(bus->flags & V4L2_MBUS_DATA_ACTIVE_HIGH);
	vsync_pol = !!(bus->flags & V4L2_MBUS_VSYNC_ACTIVE_HIGH);
	FUNC22(FUNC1(csi_fmt->input) |
	       FUNC2(csi_fmt->output) |
	       FUNC4(vsync_pol) |
	       FUNC0(hsync_pol) |
	       FUNC3(pclk_pol),
	       csi->regs + CSI_CFG_REG);

	/* Setup buffer length */
	FUNC22(csi->fmt.plane_fmt[0].bytesperline,
	       csi->regs + CSI_BUF_LEN_REG);

	/* Prepare our buffers in hardware */
	ret = FUNC16(csi);
	if (ret) {
		FUNC15(&csi->qlock, flags);
		goto err_disable_pipeline;
	}

	/* Enable double buffering */
	FUNC22(CSI_BUF_CTRL_DBE, csi->regs + CSI_BUF_CTRL_REG);

	/* Clear the pending interrupts */
	FUNC22(CSI_INT_FRM_DONE, csi->regs + 0x34);

	/* Enable frame done interrupt */
	FUNC22(CSI_INT_FRM_DONE, csi->regs + CSI_INT_EN_REG);

	FUNC17(csi);

	FUNC15(&csi->qlock, flags);

	ret = FUNC20(csi->src_subdev, video, s_stream, 1);
	if (ret < 0 && ret != -ENOIOCTLCMD)
		goto err_disable_device;

	return 0;

err_disable_device:
	FUNC18(csi);

err_disable_pipeline:
	FUNC12(&csi->vdev.entity);

err_free_scratch_buffer:
	FUNC10(csi->dev, csi->scratch.size, csi->scratch.vaddr,
			  csi->scratch.paddr);

err_clear_dma_queue:
	FUNC14(&csi->qlock, flags);
	FUNC13(csi, VB2_BUF_STATE_QUEUED);
	FUNC15(&csi->qlock, flags);

	return ret;
}