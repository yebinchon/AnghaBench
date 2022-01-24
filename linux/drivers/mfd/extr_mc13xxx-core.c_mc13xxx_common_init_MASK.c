#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct mc13xxx_platform_data {int flags; int /*<<< orphan*/  touch; int /*<<< orphan*/ * codec; int /*<<< orphan*/ * buttons; int /*<<< orphan*/ * leds; int /*<<< orphan*/  regulators; } ;
struct TYPE_5__ {int init_ack_masked; int use_ack; int num_irqs; TYPE_3__* irqs; int /*<<< orphan*/  num_regs; void* irq_reg_stride; void* ack_base; int /*<<< orphan*/  mask_base; void* status_base; int /*<<< orphan*/  name; } ;
struct mc13xxx {int flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  irq_data; TYPE_2__ irq_chip; int /*<<< orphan*/  irq; int /*<<< orphan*/  regmap; TYPE_3__* irqs; TYPE_1__* variant; struct device* dev; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int reg_offset; int /*<<< orphan*/  mask; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* print_revision ) (struct mc13xxx*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int /*<<< orphan*/  MC13XXX_IRQMASK0 ; 
 void* MC13XXX_IRQSTAT0 ; 
 void* MC13XXX_IRQSTAT1 ; 
 int MC13XXX_IRQ_PER_REG ; 
 int /*<<< orphan*/  MC13XXX_IRQ_REG_CNT ; 
 int /*<<< orphan*/  MC13XXX_PWRCTRL ; 
 int /*<<< orphan*/  MC13XXX_PWRCTRL_WDIRESET ; 
 int /*<<< orphan*/  MC13XXX_REVISION ; 
 int MC13XXX_USE_ADC ; 
 int MC13XXX_USE_CODEC ; 
 int MC13XXX_USE_RTC ; 
 int MC13XXX_USE_TOUCHSCREEN ; 
 struct mc13xxx* FUNC2 (struct device*) ; 
 struct mc13xxx_platform_data* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct mc13xxx*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct mc13xxx*,char*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (struct mc13xxx*) ; 
 int FUNC8 (struct mc13xxx*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct mc13xxx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct mc13xxx*,int /*<<< orphan*/ ) ; 

int FUNC13(struct device *dev)
{
	struct mc13xxx_platform_data *pdata = FUNC3(dev);
	struct mc13xxx *mc13xxx = FUNC2(dev);
	u32 revision;
	int i, ret;

	mc13xxx->dev = dev;

	ret = FUNC8(mc13xxx, MC13XXX_REVISION, &revision);
	if (ret)
		return ret;

	mc13xxx->variant->print_revision(mc13xxx, revision);

	ret = FUNC9(mc13xxx, MC13XXX_PWRCTRL,
			MC13XXX_PWRCTRL_WDIRESET, MC13XXX_PWRCTRL_WDIRESET);
	if (ret)
		return ret;

	for (i = 0; i < FUNC0(mc13xxx->irqs); i++) {
		mc13xxx->irqs[i].reg_offset = i / MC13XXX_IRQ_PER_REG;
		mc13xxx->irqs[i].mask = FUNC1(i % MC13XXX_IRQ_PER_REG);
	}

	mc13xxx->irq_chip.name = FUNC4(dev);
	mc13xxx->irq_chip.status_base = MC13XXX_IRQSTAT0;
	mc13xxx->irq_chip.mask_base = MC13XXX_IRQMASK0;
	mc13xxx->irq_chip.ack_base = MC13XXX_IRQSTAT0;
	mc13xxx->irq_chip.irq_reg_stride = MC13XXX_IRQSTAT1 - MC13XXX_IRQSTAT0;
	mc13xxx->irq_chip.init_ack_masked = true;
	mc13xxx->irq_chip.use_ack = true;
	mc13xxx->irq_chip.num_regs = MC13XXX_IRQ_REG_CNT;
	mc13xxx->irq_chip.irqs = mc13xxx->irqs;
	mc13xxx->irq_chip.num_irqs = FUNC0(mc13xxx->irqs);

	ret = FUNC11(mc13xxx->regmap, mc13xxx->irq, IRQF_ONESHOT,
				  0, &mc13xxx->irq_chip, &mc13xxx->irq_data);
	if (ret)
		return ret;

	FUNC10(&mc13xxx->lock);

	if (FUNC7(mc13xxx) < 0 && pdata)
		mc13xxx->flags = pdata->flags;

	if (pdata) {
		FUNC6(mc13xxx, "%s-regulator",
			&pdata->regulators, sizeof(pdata->regulators));
		FUNC6(mc13xxx, "%s-led",
				pdata->leds, sizeof(*pdata->leds));
		FUNC6(mc13xxx, "%s-pwrbutton",
				pdata->buttons, sizeof(*pdata->buttons));
		if (mc13xxx->flags & MC13XXX_USE_CODEC)
			FUNC6(mc13xxx, "%s-codec",
				pdata->codec, sizeof(*pdata->codec));
		if (mc13xxx->flags & MC13XXX_USE_TOUCHSCREEN)
			FUNC6(mc13xxx, "%s-ts",
				&pdata->touch, sizeof(pdata->touch));
	} else {
		FUNC5(mc13xxx, "%s-regulator");
		FUNC5(mc13xxx, "%s-led");
		FUNC5(mc13xxx, "%s-pwrbutton");
		if (mc13xxx->flags & MC13XXX_USE_CODEC)
			FUNC5(mc13xxx, "%s-codec");
		if (mc13xxx->flags & MC13XXX_USE_TOUCHSCREEN)
			FUNC5(mc13xxx, "%s-ts");
	}

	if (mc13xxx->flags & MC13XXX_USE_ADC)
		FUNC5(mc13xxx, "%s-adc");

	if (mc13xxx->flags & MC13XXX_USE_RTC)
		FUNC5(mc13xxx, "%s-rtc");

	return 0;
}