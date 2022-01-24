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
struct pm_irq_chip {int /*<<< orphan*/  irqdomain; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 unsigned int FUNC0 (int) ; 
 int PM8821_BLOCKS_PER_MASTER ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static void FUNC6(struct pm_irq_chip *chip,
				     int master, int block)
{
	int pmirq, irq, i, ret;
	unsigned int bits;

	ret = FUNC5(chip->regmap,
			  FUNC1(master, block), &bits);
	if (ret) {
		FUNC4("Reading block %d failed ret=%d", block, ret);
		return;
	}

	/* Convert block offset to global block number */
	block += (master * PM8821_BLOCKS_PER_MASTER) - 1;

	/* Check IRQ bits */
	for (i = 0; i < 8; i++) {
		if (bits & FUNC0(i)) {
			pmirq = block * 8 + i;
			irq = FUNC3(chip->irqdomain, pmirq);
			FUNC2(irq);
		}
	}
}