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
struct camif_vp {int state; int /*<<< orphan*/  active_buf_q; int /*<<< orphan*/  pending_buf_q; struct camif_dev* camif; } ;
struct camif_dev {int /*<<< orphan*/  slock; } ;
struct TYPE_2__ {int /*<<< orphan*/  vb2_buf; } ;
struct camif_buffer {TYPE_1__ vb; } ;

/* Variables and functions */
 int ST_VP_ABORTING ; 
 int ST_VP_LASTIRQ ; 
 int ST_VP_OFF ; 
 int ST_VP_PENDING ; 
 int ST_VP_RUNNING ; 
 int ST_VP_SENSOR_STREAMING ; 
 int ST_VP_STREAMING ; 
 int /*<<< orphan*/  VB2_BUF_STATE_ERROR ; 
 struct camif_buffer* FUNC0 (struct camif_vp*) ; 
 struct camif_buffer* FUNC1 (struct camif_vp*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct camif_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct camif_vp *vp)
{
	struct camif_dev *camif = vp->camif;
	struct camif_buffer *buf;
	unsigned long flags;
	bool streaming;

	FUNC4(&camif->slock, flags);
	streaming = vp->state & ST_VP_SENSOR_STREAMING;

	vp->state &= ~(ST_VP_PENDING | ST_VP_RUNNING | ST_VP_OFF |
		       ST_VP_ABORTING | ST_VP_STREAMING |
		       ST_VP_SENSOR_STREAMING | ST_VP_LASTIRQ);

	/* Release unused buffers */
	while (!FUNC2(&vp->pending_buf_q)) {
		buf = FUNC1(vp);
		FUNC6(&buf->vb.vb2_buf, VB2_BUF_STATE_ERROR);
	}

	while (!FUNC2(&vp->active_buf_q)) {
		buf = FUNC0(vp);
		FUNC6(&buf->vb.vb2_buf, VB2_BUF_STATE_ERROR);
	}

	FUNC5(&camif->slock, flags);

	if (!streaming)
		return 0;

	return FUNC3(camif, 0);
}