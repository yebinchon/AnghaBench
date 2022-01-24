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
struct TYPE_4__ {int* range; int /*<<< orphan*/ * offset; } ;
struct cxl_context {TYPE_2__ irqs; TYPE_1__* afu; } ;
typedef  int /*<<< orphan*/  irq_hw_number_t ;
struct TYPE_3__ {int /*<<< orphan*/  slice; } ;

/* Variables and functions */
 int CXL_IRQ_RANGES ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct cxl_context *ctx)
{
	irq_hw_number_t hwirq;
	unsigned int virq;
	int r, i;

	FUNC2("Disabling AFU(%d) interrupts\n", ctx->afu->slice);
	for (r = 0; r < CXL_IRQ_RANGES; r++) {
		hwirq = ctx->irqs.offset[r];
		for (i = 0; i < ctx->irqs.range[r]; hwirq++, i++) {
			virq = FUNC1(NULL, hwirq);
			FUNC0(virq);
		}
	}
}