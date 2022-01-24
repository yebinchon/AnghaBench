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
struct cxl_context {scalar_t__ status; TYPE_1__* afu; } ;
typedef  scalar_t__ irq_hw_number_t ;
struct TYPE_4__ {int /*<<< orphan*/  (* update_ivtes ) (struct cxl_context*) ;int /*<<< orphan*/  psl_interrupt; } ;
struct TYPE_3__ {int pp_irqs; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_FTR_HVMODE ; 
 scalar_t__ STARTED ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (struct cxl_context*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct cxl_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,struct cxl_context*,char*) ; 
 TYPE_2__* cxl_ops ; 
 int /*<<< orphan*/  FUNC5 (struct cxl_context*) ; 

int FUNC6(struct cxl_context *ctx, int num)
{
	int res;
	irq_hw_number_t hwirq;

	if (num == 0)
		num = ctx->afu->pp_irqs;
	res = FUNC1(ctx, num);
	if (res)
		return res;

	if (!FUNC2(CPU_FTR_HVMODE)) {
		/* In a guest, the PSL interrupt is not multiplexed. It was
		 * allocated above, and we need to set its handler
		 */
		hwirq = FUNC3(ctx, 0);
		if (hwirq)
			FUNC4(ctx->afu->adapter, hwirq, cxl_ops->psl_interrupt, ctx, "psl");
	}

	if (ctx->status == STARTED) {
		if (cxl_ops->update_ivtes)
			cxl_ops->update_ivtes(ctx);
		else FUNC0(1, "BUG: cxl_allocate_afu_irqs must be called prior to starting the context on this platform\n");
	}

	return res;
}