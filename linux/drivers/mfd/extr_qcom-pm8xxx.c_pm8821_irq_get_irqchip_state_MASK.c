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
typedef  int u8 ;
struct pm_irq_chip {int /*<<< orphan*/  regmap; } ;
struct irq_data {int dummy; } ;
typedef  enum irqchip_irq_state { ____Placeholder_irqchip_irq_state } irqchip_irq_state ;

/* Variables and functions */
 unsigned int FUNC0 (int) ; 
 int PM8821_BLOCKS_PER_MASTER ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 struct pm_irq_chip* FUNC2 (struct irq_data*) ; 
 int FUNC3 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static int FUNC6(struct irq_data *d,
					enum irqchip_irq_state which,
					bool *state)
{
	struct pm_irq_chip *chip = FUNC2(d);
	int rc, pmirq = FUNC3(d);
	u8 block, irq_bit, master;
	unsigned int bits;

	block = pmirq / 8;
	master = block / PM8821_BLOCKS_PER_MASTER;
	irq_bit = pmirq % 8;
	block %= PM8821_BLOCKS_PER_MASTER;

	rc = FUNC5(chip->regmap,
		FUNC1(master, block), &bits);
	if (rc) {
		FUNC4("Reading Status of IRQ %d failed rc=%d\n", pmirq, rc);
		return rc;
	}

	*state = !!(bits & FUNC0(irq_bit));

	return rc;
}