#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ocxl_context {int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  irq_idr; } ;
struct afu_irq {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct afu_irq*,struct ocxl_context*) ; 
 struct afu_irq* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct ocxl_context *ctx, int irq_id)
{
	struct afu_irq *irq;

	FUNC3(&ctx->irq_lock);

	irq = FUNC1(&ctx->irq_idr, irq_id);
	if (!irq) {
		FUNC4(&ctx->irq_lock);
		return -EINVAL;
	}
	FUNC2(&ctx->irq_idr, irq->id);
	FUNC0(irq, ctx);
	FUNC4(&ctx->irq_lock);
	return 0;
}