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
typedef  int u32 ;
struct mc13xxx {int /*<<< orphan*/  irqs; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 unsigned int MC13XXX_IRQMASK0 ; 
 unsigned int MC13XXX_IRQMASK1 ; 
 unsigned int MC13XXX_IRQSTAT0 ; 
 unsigned int MC13XXX_IRQSTAT1 ; 
 int FUNC1 (struct mc13xxx*,unsigned int,int*) ; 

int FUNC2(struct mc13xxx *mc13xxx, int irq,
		int *enabled, int *pending)
{
	int ret;
	unsigned int offmask = irq < 24 ? MC13XXX_IRQMASK0 : MC13XXX_IRQMASK1;
	unsigned int offstat = irq < 24 ? MC13XXX_IRQSTAT0 : MC13XXX_IRQSTAT1;
	u32 irqbit = 1 << (irq < 24 ? irq : irq - 24);

	if (irq < 0 || irq >= FUNC0(mc13xxx->irqs))
		return -EINVAL;

	if (enabled) {
		u32 mask;

		ret = FUNC1(mc13xxx, offmask, &mask);
		if (ret)
			return ret;

		*enabled = mask & irqbit;
	}

	if (pending) {
		u32 stat;

		ret = FUNC1(mc13xxx, offstat, &stat);
		if (ret)
			return ret;

		*pending = stat & irqbit;
	}

	return 0;
}