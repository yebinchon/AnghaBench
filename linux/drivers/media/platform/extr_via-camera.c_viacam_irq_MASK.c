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
struct via_camera {int n_cap_bufs; int /*<<< orphan*/  lock; int /*<<< orphan*/  sequence; int /*<<< orphan*/ * cb_offsets; } ;
struct TYPE_5__ {int /*<<< orphan*/  timestamp; } ;
struct TYPE_4__ {TYPE_2__ vb2_buf; int /*<<< orphan*/  field; scalar_t__ sequence; } ;
struct via_buffer {TYPE_1__ vbuf; int /*<<< orphan*/  queue; } ;
struct sg_table {int /*<<< orphan*/  nents; int /*<<< orphan*/  sgl; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  V4L2_FIELD_NONE ; 
 int /*<<< orphan*/  VB2_BUF_STATE_DONE ; 
 int VCR_IC_ACTBUF ; 
 int /*<<< orphan*/  VCR_INTCTRL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 struct sg_table* FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 struct via_buffer* FUNC6 (struct via_camera*) ; 
 int FUNC7 (struct via_camera*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *data)
{
	struct via_camera *cam = data;
	struct via_buffer *vb;
	int bufn;
	struct sg_table *sgt;

	FUNC2(&cam->lock);
	/*
	 * If there is no place to put the data frame, don't bother
	 * with anything else.
	 */
	vb = FUNC6(cam);
	if (vb == NULL)
		goto done;
	/*
	 * Figure out which buffer we just completed.
	 */
	bufn = (FUNC7(cam, VCR_INTCTRL) & VCR_IC_ACTBUF) >> 3;
	bufn -= 1;
	if (bufn < 0)
		bufn = cam->n_cap_bufs - 1;
	/*
	 * Copy over the data and let any waiters know.
	 */
	sgt = FUNC5(&vb->vbuf.vb2_buf, 0);
	vb->vbuf.vb2_buf.timestamp = FUNC0();
	FUNC8(cam->cb_offsets[bufn], sgt->sgl, sgt->nents);
	vb->vbuf.sequence = cam->sequence++;
	vb->vbuf.field = V4L2_FIELD_NONE;
	FUNC1(&vb->queue);
	FUNC4(&vb->vbuf.vb2_buf, VB2_BUF_STATE_DONE);
done:
	FUNC3(&cam->lock);
	return IRQ_HANDLED;
}