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
struct TYPE_2__ {int /*<<< orphan*/  m2m_dev; } ;
struct gsc_dev {int /*<<< orphan*/  slock; int /*<<< orphan*/  irq_queue; TYPE_1__ m2m; int /*<<< orphan*/  state; } ;
struct gsc_ctx {int state; int /*<<< orphan*/  m2m_ctx; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int GSC_CTX_STOP_REQ ; 
 int GSC_IRQ_OVERRUN ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  ST_M2M_PEND ; 
 int /*<<< orphan*/  ST_M2M_SUSPENDED ; 
 int /*<<< orphan*/  ST_M2M_SUSPENDING ; 
 int /*<<< orphan*/  VB2_BUF_STATE_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct gsc_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct gsc_dev*,int) ; 
 int FUNC2 (struct gsc_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct gsc_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct gsc_ctx* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC11(int irq, void *priv)
{
	struct gsc_dev *gsc = priv;
	struct gsc_ctx *ctx;
	int gsc_irq;

	gsc_irq = FUNC2(gsc);
	FUNC0(gsc, gsc_irq);

	if (gsc_irq == GSC_IRQ_OVERRUN) {
		FUNC4("Local path input over-run interrupt has occurred!\n");
		return IRQ_HANDLED;
	}

	FUNC6(&gsc->slock);

	if (FUNC8(ST_M2M_PEND, &gsc->state)) {

		FUNC1(gsc, false);

		if (FUNC8(ST_M2M_SUSPENDING, &gsc->state)) {
			FUNC5(ST_M2M_SUSPENDED, &gsc->state);
			FUNC10(&gsc->irq_queue);
			goto isr_unlock;
		}
		ctx = FUNC9(gsc->m2m.m2m_dev);

		if (!ctx || !ctx->m2m_ctx)
			goto isr_unlock;

		FUNC7(&gsc->slock);
		FUNC3(ctx, VB2_BUF_STATE_DONE);

		/* wake_up job_abort, stop_streaming */
		if (ctx->state & GSC_CTX_STOP_REQ) {
			ctx->state &= ~GSC_CTX_STOP_REQ;
			FUNC10(&gsc->irq_queue);
		}
		return IRQ_HANDLED;
	}

isr_unlock:
	FUNC7(&gsc->slock);
	return IRQ_HANDLED;
}