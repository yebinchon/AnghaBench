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
typedef  int u16 ;
struct TYPE_2__ {int /*<<< orphan*/  domain; } ;
struct mv88e6xxx_chip {TYPE_1__ g2_irq; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC2 (struct mv88e6xxx_chip*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct mv88e6xxx_chip*) ; 
 int /*<<< orphan*/  FUNC4 (struct mv88e6xxx_chip*) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct mv88e6xxx_chip *chip = dev_id;
	unsigned int nhandled = 0;
	unsigned int sub_irq;
	unsigned int n;
	int err;
	u16 reg;

	FUNC3(chip);
	err = FUNC2(chip, &reg);
	FUNC4(chip);
	if (err)
		goto out;

	for (n = 0; n < 16; ++n) {
		if (reg & (1 << n)) {
			sub_irq = FUNC1(chip->g2_irq.domain, n);
			FUNC0(sub_irq);
			++nhandled;
		}
	}
out:
	return (nhandled > 0 ? IRQ_HANDLED : IRQ_NONE);
}