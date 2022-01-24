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
struct vb2_queue {struct fimc_ctx* drv_priv; } ;
struct fimc_vid_cap {int reqbufs_count; int active_buf_cnt; int /*<<< orphan*/  ve; scalar_t__ frame_count; } ;
struct fimc_dev {int /*<<< orphan*/  state; struct fimc_vid_cap vid_cap; } ;
struct fimc_ctx {struct fimc_dev* fimc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ST_CAPT_ISP_STREAM ; 
 int /*<<< orphan*/  ST_CAPT_PEND ; 
 int /*<<< orphan*/  ST_CAPT_STREAM ; 
 int /*<<< orphan*/  FUNC0 (struct fimc_ctx*) ; 
 int FUNC1 (struct fimc_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct fimc_dev*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  set_stream ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct vb2_queue *q, unsigned int count)
{
	struct fimc_ctx *ctx = q->drv_priv;
	struct fimc_dev *fimc = ctx->fimc_dev;
	struct fimc_vid_cap *vid_cap = &fimc->vid_cap;
	int min_bufs;
	int ret;

	vid_cap->frame_count = 0;

	ret = FUNC1(fimc);
	if (ret) {
		FUNC2(fimc, false);
		return ret;
	}

	FUNC4(ST_CAPT_PEND, &fimc->state);

	min_bufs = fimc->vid_cap.reqbufs_count > 1 ? 2 : 1;

	if (vid_cap->active_buf_cnt >= min_bufs &&
	    !FUNC5(ST_CAPT_STREAM, &fimc->state)) {
		FUNC0(ctx);

		if (!FUNC5(ST_CAPT_ISP_STREAM, &fimc->state))
			return FUNC3(&vid_cap->ve, set_stream, 1);
	}

	return 0;
}