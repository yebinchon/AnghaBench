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
struct max8925_chip {int /*<<< orphan*/  dev; scalar_t__ tsc_irq; scalar_t__ core_irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct max8925_chip*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct max8925_chip *chip)
{
	if (chip->core_irq)
		FUNC0(chip->core_irq, chip);
	if (chip->tsc_irq)
		FUNC0(chip->tsc_irq, chip);
	FUNC1(chip->dev);
}