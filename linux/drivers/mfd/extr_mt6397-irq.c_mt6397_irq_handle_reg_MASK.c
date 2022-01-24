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
struct mt6397_chip {int /*<<< orphan*/  regmap; int /*<<< orphan*/  irq_domain; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,unsigned int) ; 

__attribute__((used)) static void FUNC6(struct mt6397_chip *mt6397, int reg,
				  int irqbase)
{
	unsigned int status;
	int i, irq, ret;

	ret = FUNC4(mt6397->regmap, reg, &status);
	if (ret) {
		FUNC1(mt6397->dev, "Failed to read irq status: %d\n", ret);
		return;
	}

	for (i = 0; i < 16; i++) {
		if (status & FUNC0(i)) {
			irq = FUNC3(mt6397->irq_domain, irqbase + i);
			if (irq)
				FUNC2(irq);
		}
	}

	FUNC5(mt6397->regmap, reg, status);
}