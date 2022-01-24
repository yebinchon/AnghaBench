#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct max8925_platform_data {int tsc_irq; } ;
struct max8925_chip {scalar_t__ irq_base; int core_irq; int tsc_irq; TYPE_1__* dev; int /*<<< orphan*/  adc; int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  rtc; int /*<<< orphan*/  i2c; } ;
struct device_node {int dummy; } ;
struct TYPE_3__ {struct device_node* of_node; } ;

/* Variables and functions */
 int EBUSY ; 
 unsigned long IRQF_ONESHOT ; 
 unsigned long IRQF_TRIGGER_FALLING ; 
 int /*<<< orphan*/  MAX8925_ALARM0_CNTL ; 
 int /*<<< orphan*/  MAX8925_ALARM1_CNTL ; 
 int /*<<< orphan*/  MAX8925_CHG_IRQ1 ; 
 int /*<<< orphan*/  MAX8925_CHG_IRQ1_MASK ; 
 int /*<<< orphan*/  MAX8925_CHG_IRQ2 ; 
 int /*<<< orphan*/  MAX8925_CHG_IRQ2_MASK ; 
 int /*<<< orphan*/  MAX8925_NR_IRQS ; 
 int /*<<< orphan*/  MAX8925_ON_OFF_IRQ1 ; 
 int /*<<< orphan*/  MAX8925_ON_OFF_IRQ1_MASK ; 
 int /*<<< orphan*/  MAX8925_ON_OFF_IRQ2 ; 
 int /*<<< orphan*/  MAX8925_ON_OFF_IRQ2_MASK ; 
 int /*<<< orphan*/  MAX8925_RTC_IRQ ; 
 int /*<<< orphan*/  MAX8925_RTC_IRQ_MASK ; 
 int /*<<< orphan*/  MAX8925_TSC_IRQ ; 
 int /*<<< orphan*/  MAX8925_TSC_IRQ_MASK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct max8925_chip*) ; 
 int /*<<< orphan*/  max8925_irq ; 
 int /*<<< orphan*/  max8925_irq_domain_ops ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  max8925_tsc_irq ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long,char*,struct max8925_chip*) ; 

__attribute__((used)) static int FUNC8(struct max8925_chip *chip, int irq,
			    struct max8925_platform_data *pdata)
{
	unsigned long flags = IRQF_TRIGGER_FALLING | IRQF_ONESHOT;
	int ret;
	struct device_node *node = chip->dev->of_node;

	/* clear all interrupts */
	FUNC4(chip->i2c, MAX8925_CHG_IRQ1);
	FUNC4(chip->i2c, MAX8925_CHG_IRQ2);
	FUNC4(chip->i2c, MAX8925_ON_OFF_IRQ1);
	FUNC4(chip->i2c, MAX8925_ON_OFF_IRQ2);
	FUNC4(chip->rtc, MAX8925_RTC_IRQ);
	FUNC4(chip->adc, MAX8925_TSC_IRQ);
	/* mask all interrupts except for TSC */
	FUNC5(chip->rtc, MAX8925_ALARM0_CNTL, 0);
	FUNC5(chip->rtc, MAX8925_ALARM1_CNTL, 0);
	FUNC5(chip->i2c, MAX8925_CHG_IRQ1_MASK, 0xff);
	FUNC5(chip->i2c, MAX8925_CHG_IRQ2_MASK, 0xff);
	FUNC5(chip->i2c, MAX8925_ON_OFF_IRQ1_MASK, 0xff);
	FUNC5(chip->i2c, MAX8925_ON_OFF_IRQ2_MASK, 0xff);
	FUNC5(chip->rtc, MAX8925_RTC_IRQ_MASK, 0xff);

	FUNC6(&chip->irq_lock);
	chip->irq_base = FUNC2(-1, 0, MAX8925_NR_IRQS, 0);
	if (chip->irq_base < 0) {
		FUNC0(chip->dev, "Failed to allocate interrupts, ret:%d\n",
			chip->irq_base);
		return -EBUSY;
	}

	FUNC3(node, MAX8925_NR_IRQS, chip->irq_base, 0,
			      &max8925_irq_domain_ops, chip);

	/* request irq handler for pmic main irq*/
	chip->core_irq = irq;
	if (!chip->core_irq)
		return -EBUSY;
	ret = FUNC7(irq, NULL, max8925_irq, flags | IRQF_ONESHOT,
				   "max8925", chip);
	if (ret) {
		FUNC0(chip->dev, "Failed to request core IRQ: %d\n", ret);
		chip->core_irq = 0;
		return -EBUSY;
	}

	/* request irq handler for pmic tsc irq*/

	/* mask TSC interrupt */
	FUNC5(chip->adc, MAX8925_TSC_IRQ_MASK, 0x0f);

	if (!pdata->tsc_irq) {
		FUNC1(chip->dev, "No interrupt support on TSC IRQ\n");
		return 0;
	}
	chip->tsc_irq = pdata->tsc_irq;
	ret = FUNC7(chip->tsc_irq, NULL, max8925_tsc_irq,
				   flags | IRQF_ONESHOT, "max8925-tsc", chip);
	if (ret) {
		FUNC0(chip->dev, "Failed to request TSC IRQ: %d\n", ret);
		chip->tsc_irq = 0;
	}
	return 0;
}