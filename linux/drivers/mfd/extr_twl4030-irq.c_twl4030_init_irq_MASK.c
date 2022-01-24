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
struct irq_chip {char* name; int /*<<< orphan*/  irq_ack; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq_ack; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int TWL4030_CORE_NR_IRQS ; 
 int /*<<< orphan*/  TWL4030_MODULE_INT ; 
 int TWL4030_PWR_NR_IRQS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,char*,int,int,int) ; 
 struct irq_chip dummy_irq_chip ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/ * handle_simple_irq ; 
 int /*<<< orphan*/  handle_twl4030_pih ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  irq_domain_simple_ops ; 
 int /*<<< orphan*/  FUNC6 (int,struct irq_chip*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int FUNC8 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int twl4030_irq_base ; 
 TYPE_1__ twl4030_sih_irq_chip ; 
 int FUNC10 (struct device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  twl_irq_line ; 

int FUNC11(struct device *dev, int irq_num)
{
	static struct irq_chip	twl4030_irq_chip;
	int			status, i;
	int			irq_base, irq_end, nr_irqs;
	struct			device_node *node = dev->of_node;

	/*
	 * TWL core and pwr interrupts must be contiguous because
	 * the hwirqs numbers are defined contiguously from 1 to 15.
	 * Create only one domain for both.
	 */
	nr_irqs = TWL4030_PWR_NR_IRQS + TWL4030_CORE_NR_IRQS;

	irq_base = FUNC4(-1, 0, nr_irqs, 0);
	if (irq_base < 0) {
		FUNC1(dev, "Fail to allocate IRQ descs\n");
		return irq_base;
	}

	FUNC5(node, nr_irqs, irq_base, 0,
			      &irq_domain_simple_ops, NULL);

	irq_end = irq_base + TWL4030_CORE_NR_IRQS;

	/*
	 * Mask and clear all TWL4030 interrupts since initially we do
	 * not have any TWL4030 module interrupt handlers present
	 */
	status = FUNC9(twl_irq_line);
	if (status < 0)
		return status;

	twl4030_irq_base = irq_base;

	/*
	 * Install an irq handler for each of the SIH modules;
	 * clone dummy irq_chip since PIH can't *do* anything
	 */
	twl4030_irq_chip = dummy_irq_chip;
	twl4030_irq_chip.name = "twl4030";

	twl4030_sih_irq_chip.irq_ack = dummy_irq_chip.irq_ack;

	for (i = irq_base; i < irq_end; i++) {
		FUNC6(i, &twl4030_irq_chip,
					 handle_simple_irq);
		FUNC7(i, 1);
		FUNC0(i);
	}

	FUNC2(dev, "%s (irq %d) chaining IRQs %d..%d\n", "PIH",
			irq_num, irq_base, irq_end);

	/* ... and the PWR_INT module ... */
	status = FUNC10(dev, TWL4030_MODULE_INT, irq_end);
	if (status < 0) {
		FUNC1(dev, "sih_setup PWR INT --> %d\n", status);
		goto fail;
	}

	/* install an irq handler to demultiplex the TWL4030 interrupt */
	status = FUNC8(irq_num, NULL, handle_twl4030_pih,
				      IRQF_ONESHOT,
				      "TWL4030-PIH", NULL);
	if (status < 0) {
		FUNC1(dev, "could not claim irq%d: %d\n", irq_num, status);
		goto fail_rqirq;
	}
	FUNC3(irq_num);

	return irq_base;
fail_rqirq:
	/* clean up twl4030_sih_setup */
fail:
	for (i = irq_base; i < irq_end; i++) {
		FUNC7(i, 0);
		FUNC6(i, NULL, NULL);
	}

	return status;
}