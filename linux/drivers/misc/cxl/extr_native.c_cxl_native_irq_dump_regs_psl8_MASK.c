#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct cxl_context {TYPE_3__* afu; } ;
struct TYPE_9__ {TYPE_2__* native; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; TYPE_4__* adapter; } ;
struct TYPE_7__ {TYPE_1__* sl_ops; } ;
struct TYPE_6__ {scalar_t__ register_serr_irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  CXL_AFU_DEBUG_An ; 
 int /*<<< orphan*/  CXL_PSL_FIR1 ; 
 int /*<<< orphan*/  CXL_PSL_FIR2 ; 
 int /*<<< orphan*/  CXL_PSL_FIR_SLICE_An ; 
 int /*<<< orphan*/  CXL_PSL_SERR_An ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

void FUNC4(struct cxl_context *ctx)
{
	u64 fir1, fir2, fir_slice, serr, afu_debug;

	fir1 = FUNC1(ctx->afu->adapter, CXL_PSL_FIR1);
	fir2 = FUNC1(ctx->afu->adapter, CXL_PSL_FIR2);
	fir_slice = FUNC2(ctx->afu, CXL_PSL_FIR_SLICE_An);
	afu_debug = FUNC2(ctx->afu, CXL_AFU_DEBUG_An);

	FUNC3(&ctx->afu->dev, "PSL_FIR1: 0x%016llx\n", fir1);
	FUNC3(&ctx->afu->dev, "PSL_FIR2: 0x%016llx\n", fir2);
	if (ctx->afu->adapter->native->sl_ops->register_serr_irq) {
		serr = FUNC2(ctx->afu, CXL_PSL_SERR_An);
		FUNC0(ctx->afu, serr);
	}
	FUNC3(&ctx->afu->dev, "PSL_FIR_SLICE_An: 0x%016llx\n", fir_slice);
	FUNC3(&ctx->afu->dev, "CXL_PSL_AFU_DEBUG_An: 0x%016llx\n", afu_debug);
}