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
typedef  scalar_t__ u32 ;
struct cal_dmaqueue {int /*<<< orphan*/  active; } ;
struct cal_dev {struct cal_ctx** ctx; } ;
struct cal_ctx {scalar_t__ cur_frm; scalar_t__ next_frm; int /*<<< orphan*/  slock; struct cal_dmaqueue vidq; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC1 (struct cal_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (struct cal_ctx*) ; 
 scalar_t__ FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct cal_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cal_dev*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq_cal, void *data)
{
	struct cal_dev *dev = (struct cal_dev *)data;
	struct cal_ctx *ctx;
	struct cal_dmaqueue *dma_q;
	u32 irqst2, irqst3;

	/* Check which DMA just finished */
	irqst2 = FUNC5(dev, FUNC0(2));
	if (irqst2) {
		/* Clear Interrupt status */
		FUNC6(dev, FUNC0(2), irqst2);

		/* Need to check both port */
		if (FUNC3(irqst2, 1)) {
			ctx = dev->ctx[0];

			if (ctx->cur_frm != ctx->next_frm)
				FUNC1(ctx);
		}

		if (FUNC3(irqst2, 2)) {
			ctx = dev->ctx[1];

			if (ctx->cur_frm != ctx->next_frm)
				FUNC1(ctx);
		}
	}

	/* Check which DMA just started */
	irqst3 = FUNC5(dev, FUNC0(3));
	if (irqst3) {
		/* Clear Interrupt status */
		FUNC6(dev, FUNC0(3), irqst3);

		/* Need to check both port */
		if (FUNC3(irqst3, 1)) {
			ctx = dev->ctx[0];
			dma_q = &ctx->vidq;

			FUNC7(&ctx->slock);
			if (!FUNC4(&dma_q->active) &&
			    ctx->cur_frm == ctx->next_frm)
				FUNC2(ctx);
			FUNC8(&ctx->slock);
		}

		if (FUNC3(irqst3, 2)) {
			ctx = dev->ctx[1];
			dma_q = &ctx->vidq;

			FUNC7(&ctx->slock);
			if (!FUNC4(&dma_q->active) &&
			    ctx->cur_frm == ctx->next_frm)
				FUNC2(ctx);
			FUNC8(&ctx->slock);
		}
	}

	return IRQ_HANDLED;
}