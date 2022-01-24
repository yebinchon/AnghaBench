#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; scalar_t__ irq; } ;
struct TYPE_3__ {unsigned int chip_type; int /*<<< orphan*/ * dev; int /*<<< orphan*/  regmap; } ;
struct bd718xx {int /*<<< orphan*/  irq_data; TYPE_1__ chip; scalar_t__ chip_irq; } ;
struct TYPE_4__ {int irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BD718XX_INT_PWRBTN_S ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PLATFORM_DEVID_AUTO ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct bd718xx*) ; 
 int /*<<< orphan*/  bd718xx_irq_chip ; 
 int /*<<< orphan*/  bd718xx_mfd_cells ; 
 int /*<<< orphan*/  bd718xx_regmap_config ; 
 TYPE_2__ button ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct bd718xx*) ; 
 struct bd718xx* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct i2c_client *i2c,
			    const struct i2c_device_id *id)
{
	struct bd718xx *bd718xx;
	int ret;

	if (!i2c->irq) {
		FUNC4(&i2c->dev, "No IRQ configured\n");
		return -EINVAL;
	}

	bd718xx = FUNC6(&i2c->dev, sizeof(struct bd718xx), GFP_KERNEL);

	if (!bd718xx)
		return -ENOMEM;

	bd718xx->chip_irq = i2c->irq;
	bd718xx->chip.chip_type = (unsigned int)(uintptr_t)
				FUNC10(&i2c->dev);
	bd718xx->chip.dev = &i2c->dev;
	FUNC5(&i2c->dev, bd718xx);

	bd718xx->chip.regmap = FUNC9(i2c,
						    &bd718xx_regmap_config);
	if (FUNC1(bd718xx->chip.regmap)) {
		FUNC4(&i2c->dev, "regmap initialization failed\n");
		return FUNC2(bd718xx->chip.regmap);
	}

	ret = FUNC8(&i2c->dev, bd718xx->chip.regmap,
				       bd718xx->chip_irq, IRQF_ONESHOT, 0,
				       &bd718xx_irq_chip, &bd718xx->irq_data);
	if (ret) {
		FUNC4(&i2c->dev, "Failed to add irq_chip\n");
		return ret;
	}

	ret = FUNC3(bd718xx);
	if (ret)
		return ret;

	ret = FUNC12(bd718xx->irq_data, BD718XX_INT_PWRBTN_S);

	if (ret < 0) {
		FUNC4(&i2c->dev, "Failed to get the IRQ\n");
		return ret;
	}

	button.irq = ret;

	ret = FUNC7(bd718xx->chip.dev, PLATFORM_DEVID_AUTO,
				   bd718xx_mfd_cells,
				   FUNC0(bd718xx_mfd_cells), NULL, 0,
				   FUNC11(bd718xx->irq_data));
	if (ret)
		FUNC4(&i2c->dev, "Failed to create subdevices\n");

	return ret;
}