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
struct pm_irq_chip {int /*<<< orphan*/  irqdomain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct pm_irq_chip*,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,...) ; 

__attribute__((used)) static int FUNC4(struct pm_irq_chip *chip, int block)
{
	int pmirq, irq, i, ret = 0;
	unsigned int bits;

	ret = FUNC2(chip, block, &bits);
	if (ret) {
		FUNC3("Failed reading %d block ret=%d", block, ret);
		return ret;
	}
	if (!bits) {
		FUNC3("block bit set in master but no irqs: %d", block);
		return 0;
	}

	/* Check IRQ bits */
	for (i = 0; i < 8; i++) {
		if (bits & (1 << i)) {
			pmirq = block * 8 + i;
			irq = FUNC1(chip->irqdomain, pmirq);
			FUNC0(irq);
		}
	}
	return 0;
}