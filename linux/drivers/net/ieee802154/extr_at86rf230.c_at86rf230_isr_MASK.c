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
struct TYPE_2__ {int /*<<< orphan*/  complete; } ;
struct at86rf230_state_change {int free; int* buf; TYPE_1__ msg; } ;
struct at86rf230_local {int /*<<< orphan*/  spi; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int CMD_REG ; 
 int CMD_REG_MASK ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int RG_IRQ_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct at86rf230_local*,struct at86rf230_state_change*,int) ; 
 int /*<<< orphan*/  at86rf230_irq_status ; 
 int /*<<< orphan*/  FUNC1 (struct at86rf230_local*,struct at86rf230_state_change*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct at86rf230_state_change* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *data)
{
	struct at86rf230_local *lp = data;
	struct at86rf230_state_change *ctx;
	int rc;

	FUNC2(irq);

	ctx = FUNC4(sizeof(*ctx), GFP_ATOMIC);
	if (!ctx) {
		FUNC3(irq);
		return IRQ_NONE;
	}

	FUNC1(lp, ctx);
	/* tell on error handling to free ctx */
	ctx->free = true;

	ctx->buf[0] = (RG_IRQ_STATUS & CMD_REG_MASK) | CMD_REG;
	ctx->msg.complete = at86rf230_irq_status;
	rc = FUNC5(lp->spi, &ctx->msg);
	if (rc) {
		FUNC0(lp, ctx, rc);
		FUNC3(irq);
		return IRQ_NONE;
	}

	return IRQ_HANDLED;
}