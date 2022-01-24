#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct cxl_context {struct cxl_afu* afu; int /*<<< orphan*/  sstp1; int /*<<< orphan*/  sstp0; scalar_t__ kernel; } ;
struct cxl_afu {TYPE_3__* adapter; } ;
struct TYPE_10__ {scalar_t__ pid; } ;
struct TYPE_9__ {int (* afu_reset ) (struct cxl_afu*) ;} ;
struct TYPE_8__ {TYPE_2__* native; } ;
struct TYPE_7__ {TYPE_1__* sl_ops; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* update_dedicated_ivtes ) (struct cxl_context*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CXL_PSL_AMR_An ; 
 int /*<<< orphan*/  CXL_PSL_PID_TID_An ; 
 int /*<<< orphan*/  CXL_PSL_SR_An ; 
 int /*<<< orphan*/  CXL_PSL_WED_An ; 
 int FUNC0 (struct cxl_afu*) ; 
 int /*<<< orphan*/  FUNC1 (struct cxl_context*) ; 
 TYPE_5__* current ; 
 int /*<<< orphan*/  FUNC2 (struct cxl_context*) ; 
 TYPE_4__* cxl_ops ; 
 int /*<<< orphan*/  FUNC3 (struct cxl_afu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cxl_afu*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct cxl_context*,int) ; 
 int FUNC6 (struct cxl_afu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cxl_context*) ; 
 int FUNC8 (struct cxl_afu*) ; 

int FUNC9(struct cxl_context *ctx, u64 wed, u64 amr)
{
	struct cxl_afu *afu = ctx->afu;
	u64 pid;
	int rc;

	pid = (u64)current->pid << 32;
	if (ctx->kernel)
		pid = 0;
	FUNC4(afu, CXL_PSL_PID_TID_An, pid);

	FUNC3(afu, CXL_PSL_SR_An, FUNC1(ctx));

	if ((rc = FUNC6(afu, ctx->sstp0, ctx->sstp1)))
		return rc;

	FUNC5(ctx, wed);

	if (ctx->afu->adapter->native->sl_ops->update_dedicated_ivtes)
		afu->adapter->native->sl_ops->update_dedicated_ivtes(ctx);

	FUNC4(afu, CXL_PSL_AMR_An, amr);

	/* master only context for dedicated */
	FUNC2(ctx);

	if ((rc = cxl_ops->afu_reset(afu)))
		return rc;

	FUNC4(afu, CXL_PSL_WED_An, wed);

	return FUNC0(afu);
}