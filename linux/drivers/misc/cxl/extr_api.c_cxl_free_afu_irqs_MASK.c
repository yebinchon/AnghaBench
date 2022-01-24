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
struct cxl_context {TYPE_1__* afu; int /*<<< orphan*/  irqs; } ;
typedef  scalar_t__ irq_hw_number_t ;
struct TYPE_4__ {int /*<<< orphan*/  (* release_irq_ranges ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_FTR_HVMODE ; 
 int /*<<< orphan*/  FUNC0 (struct cxl_context*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct cxl_context*,int /*<<< orphan*/ ) ; 
 TYPE_2__* cxl_ops ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,struct cxl_context*) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC6(struct cxl_context *ctx)
{
	irq_hw_number_t hwirq;
	unsigned int virq;

	if (!FUNC1(CPU_FTR_HVMODE)) {
		hwirq = FUNC2(ctx, 0);
		if (hwirq) {
			virq = FUNC4(NULL, hwirq);
			if (virq)
				FUNC3(virq, ctx);
		}
	}
	FUNC0(ctx);
	cxl_ops->release_irq_ranges(&ctx->irqs, ctx->afu->adapter);
}