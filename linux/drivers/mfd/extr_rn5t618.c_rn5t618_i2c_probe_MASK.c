#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct rn5t618 {long variant; int /*<<< orphan*/  regmap; } ;
struct of_device_id {scalar_t__ data; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  of_node; } ;
struct i2c_client {TYPE_3__ dev; } ;
struct TYPE_8__ {int priority; int /*<<< orphan*/  notifier_call; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*) ; 
 struct rn5t618* FUNC5 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_3__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,struct rn5t618*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 struct of_device_id* FUNC10 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ pm_power_off ; 
 int FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  rn5t618_cells ; 
 int /*<<< orphan*/  rn5t618_of_match ; 
 struct rn5t618* rn5t618_pm_power_off ; 
 scalar_t__ rn5t618_power_off ; 
 int /*<<< orphan*/  rn5t618_regmap_config ; 
 int /*<<< orphan*/  rn5t618_restart ; 
 TYPE_1__ rn5t618_restart_handler ; 

__attribute__((used)) static int FUNC12(struct i2c_client *i2c,
			     const struct i2c_device_id *id)
{
	const struct of_device_id *of_id;
	struct rn5t618 *priv;
	int ret;

	of_id = FUNC10(rn5t618_of_match, &i2c->dev);
	if (!of_id) {
		FUNC3(&i2c->dev, "Failed to find matching DT ID\n");
		return -EINVAL;
	}

	priv = FUNC5(&i2c->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	FUNC8(i2c, priv);
	priv->variant = (long)of_id->data;

	priv->regmap = FUNC7(i2c, &rn5t618_regmap_config);
	if (FUNC1(priv->regmap)) {
		ret = FUNC2(priv->regmap);
		FUNC3(&i2c->dev, "regmap init failed: %d\n", ret);
		return ret;
	}

	ret = FUNC6(&i2c->dev, -1, rn5t618_cells,
				   FUNC0(rn5t618_cells), NULL, 0, NULL);
	if (ret) {
		FUNC3(&i2c->dev, "failed to add sub-devices: %d\n", ret);
		return ret;
	}

	rn5t618_pm_power_off = priv;
	if (FUNC9(i2c->dev.of_node)) {
		if (!pm_power_off)
			pm_power_off = rn5t618_power_off;
		else
			FUNC4(&i2c->dev, "Poweroff callback already assigned\n");
	}

	rn5t618_restart_handler.notifier_call = rn5t618_restart;
	rn5t618_restart_handler.priority = 192;

	ret = FUNC11(&rn5t618_restart_handler);
	if (ret) {
		FUNC3(&i2c->dev, "cannot register restart handler, %d\n", ret);
		return ret;
	}

	return 0;
}