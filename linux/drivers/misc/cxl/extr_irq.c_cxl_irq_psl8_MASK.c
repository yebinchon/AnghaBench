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
typedef  int u64 ;
struct cxl_irq_info {int dsisr; int dar; int /*<<< orphan*/  afu_err; int /*<<< orphan*/  errstat; } ;
struct cxl_context {int pending_afu_err; int /*<<< orphan*/  wq; int /*<<< orphan*/  lock; int /*<<< orphan*/  afu_err; int /*<<< orphan*/  pe; TYPE_1__* afu; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {int /*<<< orphan*/  (* ack_irq ) (struct cxl_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* handle_psl_slice_error ) (struct cxl_context*,int,int /*<<< orphan*/ ) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int CXL_PSL_DSISR_An_A ; 
 int CXL_PSL_DSISR_An_AE ; 
 int CXL_PSL_DSISR_An_DM ; 
 int CXL_PSL_DSISR_An_DS ; 
 int CXL_PSL_DSISR_An_K ; 
 int CXL_PSL_DSISR_An_M ; 
 int CXL_PSL_DSISR_An_OC ; 
 int CXL_PSL_DSISR_An_P ; 
 int CXL_PSL_DSISR_An_PE ; 
 int CXL_PSL_DSISR_An_S ; 
 int CXL_PSL_DSISR_An_ST ; 
 int CXL_PSL_DSISR_An_UR ; 
 int /*<<< orphan*/  CXL_PSL_TFC_An_A ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 TYPE_2__* cxl_ops ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct cxl_context*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct cxl_context*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cxl_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct cxl_context*,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

irqreturn_t FUNC10(int irq, struct cxl_context *ctx, struct cxl_irq_info *irq_info)
{
	u64 dsisr, dar;

	dsisr = irq_info->dsisr;
	dar = irq_info->dar;

	FUNC8(ctx, irq, dsisr, dar);

	FUNC2("CXL interrupt %i for afu pe: %i DSISR: %#llx DAR: %#llx\n", irq, ctx->pe, dsisr, dar);

	if (dsisr & CXL_PSL_DSISR_An_DS) {
		/*
		 * We don't inherently need to sleep to handle this, but we do
		 * need to get a ref to the task's mm, which we can't do from
		 * irq context without the potential for a deadlock since it
		 * takes the task_lock. An alternate option would be to keep a
		 * reference to the task's mm the entire time it has cxl open,
		 * but to do that we need to solve the issue where we hold a
		 * ref to the mm, but the mm can hold a ref to the fd after an
		 * mmap preventing anything from being cleaned up.
		 */
		FUNC2("Scheduling segment miss handling for later pe: %i\n", ctx->pe);
		return FUNC3(ctx, dsisr, dar);
	}

	if (dsisr & CXL_PSL_DSISR_An_M)
		FUNC2("CXL interrupt: PTE not found\n");
	if (dsisr & CXL_PSL_DSISR_An_P)
		FUNC2("CXL interrupt: Storage protection violation\n");
	if (dsisr & CXL_PSL_DSISR_An_A)
		FUNC2("CXL interrupt: AFU lock access to write through or cache inhibited storage\n");
	if (dsisr & CXL_PSL_DSISR_An_S)
		FUNC2("CXL interrupt: Access was afu_wr or afu_zero\n");
	if (dsisr & CXL_PSL_DSISR_An_K)
		FUNC2("CXL interrupt: Access not permitted by virtual page class key protection\n");

	if (dsisr & CXL_PSL_DSISR_An_DM) {
		/*
		 * In some cases we might be able to handle the fault
		 * immediately if hash_page would succeed, but we still need
		 * the task's mm, which as above we can't get without a lock
		 */
		FUNC2("Scheduling page fault handling for later pe: %i\n", ctx->pe);
		return FUNC3(ctx, dsisr, dar);
	}
	if (dsisr & CXL_PSL_DSISR_An_ST)
		FUNC0(1, "CXL interrupt: Segment Table PTE not found\n");
	if (dsisr & CXL_PSL_DSISR_An_UR)
		FUNC2("CXL interrupt: AURP PTE not found\n");
	if (dsisr & CXL_PSL_DSISR_An_PE)
		return cxl_ops->handle_psl_slice_error(ctx, dsisr,
						irq_info->errstat);
	if (dsisr & CXL_PSL_DSISR_An_AE) {
		FUNC2("CXL interrupt: AFU Error 0x%016llx\n", irq_info->afu_err);

		if (ctx->pending_afu_err) {
			/*
			 * This shouldn't happen - the PSL treats these errors
			 * as fatal and will have reset the AFU, so there's not
			 * much point buffering multiple AFU errors.
			 * OTOH if we DO ever see a storm of these come in it's
			 * probably best that we log them somewhere:
			 */
			FUNC1(&ctx->afu->dev, "CXL AFU Error "
					    "undelivered to pe %i: 0x%016llx\n",
					    ctx->pe, irq_info->afu_err);
		} else {
			FUNC4(&ctx->lock);
			ctx->afu_err = irq_info->afu_err;
			ctx->pending_afu_err = true;
			FUNC5(&ctx->lock);

			FUNC9(&ctx->wq);
		}

		cxl_ops->ack_irq(ctx, CXL_PSL_TFC_An_A, 0);
		return IRQ_HANDLED;
	}
	if (dsisr & CXL_PSL_DSISR_An_OC)
		FUNC2("CXL interrupt: OS Context Warning\n");

	FUNC0(1, "Unhandled CXL PSL IRQ\n");
	return IRQ_HANDLED;
}