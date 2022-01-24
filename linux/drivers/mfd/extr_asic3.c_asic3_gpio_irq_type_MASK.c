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
typedef  int u16 ;
struct irq_data {int irq; } ;
struct asic3 {int* irq_bothedge; int irq_base; int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; int /*<<< orphan*/  gpio; } ;

/* Variables and functions */
 int ASIC3_GPIO_EDGE_TRIGGER ; 
 int ASIC3_GPIO_LEVEL_TRIGGER ; 
 int ASIC3_GPIO_TRIGGER_TYPE ; 
 unsigned int IRQ_TYPE_EDGE_BOTH ; 
 unsigned int IRQ_TYPE_EDGE_FALLING ; 
 unsigned int IRQ_TYPE_EDGE_RISING ; 
 unsigned int IRQ_TYPE_LEVEL_HIGH ; 
 unsigned int IRQ_TYPE_LEVEL_LOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (struct asic3*,int) ; 
 int FUNC2 (struct asic3*,int) ; 
 int FUNC3 (struct asic3*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct asic3*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 struct asic3* FUNC6 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct irq_data *data, unsigned int type)
{
	struct asic3 *asic = FUNC6(data);
	u32 bank, index;
	u16 trigger, level, edge, bit;
	unsigned long flags;

	bank = FUNC1(asic, data->irq);
	index = FUNC2(asic, data->irq);
	bit = 1<<index;

	FUNC7(&asic->lock, flags);
	level = FUNC3(asic,
				    bank + ASIC3_GPIO_LEVEL_TRIGGER);
	edge = FUNC3(asic,
				   bank + ASIC3_GPIO_EDGE_TRIGGER);
	trigger = FUNC3(asic,
				      bank + ASIC3_GPIO_TRIGGER_TYPE);
	asic->irq_bothedge[(data->irq - asic->irq_base) >> 4] &= ~bit;

	if (type == IRQ_TYPE_EDGE_RISING) {
		trigger |= bit;
		edge |= bit;
	} else if (type == IRQ_TYPE_EDGE_FALLING) {
		trigger |= bit;
		edge &= ~bit;
	} else if (type == IRQ_TYPE_EDGE_BOTH) {
		trigger |= bit;
		if (FUNC0(&asic->gpio, data->irq - asic->irq_base))
			edge &= ~bit;
		else
			edge |= bit;
		asic->irq_bothedge[(data->irq - asic->irq_base) >> 4] |= bit;
	} else if (type == IRQ_TYPE_LEVEL_LOW) {
		trigger &= ~bit;
		level &= ~bit;
	} else if (type == IRQ_TYPE_LEVEL_HIGH) {
		trigger &= ~bit;
		level |= bit;
	} else {
		/*
		 * if type == IRQ_TYPE_NONE, we should mask interrupts, but
		 * be careful to not unmask them if mask was also called.
		 * Probably need internal state for mask.
		 */
		FUNC5(asic->dev, "irq type not changed\n");
	}
	FUNC4(asic, bank + ASIC3_GPIO_LEVEL_TRIGGER,
			     level);
	FUNC4(asic, bank + ASIC3_GPIO_EDGE_TRIGGER,
			     edge);
	FUNC4(asic, bank + ASIC3_GPIO_TRIGGER_TYPE,
			     trigger);
	FUNC8(&asic->lock, flags);
	return 0;
}