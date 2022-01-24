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
struct da9052 {int /*<<< orphan*/  irq_data; int /*<<< orphan*/  chip_irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  DA9052_IRQ_ADC_EOM ; 
 int /*<<< orphan*/  FUNC0 (struct da9052*,int /*<<< orphan*/ ,struct da9052*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct da9052 *da9052)
{
	FUNC0(da9052, DA9052_IRQ_ADC_EOM, da9052);
	FUNC1(da9052->chip_irq, da9052->irq_data);

	return 0;
}