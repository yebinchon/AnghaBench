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
typedef  int u64 ;
struct cxl_afu {int serr_hwirq; int /*<<< orphan*/ * err_irq_name; int /*<<< orphan*/  serr_virq; int /*<<< orphan*/  adapter; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CXL_PSL_SERR_An ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 (struct cxl_afu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cxl_afu*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cxl_afu*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  native_slice_irq_err ; 

int FUNC8(struct cxl_afu *afu)
{
	u64 serr;
	int rc;

	afu->err_irq_name = FUNC6(GFP_KERNEL, "cxl-%s-err",
				      FUNC5(&afu->dev));
	if (!afu->err_irq_name)
		return -ENOMEM;

	if ((rc = FUNC4(afu->adapter, native_slice_irq_err, afu,
				       &afu->serr_hwirq,
				       &afu->serr_virq, afu->err_irq_name))) {
		FUNC7(afu->err_irq_name);
		afu->err_irq_name = NULL;
		return rc;
	}

	serr = FUNC2(afu, CXL_PSL_SERR_An);
	if (FUNC0())
		serr = (serr & 0x00ffffffffff0000ULL) | (afu->serr_hwirq & 0xffff);
	if (FUNC1()) {
		/*
		 * By default, all errors are masked. So don't set all masks.
		 * Slice errors will be transfered.
		 */
		serr = (serr & ~0xff0000007fffffffULL) | (afu->serr_hwirq & 0xffff);
	}
	FUNC3(afu, CXL_PSL_SERR_An, serr);

	return 0;
}