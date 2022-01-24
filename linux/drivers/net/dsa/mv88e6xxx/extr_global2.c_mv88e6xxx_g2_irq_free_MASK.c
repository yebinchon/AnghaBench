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
struct TYPE_2__ {int /*<<< orphan*/  domain; } ;
struct mv88e6xxx_chip {int device_irq; TYPE_1__ g2_irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct mv88e6xxx_chip*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mv88e6xxx_chip*) ; 

void FUNC5(struct mv88e6xxx_chip *chip)
{
	int irq, virq;

	FUNC4(chip);

	FUNC0(chip->device_irq, chip);
	FUNC1(chip->device_irq);

	for (irq = 0; irq < 16; irq++) {
		virq = FUNC3(chip->g2_irq.domain, irq);
		FUNC1(virq);
	}

	FUNC2(chip->g2_irq.domain);
}