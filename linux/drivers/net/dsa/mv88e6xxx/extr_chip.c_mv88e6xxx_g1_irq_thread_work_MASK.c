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
struct TYPE_2__ {unsigned int nirqs; int /*<<< orphan*/  domain; } ;
struct mv88e6xxx_chip {TYPE_1__ g1_irq; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  MV88E6XXX_G1_CTL1 ; 
 int /*<<< orphan*/  MV88E6XXX_G1_STS ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC3 (struct mv88e6xxx_chip*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct mv88e6xxx_chip*) ; 
 int /*<<< orphan*/  FUNC5 (struct mv88e6xxx_chip*) ; 

__attribute__((used)) static irqreturn_t FUNC6(struct mv88e6xxx_chip *chip)
{
	unsigned int nhandled = 0;
	unsigned int sub_irq;
	unsigned int n;
	u16 reg;
	u16 ctl1;
	int err;

	FUNC4(chip);
	err = FUNC3(chip, MV88E6XXX_G1_STS, &reg);
	FUNC5(chip);

	if (err)
		goto out;

	do {
		for (n = 0; n < chip->g1_irq.nirqs; ++n) {
			if (reg & (1 << n)) {
				sub_irq = FUNC2(chip->g1_irq.domain,
							   n);
				FUNC1(sub_irq);
				++nhandled;
			}
		}

		FUNC4(chip);
		err = FUNC3(chip, MV88E6XXX_G1_CTL1, &ctl1);
		if (err)
			goto unlock;
		err = FUNC3(chip, MV88E6XXX_G1_STS, &reg);
unlock:
		FUNC5(chip);
		if (err)
			goto out;
		ctl1 &= FUNC0(chip->g1_irq.nirqs, 0);
	} while (reg & ctl1);

out:
	return (nhandled > 0 ? IRQ_HANDLED : IRQ_NONE);
}