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
struct ocxl_link {int /*<<< orphan*/  irq_available; } ;

/* Variables and functions */
 int ENOSPC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int*,int /*<<< orphan*/ *) ; 

int FUNC3(void *link_handle, int *hw_irq, u64 *trigger_addr)
{
	struct ocxl_link *link = (struct ocxl_link *) link_handle;
	int rc, irq;
	u64 addr;

	if (FUNC0(&link->irq_available) < 0)
		return -ENOSPC;

	rc = FUNC2(&irq, &addr);
	if (rc) {
		FUNC1(&link->irq_available);
		return rc;
	}

	*hw_irq = irq;
	*trigger_addr = addr;
	return 0;
}