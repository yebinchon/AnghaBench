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
struct TYPE_2__ {int* offset; int* range; } ;
struct cxl_context {int pending_irq; int /*<<< orphan*/  wq; int /*<<< orphan*/  lock; int /*<<< orphan*/  irq_bitmap; int /*<<< orphan*/  pe; TYPE_1__ irqs; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
typedef  int irq_hw_number_t ;
typedef  int __u16 ;

/* Variables and functions */
 int CXL_IRQ_RANGES ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct cxl_context*,int,int,int) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *data)
{
	struct cxl_context *ctx = data;
	irq_hw_number_t hwirq = FUNC2(FUNC1(irq));
	int irq_off, afu_irq = 0;
	__u16 range;
	int r;

	/*
	 * Look for the interrupt number.
	 * On bare-metal, we know range 0 only contains the PSL
	 * interrupt so we could start counting at range 1 and initialize
	 * afu_irq at 1.
	 * In a guest, range 0 also contains AFU interrupts, so it must
	 * be counted for. Therefore we initialize afu_irq at 0 to take into
	 * account the PSL interrupt.
	 *
	 * For code-readability, it just seems easier to go over all
	 * the ranges on bare-metal and guest. The end result is the same.
	 */
	for (r = 0; r < CXL_IRQ_RANGES; r++) {
		irq_off = hwirq - ctx->irqs.offset[r];
		range = ctx->irqs.range[r];
		if (irq_off >= 0 && irq_off < range) {
			afu_irq += irq_off;
			break;
		}
		afu_irq += range;
	}
	if (FUNC8(r >= CXL_IRQ_RANGES)) {
		FUNC0(1, "Received AFU IRQ out of range for pe %i (virq %i hwirq %lx)\n",
		     ctx->pe, irq, hwirq);
		return IRQ_HANDLED;
	}

	FUNC7(ctx, afu_irq, irq, hwirq);
	FUNC3("Received AFU interrupt %i for pe: %i (virq %i hwirq %lx)\n",
	       afu_irq, ctx->pe, irq, hwirq);

	if (FUNC8(!ctx->irq_bitmap)) {
		FUNC0(1, "Received AFU IRQ for context with no IRQ bitmap\n");
		return IRQ_HANDLED;
	}
	FUNC5(&ctx->lock);
	FUNC4(afu_irq - 1, ctx->irq_bitmap);
	ctx->pending_irq = true;
	FUNC6(&ctx->lock);

	FUNC9(&ctx->wq);

	return IRQ_HANDLED;
}