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
struct ocxl_context {int dummy; } ;
struct afu_irq {int /*<<< orphan*/  virq; int /*<<< orphan*/ * name; int /*<<< orphan*/  hw_irq; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  afu_irq_handler ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct afu_irq*) ; 

__attribute__((used)) static int FUNC7(struct ocxl_context *ctx, struct afu_irq *irq)
{
	int rc;

	irq->virq = FUNC0(NULL, irq->hw_irq);
	if (!irq->virq) {
		FUNC5("irq_create_mapping failed\n");
		return -ENOMEM;
	}
	FUNC4("hw_irq %d mapped to virq %u\n", irq->hw_irq, irq->virq);

	irq->name = FUNC2(GFP_KERNEL, "ocxl-afu-%u", irq->virq);
	if (!irq->name) {
		FUNC1(irq->virq);
		return -ENOMEM;
	}

	rc = FUNC6(irq->virq, afu_irq_handler, 0, irq->name, irq);
	if (rc) {
		FUNC3(irq->name);
		irq->name = NULL;
		FUNC1(irq->virq);
		FUNC5("request_irq failed: %d\n", rc);
		return rc;
	}
	return 0;
}