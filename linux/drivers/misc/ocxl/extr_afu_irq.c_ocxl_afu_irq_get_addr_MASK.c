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
typedef  int /*<<< orphan*/  u64 ;
struct ocxl_context {int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  irq_idr; } ;
struct afu_irq {int /*<<< orphan*/  trigger_page; } ;

/* Variables and functions */
 struct afu_irq* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

u64 FUNC3(struct ocxl_context *ctx, int irq_id)
{
	struct afu_irq *irq;
	u64 addr = 0;

	FUNC1(&ctx->irq_lock);
	irq = FUNC0(&ctx->irq_idr, irq_id);
	if (irq)
		addr = irq->trigger_page;
	FUNC2(&ctx->irq_lock);
	return addr;
}