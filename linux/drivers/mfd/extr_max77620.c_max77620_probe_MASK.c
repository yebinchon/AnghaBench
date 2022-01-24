#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct regmap_config {int dummy; } ;
struct mfd_cell {int dummy; } ;
struct max77620_chip {int irq_base; int chip_id; TYPE_2__* dev; int /*<<< orphan*/  top_irq_data; int /*<<< orphan*/  rmap; int /*<<< orphan*/  chip_irq; } ;
struct i2c_device_id {scalar_t__ driver_data; } ;
struct TYPE_8__ {int /*<<< orphan*/  of_node; } ;
struct i2c_client {TYPE_2__ dev; int /*<<< orphan*/  irq; } ;
typedef  enum max77620_chip_id { ____Placeholder_max77620_chip_id } max77620_chip_id ;
struct TYPE_7__ {struct max77620_chip* irq_drv_data; } ;

/* Variables and functions */
 int FUNC0 (struct mfd_cell*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQF_ONESHOT ; 
 int IRQF_SHARED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
#define  MAX20024 130 
#define  MAX77620 129 
#define  MAX77663 128 
 int /*<<< orphan*/  PLATFORM_DEVID_NONE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int) ; 
 struct max77620_chip* FUNC4 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,struct mfd_cell const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct regmap_config const*) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,struct max77620_chip*) ; 
 struct mfd_cell* max20024_children ; 
 struct regmap_config max20024_regmap_config ; 
 struct mfd_cell* max77620_children ; 
 int FUNC9 (struct max77620_chip*) ; 
 scalar_t__ max77620_pm_power_off ; 
 int FUNC10 (struct max77620_chip*) ; 
 struct regmap_config max77620_regmap_config ; 
 struct max77620_chip* max77620_scratch ; 
 TYPE_1__ max77620_top_irq_chip ; 
 struct mfd_cell* max77663_children ; 
 struct regmap_config max77663_regmap_config ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ pm_power_off ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct i2c_client *client,
			  const struct i2c_device_id *id)
{
	const struct regmap_config *rmap_config;
	struct max77620_chip *chip;
	const struct mfd_cell *mfd_cells;
	int n_mfd_cells;
	bool pm_off;
	int ret;

	chip = FUNC4(&client->dev, sizeof(*chip), GFP_KERNEL);
	if (!chip)
		return -ENOMEM;

	FUNC8(client, chip);
	chip->dev = &client->dev;
	chip->irq_base = -1;
	chip->chip_irq = client->irq;
	chip->chip_id = (enum max77620_chip_id)id->driver_data;

	switch (chip->chip_id) {
	case MAX77620:
		mfd_cells = max77620_children;
		n_mfd_cells = FUNC0(max77620_children);
		rmap_config = &max77620_regmap_config;
		break;
	case MAX20024:
		mfd_cells = max20024_children;
		n_mfd_cells = FUNC0(max20024_children);
		rmap_config = &max20024_regmap_config;
		break;
	case MAX77663:
		mfd_cells = max77663_children;
		n_mfd_cells = FUNC0(max77663_children);
		rmap_config = &max77663_regmap_config;
		break;
	default:
		FUNC3(chip->dev, "ChipID is invalid %d\n", chip->chip_id);
		return -EINVAL;
	}

	chip->rmap = FUNC7(client, rmap_config);
	if (FUNC1(chip->rmap)) {
		ret = FUNC2(chip->rmap);
		FUNC3(chip->dev, "Failed to initialise regmap: %d\n", ret);
		return ret;
	}

	ret = FUNC10(chip);
	if (ret < 0)
		return ret;

	max77620_top_irq_chip.irq_drv_data = chip;
	ret = FUNC6(chip->dev, chip->rmap, client->irq,
				       IRQF_ONESHOT | IRQF_SHARED,
				       chip->irq_base, &max77620_top_irq_chip,
				       &chip->top_irq_data);
	if (ret < 0) {
		FUNC3(chip->dev, "Failed to add regmap irq: %d\n", ret);
		return ret;
	}

	ret = FUNC9(chip);
	if (ret < 0)
		return ret;

	ret =  FUNC5(chip->dev, PLATFORM_DEVID_NONE,
				    mfd_cells, n_mfd_cells, NULL, 0,
				    FUNC12(chip->top_irq_data));
	if (ret < 0) {
		FUNC3(chip->dev, "Failed to add MFD children: %d\n", ret);
		return ret;
	}

	pm_off = FUNC11(client->dev.of_node);
	if (pm_off && !pm_power_off) {
		max77620_scratch = chip;
		pm_power_off = max77620_pm_power_off;
	}

	return 0;
}