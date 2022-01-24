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
typedef  int /*<<< orphan*/  u32 ;
struct stpmic1 {scalar_t__ irq; int /*<<< orphan*/  irq_data; int /*<<< orphan*/  regmap; struct device* dev; } ;
struct i2c_device_id {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct i2c_client {struct device dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQF_ONESHOT ; 
 int IRQF_SHARED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STPMIC1_MAIN_IRQ ; 
 int /*<<< orphan*/  VERSION_SR ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct stpmic1* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*) ; 
 int FUNC6 (struct device*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,struct stpmic1*) ; 
 scalar_t__ FUNC9 (struct device_node*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stpmic1_regmap_config ; 
 int /*<<< orphan*/  stpmic1_regmap_irq_chip ; 

__attribute__((used)) static int FUNC11(struct i2c_client *i2c,
			 const struct i2c_device_id *id)
{
	struct stpmic1 *ddata;
	struct device *dev = &i2c->dev;
	int ret;
	struct device_node *np = dev->of_node;
	u32 reg;

	ddata = FUNC4(dev, sizeof(struct stpmic1), GFP_KERNEL);
	if (!ddata)
		return -ENOMEM;

	FUNC8(i2c, ddata);
	ddata->dev = dev;

	ddata->regmap = FUNC7(i2c, &stpmic1_regmap_config);
	if (FUNC0(ddata->regmap))
		return FUNC1(ddata->regmap);

	ddata->irq = FUNC9(np, STPMIC1_MAIN_IRQ);
	if (ddata->irq < 0) {
		FUNC2(dev, "Failed to get main IRQ: %d\n", ddata->irq);
		return ddata->irq;
	}

	ret = FUNC10(ddata->regmap, VERSION_SR, &reg);
	if (ret) {
		FUNC2(dev, "Unable to read PMIC version\n");
		return ret;
	}
	FUNC3(dev, "PMIC Chip Version: 0x%x\n", reg);

	/* Initialize PMIC IRQ Chip & associated IRQ domains */
	ret = FUNC6(dev, ddata->regmap, ddata->irq,
				       IRQF_ONESHOT | IRQF_SHARED,
				       0, &stpmic1_regmap_irq_chip,
				       &ddata->irq_data);
	if (ret) {
		FUNC2(dev, "IRQ Chip registration failed: %d\n", ret);
		return ret;
	}

	return FUNC5(dev);
}