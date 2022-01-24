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
struct retu_dev {int /*<<< orphan*/  irq_data; int /*<<< orphan*/ * dev; int /*<<< orphan*/  regmap; int /*<<< orphan*/  mutex; } ;
struct retu_data {char* companion_name; int /*<<< orphan*/  nchildren; int /*<<< orphan*/  children; TYPE_1__* irq_chip; int /*<<< orphan*/  chip_name; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  mask_base; } ;

/* Variables and functions */
 int FUNC0 (struct retu_data*) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RETU_REG_ASICR ; 
 int RETU_REG_ASICR_VILMA ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*,char*,int,int) ; 
 struct retu_dev* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct retu_dev*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ pm_power_off ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  retu_bus ; 
 int /*<<< orphan*/  retu_config ; 
 struct retu_data* retu_data ; 
 struct retu_dev* retu_pm_power_off ; 
 scalar_t__ retu_power_off ; 
 int FUNC13 (struct retu_dev*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct retu_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC15(struct i2c_client *i2c, const struct i2c_device_id *id)
{
	struct retu_data const *rdat;
	struct retu_dev *rdev;
	int ret;

	if (i2c->addr > FUNC0(retu_data))
		return -ENODEV;
	rdat = &retu_data[i2c->addr - 1];

	rdev = FUNC5(&i2c->dev, sizeof(*rdev), GFP_KERNEL);
	if (rdev == NULL)
		return -ENOMEM;

	FUNC7(i2c, rdev);
	rdev->dev = &i2c->dev;
	FUNC9(&rdev->mutex);
	rdev->regmap = FUNC6(&i2c->dev, &retu_bus, &i2c->dev,
					&retu_config);
	if (FUNC1(rdev->regmap))
		return FUNC2(rdev->regmap);

	ret = FUNC13(rdev, RETU_REG_ASICR);
	if (ret < 0) {
		FUNC3(rdev->dev, "could not read %s revision: %d\n",
			rdat->chip_name, ret);
		return ret;
	}

	FUNC4(rdev->dev, "%s%s%s v%d.%d found\n", rdat->chip_name,
		 (ret & RETU_REG_ASICR_VILMA) ? " & " : "",
		 (ret & RETU_REG_ASICR_VILMA) ? rdat->companion_name : "",
		 (ret >> 4) & 0x7, ret & 0xf);

	/* Mask all interrupts. */
	ret = FUNC14(rdev, rdat->irq_chip->mask_base, 0xffff);
	if (ret < 0)
		return ret;

	ret = FUNC10(rdev->regmap, i2c->irq, IRQF_ONESHOT, -1,
				  rdat->irq_chip, &rdev->irq_data);
	if (ret < 0)
		return ret;

	ret = FUNC8(rdev->dev, -1, rdat->children, rdat->nchildren,
			      NULL, FUNC12(rdev->irq_data),
			      NULL);
	if (ret < 0) {
		FUNC11(i2c->irq, rdev->irq_data);
		return ret;
	}

	if (i2c->addr == 1 && !pm_power_off) {
		retu_pm_power_off = rdev;
		pm_power_off	  = retu_power_off;
	}

	return 0;
}