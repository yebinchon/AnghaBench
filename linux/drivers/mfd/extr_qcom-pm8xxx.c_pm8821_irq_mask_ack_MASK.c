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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PM8821_BLOCKS_PER_MASTER ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 struct pm_irq_chip* FUNC3 (struct irq_data*) ; 
 unsigned int FUNC4 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct irq_data *d)
{
	struct pm_irq_chip *chip = FUNC3(d);
	unsigned int pmirq = FUNC4(d);
	u8 block, master;
	int irq_bit, rc;

	block = pmirq / 8;
	master = block / PM8821_BLOCKS_PER_MASTER;
	irq_bit = pmirq % 8;
	block %= PM8821_BLOCKS_PER_MASTER;

	rc = FUNC6(chip->regmap,
				FUNC2(master, block),
				FUNC0(irq_bit), FUNC0(irq_bit));
	if (rc) {
		FUNC5("Failed to mask IRQ:%d rc=%d\n", pmirq, rc);
		return;
	}

	rc = FUNC6(chip->regmap,
				FUNC1(master, block),
				FUNC0(irq_bit), FUNC0(irq_bit));
	if (rc)
		FUNC5("Failed to CLEAR IRQ:%d rc=%d\n", pmirq, rc);
}