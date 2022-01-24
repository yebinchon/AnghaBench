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
struct platform_device {int dummy; } ;
struct htcpld_data {struct htcpld_chip* chip; } ;
struct htcpld_chip {unsigned int irq_start; unsigned int nirqs; } ;

/* Variables and functions */
 int IRQ_NOPROBE ; 
 int IRQ_NOREQUEST ; 
 int /*<<< orphan*/  handle_simple_irq ; 
 int /*<<< orphan*/  htcpld_muxed_chip ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,struct htcpld_chip*) ; 
 struct htcpld_data* FUNC3 (struct platform_device*) ; 

__attribute__((used)) static int FUNC4(
		struct platform_device *pdev,
		int chip_index)
{
	struct htcpld_data *htcpld;
	struct htcpld_chip *chip;
	unsigned int irq, irq_end;

	/* Get the platform and driver data */
	htcpld = FUNC3(pdev);
	chip = &htcpld->chip[chip_index];

	/* Setup irq handlers */
	irq_end = chip->irq_start + chip->nirqs;
	for (irq = chip->irq_start; irq < irq_end; irq++) {
		FUNC1(irq, &htcpld_muxed_chip,
					 handle_simple_irq);
		FUNC2(irq, chip);
		FUNC0(irq, IRQ_NOREQUEST | IRQ_NOPROBE);
	}

	return 0;
}