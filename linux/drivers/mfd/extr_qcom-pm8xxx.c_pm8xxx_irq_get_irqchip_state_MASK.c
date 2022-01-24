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
typedef  unsigned int u8 ;
struct pm_irq_chip {int /*<<< orphan*/  pm_irq_lock; int /*<<< orphan*/  regmap; } ;
struct irq_data {int dummy; } ;
typedef  enum irqchip_irq_state { ____Placeholder_irqchip_irq_state } irqchip_irq_state ;

/* Variables and functions */
 unsigned int FUNC0 (int) ; 
 int EINVAL ; 
 int IRQCHIP_STATE_LINE_LEVEL ; 
 int /*<<< orphan*/  SSBI_REG_ADDR_IRQ_BLK_SEL ; 
 int /*<<< orphan*/  SSBI_REG_ADDR_IRQ_RT_STATUS ; 
 struct pm_irq_chip* FUNC1 (struct irq_data*) ; 
 unsigned int FUNC2 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,...) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct irq_data *d,
					enum irqchip_irq_state which,
					bool *state)
{
	struct pm_irq_chip *chip = FUNC1(d);
	unsigned int pmirq = FUNC2(d);
	unsigned int bits;
	int irq_bit;
	u8 block;
	int rc;

	if (which != IRQCHIP_STATE_LINE_LEVEL)
		return -EINVAL;

	block = pmirq / 8;
	irq_bit = pmirq % 8;

	FUNC6(&chip->pm_irq_lock);
	rc = FUNC5(chip->regmap, SSBI_REG_ADDR_IRQ_BLK_SEL, block);
	if (rc) {
		FUNC3("Failed Selecting Block %d rc=%d\n", block, rc);
		goto bail;
	}

	rc = FUNC4(chip->regmap, SSBI_REG_ADDR_IRQ_RT_STATUS, &bits);
	if (rc) {
		FUNC3("Failed Reading Status rc=%d\n", rc);
		goto bail;
	}

	*state = !!(bits & FUNC0(irq_bit));
bail:
	FUNC7(&chip->pm_irq_lock);

	return rc;
}