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
typedef  int u32 ;
struct TYPE_6__ {int /*<<< orphan*/  timestamp; } ;
struct TYPE_5__ {TYPE_3__ vb2_buf; scalar_t__ sequence; } ;
struct flite_buffer {TYPE_2__ vb; int /*<<< orphan*/  index; } ;
struct TYPE_4__ {int /*<<< orphan*/  data_overflow; } ;
struct fimc_lite {int /*<<< orphan*/  slock; int /*<<< orphan*/  state; int /*<<< orphan*/  pending_buf_q; int /*<<< orphan*/  frame_count; int /*<<< orphan*/  active_buf_q; int /*<<< orphan*/  out_path; int /*<<< orphan*/  irq_queue; TYPE_1__ events; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ FIMC_IO_DMA ; 
 int FLITE_REG_CISTATUS_IRQ_SRC_FRMEND ; 
 int FLITE_REG_CISTATUS_IRQ_SRC_FRMSTART ; 
 int FLITE_REG_CISTATUS_IRQ_SRC_LASTCAPEND ; 
 int FLITE_REG_CISTATUS_IRQ_SRC_OVERFLOW ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  ST_FLITE_CONFIG ; 
 int /*<<< orphan*/  ST_FLITE_OFF ; 
 int /*<<< orphan*/  ST_FLITE_RUN ; 
 int /*<<< orphan*/  ST_FLITE_STREAM ; 
 int /*<<< orphan*/  VB2_BUF_STATE_DONE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fimc_lite*,struct flite_buffer*) ; 
 struct flite_buffer* FUNC3 (struct fimc_lite*) ; 
 int /*<<< orphan*/  FUNC4 (struct fimc_lite*) ; 
 struct flite_buffer* FUNC5 (struct fimc_lite*) ; 
 int /*<<< orphan*/  FUNC6 (struct fimc_lite*) ; 
 int /*<<< orphan*/  FUNC7 (struct fimc_lite*) ; 
 int /*<<< orphan*/  FUNC8 (struct fimc_lite*) ; 
 int FUNC9 (struct fimc_lite*) ; 
 int /*<<< orphan*/  FUNC10 (struct fimc_lite*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct fimc_lite*,struct flite_buffer*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC21(int irq, void *priv)
{
	struct fimc_lite *fimc = priv;
	struct flite_buffer *vbuf;
	unsigned long flags;
	u32 intsrc;

	FUNC15(&fimc->slock, flags);

	intsrc = FUNC9(fimc);
	FUNC8(fimc);

	if (FUNC17(ST_FLITE_OFF, &fimc->state)) {
		FUNC20(&fimc->irq_queue);
		goto done;
	}

	if (intsrc & FLITE_REG_CISTATUS_IRQ_SRC_OVERFLOW) {
		FUNC1(ST_FLITE_RUN, &fimc->state);
		fimc->events.data_overflow++;
	}

	if (intsrc & FLITE_REG_CISTATUS_IRQ_SRC_LASTCAPEND) {
		FUNC7(fimc);
		FUNC1(ST_FLITE_STREAM, &fimc->state);
		FUNC20(&fimc->irq_queue);
	}

	if (FUNC0(&fimc->out_path) != FIMC_IO_DMA)
		goto done;

	if ((intsrc & FLITE_REG_CISTATUS_IRQ_SRC_FRMSTART) &&
	    FUNC18(ST_FLITE_RUN, &fimc->state) &&
	    !FUNC13(&fimc->pending_buf_q)) {
		vbuf = FUNC5(fimc);
		FUNC11(fimc, vbuf);
		FUNC2(fimc, vbuf);
	}

	if ((intsrc & FLITE_REG_CISTATUS_IRQ_SRC_FRMEND) &&
	    FUNC18(ST_FLITE_RUN, &fimc->state) &&
	    !FUNC13(&fimc->active_buf_q)) {
		vbuf = FUNC3(fimc);
		vbuf->vb.vb2_buf.timestamp = FUNC12();
		vbuf->vb.sequence = fimc->frame_count++;
		FUNC10(fimc, vbuf->index);
		FUNC19(&vbuf->vb.vb2_buf, VB2_BUF_STATE_DONE);
	}

	if (FUNC18(ST_FLITE_CONFIG, &fimc->state))
		FUNC4(fimc);

	if (FUNC13(&fimc->pending_buf_q)) {
		FUNC6(fimc);
		FUNC1(ST_FLITE_STREAM, &fimc->state);
	}
done:
	FUNC14(ST_FLITE_RUN, &fimc->state);
	FUNC16(&fimc->slock, flags);
	return IRQ_HANDLED;
}