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
struct mc13xxx {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq_data; } ;
typedef  int /*<<< orphan*/  irq_handler_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,void*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 

int FUNC2(struct mc13xxx *mc13xxx, int irq,
		irq_handler_t handler, const char *name, void *dev)
{
	int virq = FUNC1(mc13xxx->irq_data, irq);

	return FUNC0(mc13xxx->dev, virq, NULL, handler,
					 IRQF_ONESHOT, name, dev);
}