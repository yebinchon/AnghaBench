#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct platform_device {struct device dev; int /*<<< orphan*/  name; } ;
struct cec_gpio {TYPE_1__* adap; void* v5_irq; TYPE_1__* v5_gpio; void* hpd_irq; TYPE_1__* hpd_gpio; void* cec_irq; TYPE_1__* cec_gpio; struct device* dev; } ;
struct TYPE_9__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int CEC_CAP_DEFAULTS ; 
 int CEC_CAP_MONITOR_ALL ; 
 int CEC_CAP_MONITOR_PIN ; 
 int CEC_CAP_PHYS_ADDR ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH_OPEN_DRAIN ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 int IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  cec_5v_gpio_irq_handler ; 
 int /*<<< orphan*/  cec_5v_gpio_irq_handler_thread ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  cec_gpio_irq_handler ; 
 int /*<<< orphan*/  cec_gpio_pin_ops ; 
 int /*<<< orphan*/  cec_hpd_gpio_irq_handler ; 
 int /*<<< orphan*/  cec_hpd_gpio_irq_handler_thread ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,struct cec_gpio*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (TYPE_1__*,struct device*) ; 
 TYPE_1__* FUNC6 (struct device*,char*,int /*<<< orphan*/ ) ; 
 void* FUNC7 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct cec_gpio* FUNC8 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct device*,void*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct cec_gpio*) ; 
 int FUNC10 (struct device*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,struct cec_gpio*) ; 
 void* FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct cec_gpio*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct cec_gpio *cec;
	int ret;

	cec = FUNC8(dev, sizeof(*cec), GFP_KERNEL);
	if (!cec)
		return -ENOMEM;

	cec->dev = dev;

	cec->cec_gpio = FUNC6(dev, "cec", GPIOD_OUT_HIGH_OPEN_DRAIN);
	if (FUNC0(cec->cec_gpio))
		return FUNC1(cec->cec_gpio);
	cec->cec_irq = FUNC11(cec->cec_gpio);

	cec->hpd_gpio = FUNC7(dev, "hpd", GPIOD_IN);
	if (FUNC0(cec->hpd_gpio))
		return FUNC1(cec->hpd_gpio);

	cec->v5_gpio = FUNC7(dev, "v5", GPIOD_IN);
	if (FUNC0(cec->v5_gpio))
		return FUNC1(cec->v5_gpio);

	cec->adap = FUNC4(&cec_gpio_pin_ops,
		cec, pdev->name, CEC_CAP_DEFAULTS | CEC_CAP_PHYS_ADDR |
				 CEC_CAP_MONITOR_ALL | CEC_CAP_MONITOR_PIN);
	if (FUNC0(cec->adap))
		return FUNC1(cec->adap);

	ret = FUNC9(dev, cec->cec_irq, cec_gpio_irq_handler,
			       IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING,
			       cec->adap->name, cec);
	if (ret)
		return ret;

	FUNC3(cec->adap);

	if (cec->hpd_gpio) {
		cec->hpd_irq = FUNC11(cec->hpd_gpio);
		ret = FUNC10(dev, cec->hpd_irq,
			cec_hpd_gpio_irq_handler,
			cec_hpd_gpio_irq_handler_thread,
			IRQF_ONESHOT |
			IRQF_TRIGGER_FALLING | IRQF_TRIGGER_RISING,
			"hpd-gpio", cec);
		if (ret)
			return ret;
	}

	if (cec->v5_gpio) {
		cec->v5_irq = FUNC11(cec->v5_gpio);
		ret = FUNC10(dev, cec->v5_irq,
			cec_5v_gpio_irq_handler,
			cec_5v_gpio_irq_handler_thread,
			IRQF_ONESHOT |
			IRQF_TRIGGER_FALLING | IRQF_TRIGGER_RISING,
			"v5-gpio", cec);
		if (ret)
			return ret;
	}

	ret = FUNC5(cec->adap, &pdev->dev);
	if (ret) {
		FUNC2(cec->adap);
		return ret;
	}

	FUNC12(pdev, cec);
	return 0;
}