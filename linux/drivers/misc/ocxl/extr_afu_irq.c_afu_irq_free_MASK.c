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
struct ocxl_context {TYPE_2__* afu; scalar_t__ mapping; int /*<<< orphan*/  pasid; } ;
struct afu_irq {int /*<<< orphan*/  hw_irq; int /*<<< orphan*/  private; int /*<<< orphan*/  (* free_private ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  id; } ;
struct TYPE_4__ {TYPE_1__* fn; } ;
struct TYPE_3__ {int /*<<< orphan*/  link; } ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct afu_irq*) ; 
 int /*<<< orphan*/  FUNC1 (struct ocxl_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct afu_irq*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC7(struct afu_irq *irq, struct ocxl_context *ctx)
{
	FUNC5(ctx->pasid, irq->id);
	if (ctx->mapping)
		FUNC6(ctx->mapping,
				FUNC1(ctx, irq->id),
				1 << PAGE_SHIFT, 1);
	FUNC3(irq);
	if (irq->free_private)
		irq->free_private(irq->private);
	FUNC2(ctx->afu->fn->link, irq->hw_irq);
	FUNC0(irq);
}