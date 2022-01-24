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
struct regmap_irq_chip_data {int dummy; } ;
struct regmap {int dummy; } ;
struct irq_domain {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  irq; struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int IRQF_ONESHOT ; 
 int IRQF_SHARED ; 
 scalar_t__ FUNC1 (struct regmap*) ; 
#define  MAX77650_CID_77650A 131 
#define  MAX77650_CID_77650C 130 
#define  MAX77650_CID_77651A 129 
#define  MAX77650_CID_77651B 128 
 int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  MAX77650_REG_CID ; 
 int /*<<< orphan*/  MAX77650_REG_CNFG_GLBL ; 
 int /*<<< orphan*/  MAX77650_SBIA_LPM_DISABLED ; 
 int /*<<< orphan*/  MAX77650_SBIA_LPM_MASK ; 
 int /*<<< orphan*/  PLATFORM_DEVID_NONE ; 
 int FUNC3 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct irq_domain*) ; 
 int FUNC6 (struct device*,struct regmap*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct regmap_irq_chip_data**) ; 
 struct regmap* FUNC7 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  max77650_cells ; 
 int /*<<< orphan*/  max77650_irq_chip ; 
 int /*<<< orphan*/  max77650_regmap_config ; 
 struct irq_domain* FUNC8 (struct regmap_irq_chip_data*) ; 
 int FUNC9 (struct regmap*,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC10 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct i2c_client *i2c)
{
	struct regmap_irq_chip_data *irq_data;
	struct device *dev = &i2c->dev;
	struct irq_domain *domain;
	struct regmap *map;
	unsigned int val;
	int rv, id;

	map = FUNC7(i2c, &max77650_regmap_config);
	if (FUNC1(map)) {
		FUNC4(dev, "Unable to initialise I2C Regmap\n");
		return FUNC3(map);
	}

	rv = FUNC9(map, MAX77650_REG_CID, &val);
	if (rv) {
		FUNC4(dev, "Unable to read Chip ID\n");
		return rv;
	}

	id = FUNC2(val);
	switch (id) {
	case MAX77650_CID_77650A:
	case MAX77650_CID_77650C:
	case MAX77650_CID_77651A:
	case MAX77650_CID_77651B:
		break;
	default:
		FUNC4(dev, "Chip not supported - ID: 0x%02x\n", id);
		return -ENODEV;
	}

	/*
	 * This IC has a low-power mode which reduces the quiescent current
	 * consumption to ~5.6uA but is only suitable for systems consuming
	 * less than ~2mA. Since this is not likely the case even on
	 * linux-based wearables - keep the chip in normal power mode.
	 */
	rv = FUNC10(map,
				MAX77650_REG_CNFG_GLBL,
				MAX77650_SBIA_LPM_MASK,
				MAX77650_SBIA_LPM_DISABLED);
	if (rv) {
		FUNC4(dev, "Unable to change the power mode\n");
		return rv;
	}

	rv = FUNC6(dev, map, i2c->irq,
				      IRQF_ONESHOT | IRQF_SHARED, 0,
				      &max77650_irq_chip, &irq_data);
	if (rv) {
		FUNC4(dev, "Unable to add Regmap IRQ chip\n");
		return rv;
	}

	domain = FUNC8(irq_data);

	return FUNC5(dev, PLATFORM_DEVID_NONE,
				    max77650_cells, FUNC0(max77650_cells),
				    NULL, 0, domain);
}