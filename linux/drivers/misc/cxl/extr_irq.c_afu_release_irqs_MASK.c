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
struct TYPE_5__ {int* range; int /*<<< orphan*/ * offset; } ;
struct cxl_context {scalar_t__ irq_count; TYPE_1__* afu; TYPE_2__ irqs; } ;
typedef  int /*<<< orphan*/  irq_hw_number_t ;
struct TYPE_6__ {int /*<<< orphan*/  (* release_irq_ranges ) (TYPE_2__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int CXL_IRQ_RANGES ; 
 int /*<<< orphan*/  FUNC0 (struct cxl_context*) ; 
 int FUNC1 () ; 
 TYPE_3__* cxl_ops ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,void*) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 

void FUNC5(struct cxl_context *ctx, void *cookie)
{
	irq_hw_number_t hwirq;
	unsigned int virq;
	int r, i;

	for (r = FUNC1(); r < CXL_IRQ_RANGES; r++) {
		hwirq = ctx->irqs.offset[r];
		for (i = 0; i < ctx->irqs.range[r]; hwirq++, i++) {
			virq = FUNC3(NULL, hwirq);
			if (virq)
				FUNC2(virq, cookie);
		}
	}

	FUNC0(ctx);
	cxl_ops->release_irq_ranges(&ctx->irqs, ctx->afu->adapter);

	ctx->irq_count = 0;
}