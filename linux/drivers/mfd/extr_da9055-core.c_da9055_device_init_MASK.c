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
typedef  int uint8_t ;
struct da9055_pdata {int irq_base; int /*<<< orphan*/  (* init ) (struct da9055*) ;} ;
struct da9055 {int irq_base; int /*<<< orphan*/  dev; int /*<<< orphan*/  irq_data; int /*<<< orphan*/  chip_irq; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DA9055_REG_EVENT_A ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_LOW ; 
 int /*<<< orphan*/  da9055_devs ; 
 int FUNC1 (struct da9055*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  da9055_regmap_irq_chip ; 
 struct da9055_pdata* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct da9055*) ; 

int FUNC8(struct da9055 *da9055)
{
	struct da9055_pdata *pdata = FUNC2(da9055->dev);
	int ret;
	uint8_t clear_events[3] = {0xFF, 0xFF, 0xFF};

	if (pdata && pdata->init != NULL)
		pdata->init(da9055);

	if (!pdata || !pdata->irq_base)
		da9055->irq_base = -1;
	else
		da9055->irq_base = pdata->irq_base;

	ret = FUNC1(da9055, DA9055_REG_EVENT_A, 3, clear_events);
	if (ret < 0)
		return ret;

	ret = FUNC5(da9055->regmap, da9055->chip_irq,
				  IRQF_TRIGGER_LOW | IRQF_ONESHOT,
				  da9055->irq_base, &da9055_regmap_irq_chip,
				  &da9055->irq_data);
	if (ret < 0)
		return ret;

	da9055->irq_base = FUNC6(da9055->irq_data);

	ret = FUNC3(da9055->dev, -1,
			      da9055_devs, FUNC0(da9055_devs),
			      NULL, da9055->irq_base, NULL);
	if (ret)
		goto err;

	return 0;

err:
	FUNC4(da9055->dev);
	return ret;
}