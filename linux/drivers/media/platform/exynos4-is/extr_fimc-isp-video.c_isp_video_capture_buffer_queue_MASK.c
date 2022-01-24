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
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_buffer {int /*<<< orphan*/  vb2_queue; int /*<<< orphan*/  index; } ;
struct isp_video_buf {scalar_t__ index; int /*<<< orphan*/ * dma_addr; } ;
struct TYPE_6__ {int /*<<< orphan*/  vdev; } ;
struct fimc_is_video {unsigned long buf_mask; scalar_t__ buf_count; scalar_t__ reqbufs_count; TYPE_3__ ve; struct isp_video_buf** buffers; TYPE_1__* format; } ;
struct fimc_isp {int /*<<< orphan*/  state; struct fimc_is_video video_capture; } ;
struct fimc_is {TYPE_2__* is_p_region; int /*<<< orphan*/  slock; } ;
struct TYPE_5__ {int /*<<< orphan*/ * shared; } ;
struct TYPE_4__ {unsigned int memplanes; } ;

/* Variables and functions */
 unsigned long FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  ST_ISP_VID_CAP_BUF_PREP ; 
 int /*<<< orphan*/  ST_ISP_VID_CAP_STREAMING ; 
 struct fimc_is* FUNC1 (struct fimc_isp*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *,char*,int,unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct isp_video_buf* FUNC8 (struct vb2_v4l2_buffer*) ; 
 struct vb2_v4l2_buffer* FUNC9 (struct vb2_buffer*) ; 
 int /*<<< orphan*/  FUNC10 (struct vb2_buffer*,unsigned int) ; 
 struct fimc_isp* FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct vb2_buffer *vb)
{
	struct vb2_v4l2_buffer *vbuf = FUNC9(vb);
	struct fimc_isp *isp = FUNC11(vb->vb2_queue);
	struct fimc_is_video *video = &isp->video_capture;
	struct fimc_is *is = FUNC1(isp);
	struct isp_video_buf *ivb = FUNC8(vbuf);
	unsigned long flags;
	unsigned int i;

	if (FUNC7(ST_ISP_VID_CAP_BUF_PREP, &isp->state)) {
		FUNC5(&is->slock, flags);
		video->buf_mask |= FUNC0(ivb->index);
		FUNC6(&is->slock, flags);
	} else {
		unsigned int num_planes = video->format->memplanes;

		ivb->index = video->buf_count;
		video->buffers[ivb->index] = ivb;

		for (i = 0; i < num_planes; i++) {
			int buf_index = ivb->index * num_planes + i;

			ivb->dma_addr[i] = FUNC10(vb, i);
			is->is_p_region->shared[32 + buf_index] =
							ivb->dma_addr[i];

			FUNC2(2, &video->ve.vdev,
				"dma_buf %d (%d/%d/%d) addr: %pad\n",
				buf_index, ivb->index, i, vb->index,
				&ivb->dma_addr[i]);
		}

		if (++video->buf_count < video->reqbufs_count)
			return;

		video->buf_mask = (1UL << video->buf_count) - 1;
		FUNC4(ST_ISP_VID_CAP_BUF_PREP, &isp->state);
	}

	if (!FUNC7(ST_ISP_VID_CAP_STREAMING, &isp->state))
		FUNC3(vb->vb2_queue, 0);
}