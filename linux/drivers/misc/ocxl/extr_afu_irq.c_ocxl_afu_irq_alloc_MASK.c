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
struct ocxl_context {int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  irq_idr; TYPE_2__* afu; int /*<<< orphan*/  pasid; } ;
struct afu_irq {int id; int /*<<< orphan*/  hw_irq; int /*<<< orphan*/  virq; int /*<<< orphan*/  trigger_page; } ;
struct TYPE_4__ {TYPE_1__* fn; } ;
struct TYPE_3__ {int /*<<< orphan*/  link; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MAX_IRQ_PER_CONTEXT ; 
 int FUNC0 (int /*<<< orphan*/ *,struct afu_irq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct afu_irq*) ; 
 struct afu_irq* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct ocxl_context*,struct afu_irq*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC10(struct ocxl_context *ctx, int *irq_id)
{
	struct afu_irq *irq;
	int rc;

	irq = FUNC3(sizeof(struct afu_irq), GFP_KERNEL);
	if (!irq)
		return -ENOMEM;

	/*
	 * We limit the number of afu irqs per context and per link to
	 * avoid a single process or user depleting the pool of IPIs
	 */

	FUNC4(&ctx->irq_lock);

	irq->id = FUNC0(&ctx->irq_idr, irq, 0, MAX_IRQ_PER_CONTEXT,
			GFP_KERNEL);
	if (irq->id < 0) {
		rc = -ENOSPC;
		goto err_unlock;
	}

	rc = FUNC7(ctx->afu->fn->link, &irq->hw_irq,
				&irq->trigger_page);
	if (rc)
		goto err_idr;

	rc = FUNC8(ctx, irq);
	if (rc)
		goto err_alloc;

	FUNC9(ctx->pasid, irq->id, irq->virq, irq->hw_irq);
	FUNC5(&ctx->irq_lock);

	*irq_id = irq->id;

	return 0;

err_alloc:
	FUNC6(ctx->afu->fn->link, irq->hw_irq);
err_idr:
	FUNC1(&ctx->irq_idr, irq->id);
err_unlock:
	FUNC5(&ctx->irq_lock);
	FUNC2(irq);
	return rc;
}