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
struct cxl_context {int /*<<< orphan*/  rcu; TYPE_1__* afu; int /*<<< orphan*/  pe; scalar_t__ mapping; scalar_t__ kernelapi; } ;
struct TYPE_2__ {int /*<<< orphan*/  contexts_lock; int /*<<< orphan*/  contexts_idr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cxl_context*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  reclaim_ctx ; 

void FUNC5(struct cxl_context *ctx)
{
	if (ctx->kernelapi && ctx->mapping)
		FUNC1(ctx);
	FUNC3(&ctx->afu->contexts_lock);
	FUNC2(&ctx->afu->contexts_idr, ctx->pe);
	FUNC4(&ctx->afu->contexts_lock);
	FUNC0(&ctx->rcu, reclaim_ctx);
}