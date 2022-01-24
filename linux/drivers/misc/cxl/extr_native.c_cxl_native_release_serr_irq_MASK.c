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
struct cxl_afu {scalar_t__ serr_virq; int /*<<< orphan*/  err_irq_name; int /*<<< orphan*/  serr_hwirq; int /*<<< orphan*/  adapter; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* release_one_irq ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CXL_PSL_SERR_An ; 
 TYPE_1__* cxl_ops ; 
 int /*<<< orphan*/  FUNC0 (struct cxl_afu*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct cxl_afu*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct cxl_afu *afu)
{
	if (afu->serr_virq == 0 ||
	    afu->serr_virq != FUNC2(NULL, afu->serr_hwirq))
		return;

	FUNC0(afu, CXL_PSL_SERR_An, 0x0000000000000000);
	FUNC1(afu->serr_virq, afu);
	cxl_ops->release_one_irq(afu->adapter, afu->serr_hwirq);
	FUNC3(afu->err_irq_name);
	afu->serr_virq = 0;
}