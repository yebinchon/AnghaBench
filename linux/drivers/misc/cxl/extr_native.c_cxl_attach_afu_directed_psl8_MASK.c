#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct TYPE_16__ {int* range; int /*<<< orphan*/ * offset; } ;
struct cxl_context {TYPE_8__* afu; TYPE_7__* elem; TYPE_5__ irqs; scalar_t__ sstp1; scalar_t__ sstp0; scalar_t__ kernel; } ;
struct TYPE_20__ {int (* afu_check_and_enable ) (TYPE_8__*) ;} ;
struct TYPE_19__ {TYPE_4__* native; } ;
struct TYPE_13__ {void* sstp1; void* sstp0; scalar_t__ aurp1; scalar_t__ aurp0; } ;
struct TYPE_14__ {TYPE_2__ psl8; } ;
struct TYPE_17__ {void* wed; void* amr; TYPE_3__ u; scalar_t__ csrp; void* pid; scalar_t__ tid; } ;
struct TYPE_12__ {void* sdr; } ;
struct TYPE_18__ {TYPE_6__ common; void* sr; TYPE_1__ u; scalar_t__ haurp; void* lpid; scalar_t__ ctxtime; } ;
struct TYPE_15__ {int /*<<< orphan*/  psl_hwirq; } ;
struct TYPE_11__ {scalar_t__ pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPRN_LPID ; 
 int /*<<< orphan*/  SPRN_SDR1 ; 
 int FUNC0 (struct cxl_context*) ; 
 scalar_t__ FUNC1 (struct cxl_context*) ; 
 void* FUNC2 (scalar_t__) ; 
 void* FUNC3 (scalar_t__) ; 
 TYPE_10__* current ; 
 int /*<<< orphan*/  FUNC4 (struct cxl_context*) ; 
 TYPE_9__* cxl_ops ; 
 int /*<<< orphan*/  FUNC5 (struct cxl_context*,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC8 (struct cxl_context*) ; 

int FUNC9(struct cxl_context *ctx, u64 wed, u64 amr)
{
	u32 pid;
	int result;

	FUNC4(ctx);

	ctx->elem->ctxtime = 0; /* disable */
	ctx->elem->lpid = FUNC2(FUNC6(SPRN_LPID));
	ctx->elem->haurp = 0; /* disable */
	ctx->elem->u.sdr = FUNC3(FUNC6(SPRN_SDR1));

	pid = current->pid;
	if (ctx->kernel)
		pid = 0;
	ctx->elem->common.tid = 0;
	ctx->elem->common.pid = FUNC2(pid);

	ctx->elem->sr = FUNC3(FUNC1(ctx));

	ctx->elem->common.csrp = 0; /* disable */
	ctx->elem->common.u.psl8.aurp0 = 0; /* disable */
	ctx->elem->common.u.psl8.aurp1 = 0; /* disable */

	FUNC5(ctx, wed);

	ctx->elem->common.u.psl8.sstp0 = FUNC3(ctx->sstp0);
	ctx->elem->common.u.psl8.sstp1 = FUNC3(ctx->sstp1);

	/*
	 * Ensure we have the multiplexed PSL interrupt set up to take faults
	 * for kernel contexts that may not have allocated any AFU IRQs at all:
	 */
	if (ctx->irqs.range[0] == 0) {
		ctx->irqs.offset[0] = ctx->afu->native->psl_hwirq;
		ctx->irqs.range[0] = 1;
	}

	FUNC8(ctx);

	ctx->elem->common.amr = FUNC3(amr);
	ctx->elem->common.wed = FUNC3(wed);

	/* first guy needs to enable */
	if ((result = cxl_ops->afu_check_and_enable(ctx->afu)))
		return result;

	return FUNC0(ctx);
}