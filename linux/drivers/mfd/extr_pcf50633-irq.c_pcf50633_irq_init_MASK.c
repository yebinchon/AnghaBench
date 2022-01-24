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
struct pcf50633 {int irq; int* mask_regs; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_LOW ; 
 int /*<<< orphan*/  PCF50633_REG_INT1M ; 
 int /*<<< orphan*/  PCF50633_REG_INT2M ; 
 int /*<<< orphan*/  PCF50633_REG_INT3M ; 
 int /*<<< orphan*/  PCF50633_REG_INT4M ; 
 int /*<<< orphan*/  PCF50633_REG_INT5M ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  pcf50633_irq ; 
 int /*<<< orphan*/  FUNC2 (struct pcf50633*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct pcf50633*) ; 

int FUNC4(struct pcf50633 *pcf, int irq)
{
	int ret;

	pcf->irq = irq;

	/* Enable all interrupts except RTC SECOND */
	pcf->mask_regs[0] = 0x80;
	FUNC2(pcf, PCF50633_REG_INT1M, pcf->mask_regs[0]);
	FUNC2(pcf, PCF50633_REG_INT2M, 0x00);
	FUNC2(pcf, PCF50633_REG_INT3M, 0x00);
	FUNC2(pcf, PCF50633_REG_INT4M, 0x00);
	FUNC2(pcf, PCF50633_REG_INT5M, 0x00);

	ret = FUNC3(irq, NULL, pcf50633_irq,
					IRQF_TRIGGER_LOW | IRQF_ONESHOT,
					"pcf50633", pcf);

	if (ret)
		FUNC0(pcf->dev, "Failed to request IRQ %d\n", ret);

	if (FUNC1(irq) < 0)
		FUNC0(pcf->dev, "IRQ %u cannot be enabled as wake-up source"
			"in this hardware revision", irq);

	return ret;
}