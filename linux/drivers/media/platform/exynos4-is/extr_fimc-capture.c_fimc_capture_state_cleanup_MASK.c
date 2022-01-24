#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct fimc_vid_cap {int /*<<< orphan*/  ve; scalar_t__ buf_index; int /*<<< orphan*/  active_buf_q; int /*<<< orphan*/  pending_buf_q; } ;
struct TYPE_2__ {int /*<<< orphan*/  vb2_buf; } ;
struct fimc_vid_buffer {TYPE_1__ vb; } ;
struct fimc_dev {int state; int /*<<< orphan*/  slock; struct fimc_vid_cap vid_cap; } ;

/* Variables and functions */
 int ST_CAPT_ISP_STREAM ; 
 int ST_CAPT_PEND ; 
 int ST_CAPT_RUN ; 
 int ST_CAPT_SHUT ; 
 int ST_CAPT_STREAM ; 
 int ST_CAPT_SUSPENDED ; 
 int /*<<< orphan*/  VB2_BUF_STATE_ERROR ; 
 struct fimc_vid_buffer* FUNC0 (struct fimc_vid_cap*) ; 
 int /*<<< orphan*/  FUNC1 (struct fimc_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct fimc_vid_cap*,struct fimc_vid_buffer*) ; 
 struct fimc_vid_buffer* FUNC3 (struct fimc_vid_cap*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  set_stream ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct fimc_dev *fimc, bool suspend)
{
	struct fimc_vid_cap *cap = &fimc->vid_cap;
	struct fimc_vid_buffer *buf;
	unsigned long flags;
	bool streaming;

	FUNC6(&fimc->slock, flags);
	streaming = fimc->state & (1 << ST_CAPT_ISP_STREAM);

	fimc->state &= ~(1 << ST_CAPT_RUN | 1 << ST_CAPT_SHUT |
			 1 << ST_CAPT_STREAM | 1 << ST_CAPT_ISP_STREAM);
	if (suspend)
		fimc->state |= (1 << ST_CAPT_SUSPENDED);
	else
		fimc->state &= ~(1 << ST_CAPT_PEND | 1 << ST_CAPT_SUSPENDED);

	/* Release unused buffers */
	while (!suspend && !FUNC5(&cap->pending_buf_q)) {
		buf = FUNC3(cap);
		FUNC8(&buf->vb.vb2_buf, VB2_BUF_STATE_ERROR);
	}
	/* If suspending put unused buffers onto pending queue */
	while (!FUNC5(&cap->active_buf_q)) {
		buf = FUNC0(cap);
		if (suspend)
			FUNC2(cap, buf);
		else
			FUNC8(&buf->vb.vb2_buf, VB2_BUF_STATE_ERROR);
	}

	FUNC1(fimc);
	cap->buf_index = 0;

	FUNC7(&fimc->slock, flags);

	if (streaming)
		return FUNC4(&cap->ve, set_stream, 0);
	else
		return 0;
}