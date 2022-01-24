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
struct TYPE_2__ {int /*<<< orphan*/  vb2_buf; } ;
struct flite_buffer {TYPE_1__ vb; } ;
struct fimc_lite {int state; int /*<<< orphan*/  ve; int /*<<< orphan*/  slock; int /*<<< orphan*/  active_buf_q; int /*<<< orphan*/  pending_buf_q; } ;

/* Variables and functions */
 int ST_FLITE_OFF ; 
 int ST_FLITE_PENDING ; 
 int ST_FLITE_RUN ; 
 int ST_FLITE_STREAM ; 
 int ST_FLITE_SUSPENDED ; 
 int ST_SENSOR_STREAM ; 
 int /*<<< orphan*/  VB2_BUF_STATE_ERROR ; 
 struct flite_buffer* FUNC0 (struct fimc_lite*) ; 
 int /*<<< orphan*/  FUNC1 (struct fimc_lite*,struct flite_buffer*) ; 
 struct flite_buffer* FUNC2 (struct fimc_lite*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fimc_lite*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  set_stream ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct fimc_lite *fimc, bool suspend)
{
	struct flite_buffer *buf;
	unsigned long flags;
	bool streaming;

	FUNC6(&fimc->slock, flags);
	streaming = fimc->state & (1 << ST_SENSOR_STREAM);

	fimc->state &= ~(1 << ST_FLITE_RUN | 1 << ST_FLITE_OFF |
			 1 << ST_FLITE_STREAM | 1 << ST_SENSOR_STREAM);
	if (suspend)
		fimc->state |= (1 << ST_FLITE_SUSPENDED);
	else
		fimc->state &= ~(1 << ST_FLITE_PENDING |
				 1 << ST_FLITE_SUSPENDED);

	/* Release unused buffers */
	while (!suspend && !FUNC5(&fimc->pending_buf_q)) {
		buf = FUNC2(fimc);
		FUNC8(&buf->vb.vb2_buf, VB2_BUF_STATE_ERROR);
	}
	/* If suspending put unused buffers onto pending queue */
	while (!FUNC5(&fimc->active_buf_q)) {
		buf = FUNC0(fimc);
		if (suspend)
			FUNC1(fimc, buf);
		else
			FUNC8(&buf->vb.vb2_buf, VB2_BUF_STATE_ERROR);
	}

	FUNC7(&fimc->slock, flags);

	FUNC4(fimc);

	if (!streaming)
		return 0;

	return FUNC3(&fimc->ve, set_stream, 0);
}