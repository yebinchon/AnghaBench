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
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct da9055 {int /*<<< orphan*/  chip_irq; int /*<<< orphan*/ * dev; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct da9055*) ; 
 int /*<<< orphan*/  da9055_regmap_config ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 struct da9055* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct da9055*) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *i2c,
				      const struct i2c_device_id *id)
{
	struct da9055 *da9055;
	int ret;

	da9055 = FUNC4(&i2c->dev, sizeof(struct da9055), GFP_KERNEL);
	if (!da9055)
		return -ENOMEM;

	da9055->regmap = FUNC5(i2c, &da9055_regmap_config);
	if (FUNC0(da9055->regmap)) {
		ret = FUNC1(da9055->regmap);
		FUNC3(&i2c->dev, "Failed to allocate register map: %d\n",
			ret);
		return ret;
	}

	da9055->dev = &i2c->dev;
	da9055->chip_irq = i2c->irq;

	FUNC6(i2c, da9055);

	return FUNC2(da9055);
}