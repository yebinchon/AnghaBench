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
typedef  int u32 ;
struct irq_desc {int dummy; } ;
struct irq_data {TYPE_1__* chip; } ;
struct asic3 {unsigned int irq_base; int* irq_bothedge; int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* irq_ack ) (struct irq_data*) ;} ;

/* Variables and functions */
 int ASIC3_GPIOS_PER_BANK ; 
 int ASIC3_GPIO_A_BASE ; 
 int ASIC3_GPIO_BASE_INCR ; 
 scalar_t__ ASIC3_GPIO_INT_STATUS ; 
 int ASIC3_NR_IRQS ; 
 int ASIC3_NUM_GPIOS ; 
 int ASIC3_NUM_GPIO_BANKS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INTR ; 
 int MAX_ASIC_ISR_LOOPS ; 
 int /*<<< orphan*/  P_INT_STAT ; 
 int /*<<< orphan*/  FUNC1 (struct asic3*,unsigned long,int) ; 
 void* FUNC2 (struct asic3*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct asic3*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 struct asic3* FUNC6 (struct irq_desc*) ; 
 struct irq_data* FUNC7 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct irq_data*) ; 

__attribute__((used)) static void FUNC11(struct irq_desc *desc)
{
	struct asic3 *asic = FUNC6(desc);
	struct irq_data *data = FUNC7(desc);
	int iter, i;
	unsigned long flags;

	data->chip->irq_ack(data);

	for (iter = 0 ; iter < MAX_ASIC_ISR_LOOPS; iter++) {
		u32 status;
		int bank;

		FUNC8(&asic->lock, flags);
		status = FUNC2(asic,
					     FUNC0(INTR, P_INT_STAT));
		FUNC9(&asic->lock, flags);

		/* Check all ten register bits */
		if ((status & 0x3ff) == 0)
			break;

		/* Handle GPIO IRQs */
		for (bank = 0; bank < ASIC3_NUM_GPIO_BANKS; bank++) {
			if (status & (1 << bank)) {
				unsigned long base, istat;

				base = ASIC3_GPIO_A_BASE
				       + bank * ASIC3_GPIO_BASE_INCR;
				FUNC8(&asic->lock, flags);
				istat = FUNC2(asic,
							    base +
							    ASIC3_GPIO_INT_STATUS);
				/* Clearing IntStatus */
				FUNC3(asic,
						     base +
						     ASIC3_GPIO_INT_STATUS, 0);
				FUNC9(&asic->lock, flags);

				for (i = 0; i < ASIC3_GPIOS_PER_BANK; i++) {
					int bit = (1 << i);
					unsigned int irqnr;

					if (!(istat & bit))
						continue;

					irqnr = asic->irq_base +
						(ASIC3_GPIOS_PER_BANK * bank)
						+ i;
					FUNC5(irqnr);
					if (asic->irq_bothedge[bank] & bit)
						FUNC1(asic, base,
								    bit);
				}
			}
		}

		/* Handle remaining IRQs in the status register */
		for (i = ASIC3_NUM_GPIOS; i < ASIC3_NR_IRQS; i++) {
			/* They start at bit 4 and go up */
			if (status & (1 << (i - ASIC3_NUM_GPIOS + 4)))
				FUNC5(asic->irq_base + i);
		}
	}

	if (iter >= MAX_ASIC_ISR_LOOPS)
		FUNC4(asic->dev, "interrupt processing overrun\n");
}