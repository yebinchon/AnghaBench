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
struct cxl_context {int dummy; } ;
typedef  int /*<<< orphan*/  irq_hw_number_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cxl_context*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,void*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC3(struct cxl_context *ctx, int num, void *cookie)
{
	irq_hw_number_t hwirq;
	unsigned int virq;

	hwirq = FUNC0(ctx, num);
	if (!hwirq)
		return;

	virq = FUNC2(NULL, hwirq);
	if (virq)
		FUNC1(virq, cookie);
}