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
struct TYPE_3__ {int /*<<< orphan*/  m2m_dev; } ;
struct bdisp_dev {int /*<<< orphan*/  slock; int /*<<< orphan*/  irq_queue; TYPE_1__ m2m; int /*<<< orphan*/  state; int /*<<< orphan*/  timeout_work; } ;
struct TYPE_4__ {int /*<<< orphan*/  m2m_ctx; } ;
struct bdisp_ctx {TYPE_2__ fh; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  BDISP_CTX_STOP_REQ ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  ST_M2M_RUNNING ; 
 int /*<<< orphan*/  ST_M2M_SUSPENDED ; 
 int /*<<< orphan*/  ST_M2M_SUSPENDING ; 
 int /*<<< orphan*/  VB2_BUF_STATE_DONE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct bdisp_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct bdisp_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (struct bdisp_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct bdisp_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct bdisp_ctx* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC11(int irq, void *priv)
{
	struct bdisp_dev *bdisp = priv;
	struct bdisp_ctx *ctx;

	FUNC6(&bdisp->slock);

	FUNC2(bdisp);

	FUNC4(&bdisp->timeout_work);

	if (!FUNC8(ST_M2M_RUNNING, &bdisp->state))
		goto isr_unlock;

	if (FUNC8(ST_M2M_SUSPENDING, &bdisp->state)) {
		FUNC5(ST_M2M_SUSPENDED, &bdisp->state);
		FUNC10(&bdisp->irq_queue);
		goto isr_unlock;
	}

	ctx = FUNC9(bdisp->m2m.m2m_dev);
	if (!ctx || !ctx->fh.m2m_ctx)
		goto isr_unlock;

	FUNC7(&bdisp->slock);

	FUNC3(ctx, VB2_BUF_STATE_DONE);

	if (FUNC0(BDISP_CTX_STOP_REQ, ctx)) {
		FUNC1(BDISP_CTX_STOP_REQ, ctx);
		FUNC10(&bdisp->irq_queue);
	}

	return IRQ_HANDLED;

isr_unlock:
	FUNC7(&bdisp->slock);

	return IRQ_HANDLED;
}