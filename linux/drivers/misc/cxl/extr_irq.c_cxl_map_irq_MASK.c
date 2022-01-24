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
struct cxl {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irq_hw_number_t ;
typedef  int /*<<< orphan*/  irq_handler_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* setup_irq ) (struct cxl*,int /*<<< orphan*/ ,unsigned int) ;} ;

/* Variables and functions */
 TYPE_1__* cxl_ops ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC3 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct cxl*,int /*<<< orphan*/ ,unsigned int) ; 

unsigned int FUNC5(struct cxl *adapter, irq_hw_number_t hwirq,
			 irq_handler_t handler, void *cookie, const char *name)
{
	unsigned int virq;
	int result;

	/* IRQ Domain? */
	virq = FUNC1(NULL, hwirq);
	if (!virq) {
		FUNC0(&adapter->dev, "cxl_map_irq: irq_create_mapping failed\n");
		return 0;
	}

	if (cxl_ops->setup_irq)
		cxl_ops->setup_irq(adapter, hwirq, virq);

	FUNC2("hwirq %#lx mapped to virq %u\n", hwirq, virq);

	result = FUNC3(virq, handler, 0, name, cookie);
	if (result) {
		FUNC0(&adapter->dev, "cxl_map_irq: request_irq failed: %i\n", result);
		return 0;
	}

	return virq;
}