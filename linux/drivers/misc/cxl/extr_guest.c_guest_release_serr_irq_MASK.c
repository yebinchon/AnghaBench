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
struct cxl_afu {int /*<<< orphan*/  err_irq_name; int /*<<< orphan*/  serr_hwirq; int /*<<< orphan*/  adapter; int /*<<< orphan*/  serr_virq; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* release_one_irq ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 TYPE_1__* cxl_ops ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct cxl_afu*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct cxl_afu *afu)
{
	FUNC0(afu->serr_virq, afu);
	cxl_ops->release_one_irq(afu->adapter, afu->serr_hwirq);
	FUNC1(afu->err_irq_name);
}