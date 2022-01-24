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
typedef  int u8 ;
struct max8998_dev {int* irq_masks_cur; int /*<<< orphan*/  irq; int /*<<< orphan*/  irq_domain; int /*<<< orphan*/  dev; int /*<<< orphan*/  i2c; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int reg; int mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int MAX8998_IRQ_NR ; 
 int MAX8998_NUM_IRQ_REGS ; 
 int /*<<< orphan*/  MAX8998_REG_IRQ1 ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 TYPE_1__* max8998_irqs ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *data)
{
	struct max8998_dev *max8998 = data;
	u8 irq_reg[MAX8998_NUM_IRQ_REGS];
	int ret;
	int i;

	ret = FUNC5(max8998->i2c, MAX8998_REG_IRQ1,
			MAX8998_NUM_IRQ_REGS, irq_reg);
	if (ret < 0) {
		FUNC1(max8998->dev, "Failed to read interrupt register: %d\n",
				ret);
		return IRQ_NONE;
	}

	/* Apply masking */
	for (i = 0; i < MAX8998_NUM_IRQ_REGS; i++)
		irq_reg[i] &= ~max8998->irq_masks_cur[i];

	/* Report */
	for (i = 0; i < MAX8998_IRQ_NR; i++) {
		if (irq_reg[max8998_irqs[i].reg - 1] & max8998_irqs[i].mask) {
			irq = FUNC4(max8998->irq_domain, i);
			if (FUNC0(!irq)) {
				FUNC2(max8998->irq);
				return IRQ_NONE;
			}
			FUNC3(irq);
		}
	}

	return IRQ_HANDLED;
}