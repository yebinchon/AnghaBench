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
struct cxl_afu {int /*<<< orphan*/ * err_irq_name; int /*<<< orphan*/  serr_hwirq; int /*<<< orphan*/  adapter; int /*<<< orphan*/  serr_virq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cxl_afu*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  guest_slice_irq_err ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct cxl_afu *afu)
{
	afu->err_irq_name = FUNC2(GFP_KERNEL, "cxl-%s-err",
				      FUNC1(&afu->dev));
	if (!afu->err_irq_name)
		return -ENOMEM;

	if (!(afu->serr_virq = FUNC0(afu->adapter, afu->serr_hwirq,
				 guest_slice_irq_err, afu, afu->err_irq_name))) {
		FUNC3(afu->err_irq_name);
		afu->err_irq_name = NULL;
		return -ENOMEM;
	}

	return 0;
}