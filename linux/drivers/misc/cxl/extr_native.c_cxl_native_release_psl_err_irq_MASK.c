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
struct cxl {TYPE_1__* native; int /*<<< orphan*/  irq_name; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* release_one_irq ) (struct cxl*,int /*<<< orphan*/ ) ;} ;
struct TYPE_3__ {scalar_t__ err_virq; int /*<<< orphan*/  err_hwirq; } ;

/* Variables and functions */
 int /*<<< orphan*/  CXL_PSL_ErrIVTE ; 
 TYPE_2__* cxl_ops ; 
 int /*<<< orphan*/  FUNC0 (struct cxl*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct cxl*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cxl*,int /*<<< orphan*/ ) ; 

void FUNC5(struct cxl *adapter)
{
	if (adapter->native->err_virq == 0 ||
	    adapter->native->err_virq !=
	    FUNC2(NULL, adapter->native->err_hwirq))
		return;

	FUNC0(adapter, CXL_PSL_ErrIVTE, 0x0000000000000000);
	FUNC1(adapter->native->err_virq, adapter);
	cxl_ops->release_one_irq(adapter, adapter->native->err_hwirq);
	FUNC3(adapter->irq_name);
	adapter->native->err_virq = 0;
}