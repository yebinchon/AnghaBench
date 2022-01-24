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
struct ocxl_context {TYPE_1__* afu; int /*<<< orphan*/  irq_idr; int /*<<< orphan*/  pasid; } ;
struct TYPE_2__ {int /*<<< orphan*/  contexts_lock; int /*<<< orphan*/  contexts_idr; int /*<<< orphan*/  pasid_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ocxl_context*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ocxl_context*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

void FUNC7(struct ocxl_context *ctx)
{
	FUNC3(&ctx->afu->contexts_lock);
	ctx->afu->pasid_count--;
	FUNC1(&ctx->afu->contexts_idr, ctx->pasid);
	FUNC4(&ctx->afu->contexts_lock);

	FUNC5(ctx);
	FUNC0(&ctx->irq_idr);
	/* reference to the AFU taken in ocxl_context_init */
	FUNC6(ctx->afu);
	FUNC2(ctx);
}