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
struct pcf50633 {int /*<<< orphan*/  lock; TYPE_1__* irq_handler; } ;
struct TYPE_2__ {int /*<<< orphan*/ * handler; } ;

/* Variables and functions */
 int EINVAL ; 
 int PCF50633_NUM_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(struct pcf50633 *pcf, int irq)
{
	if (irq < 0 || irq >= PCF50633_NUM_IRQ)
		return -EINVAL;

	FUNC0(&pcf->lock);
	pcf->irq_handler[irq].handler = NULL;
	FUNC1(&pcf->lock);

	return 0;
}