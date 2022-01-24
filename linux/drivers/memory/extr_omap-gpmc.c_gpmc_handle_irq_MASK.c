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
typedef  int u32 ;
struct gpmc_device {int nirqs; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  GPMC_IRQSTATUS ; 
 int GPMC_NR_NAND_IRQS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  gpmc_irq_domain ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *data)
{
	int hwirq, virq;
	u32 regval, regvalx;
	struct gpmc_device *gpmc = data;

	regval = FUNC3(GPMC_IRQSTATUS);
	regvalx = regval;

	if (!regval)
		return IRQ_NONE;

	for (hwirq = 0; hwirq < gpmc->nirqs; hwirq++) {
		/* skip reserved status bits */
		if (hwirq == GPMC_NR_NAND_IRQS)
			regvalx >>= 8 - GPMC_NR_NAND_IRQS;

		if (regvalx & FUNC0(hwirq)) {
			virq = FUNC5(gpmc_irq_domain, hwirq);
			if (!virq) {
				FUNC1(gpmc->dev,
					 "spurious irq detected hwirq %d, virq %d\n",
					 hwirq, virq);
			}

			FUNC2(virq);
		}
	}

	FUNC4(GPMC_IRQSTATUS, regval);

	return IRQ_HANDLED;
}