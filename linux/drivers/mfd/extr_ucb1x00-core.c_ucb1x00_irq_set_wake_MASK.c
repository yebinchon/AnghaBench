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
struct ucb1x00_plat_data {int /*<<< orphan*/  can_wakeup; } ;
struct ucb1x00 {int irq_base; unsigned int irq_wake; int /*<<< orphan*/  irq_lock; TYPE_2__* mcp; } ;
struct irq_data {int irq; } ;
struct TYPE_3__ {struct ucb1x00_plat_data* platform_data; } ;
struct TYPE_4__ {TYPE_1__ attached_device; } ;

/* Variables and functions */
 int EINVAL ; 
 struct ucb1x00* FUNC0 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct irq_data *data, unsigned int on)
{
	struct ucb1x00 *ucb = FUNC0(data);
	struct ucb1x00_plat_data *pdata = ucb->mcp->attached_device.platform_data;
	unsigned mask = 1 << (data->irq - ucb->irq_base);

	if (!pdata || !pdata->can_wakeup)
		return -EINVAL;

	FUNC1(&ucb->irq_lock);
	if (on)
		ucb->irq_wake |= mask;
	else
		ucb->irq_wake &= ~mask;
	FUNC2(&ucb->irq_lock);

	return 0;
}