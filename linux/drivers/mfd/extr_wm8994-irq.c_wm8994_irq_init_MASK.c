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
struct wm8994_pdata {long irq_flags; int /*<<< orphan*/  irq_gpio; } ;
struct wm8994 {scalar_t__ irq; int /*<<< orphan*/  dev; int /*<<< orphan*/  irq_data; scalar_t__ irq_base; int /*<<< orphan*/  regmap; int /*<<< orphan*/  edge_irq; struct wm8994_pdata pdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIOF_IN ; 
 unsigned long IRQF_ONESHOT ; 
 unsigned long IRQF_TRIGGER_FALLING ; 
 unsigned long IRQF_TRIGGER_HIGH ; 
 unsigned long IRQF_TRIGGER_RISING ; 
 int /*<<< orphan*/  WM8994_INTERRUPT_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,struct wm8994*) ; 
 int FUNC6 (int /*<<< orphan*/ ,scalar_t__,unsigned long,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long,char*,struct wm8994*) ; 
 int /*<<< orphan*/  wm8994_edge_irq ; 
 int /*<<< orphan*/  wm8994_edge_irq_ops ; 
 int /*<<< orphan*/  wm8994_irq_chip ; 
 int /*<<< orphan*/  FUNC8 (struct wm8994*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC9(struct wm8994 *wm8994)
{
	int ret;
	unsigned long irqflags;
	struct wm8994_pdata *pdata = &wm8994->pdata;

	if (!wm8994->irq) {
		FUNC1(wm8994->dev,
			 "No interrupt specified, no interrupts\n");
		wm8994->irq_base = 0;
		return 0;
	}

	/* select user or default irq flags */
	irqflags = IRQF_TRIGGER_HIGH | IRQF_ONESHOT;
	if (pdata->irq_flags)
		irqflags = pdata->irq_flags;

	/* use a GPIO for edge triggered controllers */
	if (irqflags & (IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING)) {
		if (FUNC3(pdata->irq_gpio) != wm8994->irq) {
			FUNC1(wm8994->dev, "IRQ %d is not GPIO %d (%d)\n",
				 wm8994->irq, pdata->irq_gpio,
				 FUNC3(pdata->irq_gpio));
			wm8994->irq = FUNC3(pdata->irq_gpio);
		}

		ret = FUNC2(wm8994->dev, pdata->irq_gpio,
					    GPIOF_IN, "WM8994 IRQ");

		if (ret != 0) {
			FUNC0(wm8994->dev, "Failed to get IRQ GPIO: %d\n",
				ret);
			return ret;
		}

		wm8994->edge_irq = FUNC5(NULL, 1,
							 &wm8994_edge_irq_ops,
							 wm8994);

		ret = FUNC6(wm8994->regmap,
					  FUNC4(wm8994->edge_irq,
							     0),
					  IRQF_ONESHOT,
					  wm8994->irq_base, &wm8994_irq_chip,
					  &wm8994->irq_data);
		if (ret != 0) {
			FUNC0(wm8994->dev, "Failed to get IRQ: %d\n",
				ret);
			return ret;
		}

		ret = FUNC7(wm8994->irq,
					   NULL, wm8994_edge_irq,
					   irqflags,
					   "WM8994 edge", wm8994);
	} else {
		ret = FUNC6(wm8994->regmap, wm8994->irq,
					  irqflags,
					  wm8994->irq_base, &wm8994_irq_chip,
					  &wm8994->irq_data);
	}

	if (ret != 0) {
		FUNC0(wm8994->dev, "Failed to register IRQ chip: %d\n", ret);
		return ret;
	}

	/* Enable top level interrupt if it was masked */
	FUNC8(wm8994, WM8994_INTERRUPT_CONTROL, 0);

	return 0;
}