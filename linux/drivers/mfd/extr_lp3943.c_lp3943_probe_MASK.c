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
struct lp3943 {int /*<<< orphan*/  mux_cfg; struct device* dev; int /*<<< orphan*/  pdata; int /*<<< orphan*/  regmap; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 struct lp3943* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct lp3943*) ; 
 int /*<<< orphan*/  lp3943_devs ; 
 int /*<<< orphan*/  lp3943_mux_cfg ; 
 int /*<<< orphan*/  lp3943_regmap_config ; 

__attribute__((used)) static int FUNC8(struct i2c_client *cl, const struct i2c_device_id *id)
{
	struct lp3943 *lp3943;
	struct device *dev = &cl->dev;

	lp3943 = FUNC4(dev, sizeof(*lp3943), GFP_KERNEL);
	if (!lp3943)
		return -ENOMEM;

	lp3943->regmap = FUNC6(cl, &lp3943_regmap_config);
	if (FUNC1(lp3943->regmap))
		return FUNC2(lp3943->regmap);

	lp3943->pdata = FUNC3(dev);
	lp3943->dev = dev;
	lp3943->mux_cfg = lp3943_mux_cfg;
	FUNC7(cl, lp3943);

	return FUNC5(dev, -1, lp3943_devs,
				    FUNC0(lp3943_devs),
				    NULL, 0, NULL);
}