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
struct cxl_irq_info {int dummy; } ;
struct cxl_context {int /*<<< orphan*/  pe; } ;
typedef  int irqreturn_t ;

/* Variables and functions */
 int IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int FUNC1 (int,struct cxl_context*,struct cxl_irq_info*) ; 
 int FUNC2 (struct cxl_context*,struct cxl_irq_info*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *data)
{
	struct cxl_context *ctx = data;
	struct cxl_irq_info irq_info;
	int rc;

	FUNC3("%d: received PSL interrupt %i\n", ctx->pe, irq);
	rc = FUNC2(ctx, &irq_info);
	if (rc) {
		FUNC0(1, "Unable to get IRQ info: %i\n", rc);
		return IRQ_HANDLED;
	}

	rc = FUNC1(irq, ctx, &irq_info);
	return rc;
}