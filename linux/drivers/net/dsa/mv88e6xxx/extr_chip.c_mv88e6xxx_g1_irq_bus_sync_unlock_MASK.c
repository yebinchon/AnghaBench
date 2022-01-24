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
struct TYPE_2__ {int masked; int /*<<< orphan*/  nirqs; } ;
struct mv88e6xxx_chip {TYPE_1__ g1_irq; } ;
struct irq_data {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MV88E6XXX_G1_CTL1 ; 
 struct mv88e6xxx_chip* FUNC1 (struct irq_data*) ; 
 int FUNC2 (struct mv88e6xxx_chip*,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (struct mv88e6xxx_chip*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mv88e6xxx_chip*) ; 

__attribute__((used)) static void FUNC5(struct irq_data *d)
{
	struct mv88e6xxx_chip *chip = FUNC1(d);
	u16 mask = FUNC0(chip->g1_irq.nirqs, 0);
	u16 reg;
	int err;

	err = FUNC2(chip, MV88E6XXX_G1_CTL1, &reg);
	if (err)
		goto out;

	reg &= ~mask;
	reg |= (~chip->g1_irq.masked & mask);

	err = FUNC3(chip, MV88E6XXX_G1_CTL1, reg);
	if (err)
		goto out;

out:
	FUNC4(chip);
}