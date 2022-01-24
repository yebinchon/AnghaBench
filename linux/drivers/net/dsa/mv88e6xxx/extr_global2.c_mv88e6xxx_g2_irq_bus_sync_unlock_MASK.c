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
struct TYPE_2__ {int /*<<< orphan*/  masked; } ;
struct mv88e6xxx_chip {int /*<<< orphan*/  dev; TYPE_1__ g2_irq; } ;
struct irq_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct mv88e6xxx_chip* FUNC1 (struct irq_data*) ; 
 int FUNC2 (struct mv88e6xxx_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mv88e6xxx_chip*) ; 

__attribute__((used)) static void FUNC4(struct irq_data *d)
{
	struct mv88e6xxx_chip *chip = FUNC1(d);
	int err;

	err = FUNC2(chip, ~chip->g2_irq.masked);
	if (err)
		FUNC0(chip->dev, "failed to mask interrupts\n");

	FUNC3(chip);
}