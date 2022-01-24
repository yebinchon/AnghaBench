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
struct intel_soc_pmic {int /*<<< orphan*/  irq_chip_data; int /*<<< orphan*/  irq; int /*<<< orphan*/  regmap; } ;
struct device {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  irq; struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PLATFORM_DEVID_NONE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  chtdc_ti_dev ; 
 int /*<<< orphan*/  chtdc_ti_irq_chip ; 
 int /*<<< orphan*/  chtdc_ti_regmap_config ; 
 struct intel_soc_pmic* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct intel_soc_pmic*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct i2c_client *i2c)
{
	struct device *dev = &i2c->dev;
	struct intel_soc_pmic *pmic;
	int ret;

	pmic = FUNC3(dev, sizeof(*pmic), GFP_KERNEL);
	if (!pmic)
		return -ENOMEM;

	FUNC7(i2c, pmic);

	pmic->regmap = FUNC6(i2c, &chtdc_ti_regmap_config);
	if (FUNC1(pmic->regmap))
		return FUNC2(pmic->regmap);
	pmic->irq = i2c->irq;

	ret = FUNC5(dev, pmic->regmap, pmic->irq,
				       IRQF_ONESHOT, 0,
				       &chtdc_ti_irq_chip,
				       &pmic->irq_chip_data);
	if (ret)
		return ret;

	return FUNC4(dev, PLATFORM_DEVID_NONE, chtdc_ti_dev,
				    FUNC0(chtdc_ti_dev), NULL, 0,
				    FUNC8(pmic->irq_chip_data));
}