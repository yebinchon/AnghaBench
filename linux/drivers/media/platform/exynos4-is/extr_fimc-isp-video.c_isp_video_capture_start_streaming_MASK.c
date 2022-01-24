#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vb2_queue {int dummy; } ;
struct param_dma_output {scalar_t__ buffer_address; int /*<<< orphan*/  dma_out_mask; int /*<<< orphan*/  buffer_number; int /*<<< orphan*/  notify_dma_done; int /*<<< orphan*/  cmd; } ;
struct TYPE_4__ {int /*<<< orphan*/  vdev; } ;
struct fimc_is_video {TYPE_2__ ve; TYPE_1__* format; int /*<<< orphan*/  buf_count; int /*<<< orphan*/  buf_mask; int /*<<< orphan*/  reqbufs_count; } ;
struct fimc_isp {int /*<<< orphan*/  state; struct fimc_is_video video_capture; } ;
struct fimc_is {scalar_t__ is_dma_p_region; } ;
struct TYPE_3__ {int /*<<< orphan*/  memplanes; } ;

/* Variables and functions */
 scalar_t__ DMA2_OUTPUT_ADDR_ARRAY_OFFS ; 
 int /*<<< orphan*/  DMA_OUTPUT_COMMAND_ENABLE ; 
 int /*<<< orphan*/  DMA_OUTPUT_NOTIFY_DMA_DONE_ENABLE ; 
 int /*<<< orphan*/  PARAM_ISP_DMA2_OUTPUT ; 
 int /*<<< orphan*/  ST_ISP_VID_CAP_BUF_PREP ; 
 int /*<<< orphan*/  ST_ISP_VID_CAP_STREAMING ; 
 int /*<<< orphan*/  FUNC0 (struct fimc_is*,int /*<<< orphan*/ ) ; 
 struct param_dma_output* FUNC1 (struct fimc_is*) ; 
 int FUNC2 (struct fimc_is*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct fimc_is*,int /*<<< orphan*/ ) ; 
 struct fimc_is* FUNC5 (struct fimc_isp*) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  set_stream ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct fimc_isp* FUNC10 (struct vb2_queue*) ; 

__attribute__((used)) static int FUNC11(struct vb2_queue *q,
						unsigned int count)
{
	struct fimc_isp *isp = FUNC10(q);
	struct fimc_is *is = FUNC5(isp);
	struct param_dma_output *dma = FUNC1(is);
	struct fimc_is_video *video = &isp->video_capture;
	int ret;

	if (!FUNC9(ST_ISP_VID_CAP_BUF_PREP, &isp->state) ||
	    FUNC9(ST_ISP_VID_CAP_STREAMING, &isp->state))
		return 0;


	dma->cmd = DMA_OUTPUT_COMMAND_ENABLE;
	dma->notify_dma_done = DMA_OUTPUT_NOTIFY_DMA_DONE_ENABLE;
	dma->buffer_address = is->is_dma_p_region +
				DMA2_OUTPUT_ADDR_ARRAY_OFFS;
	dma->buffer_number = video->reqbufs_count;
	dma->dma_out_mask = video->buf_mask;

	FUNC7(2, &video->ve.vdev,
		"buf_count: %d, planes: %d, dma addr table: %#x\n",
		video->buf_count, video->format->memplanes,
		dma->buffer_address);

	FUNC3();

	FUNC4(is, PARAM_ISP_DMA2_OUTPUT);
	FUNC0(is, PARAM_ISP_DMA2_OUTPUT);

	ret = FUNC2(is, false);
	if (ret < 0)
		return ret;

	ret = FUNC6(&video->ve, set_stream, 1);
	if (ret < 0)
		return ret;

	FUNC8(ST_ISP_VID_CAP_STREAMING, &isp->state);
	return ret;
}