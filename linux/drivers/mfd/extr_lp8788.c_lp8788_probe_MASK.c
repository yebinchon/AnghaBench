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
struct lp8788_platform_data {int dummy; } ;
struct lp8788 {int /*<<< orphan*/ * dev; struct lp8788_platform_data* pdata; int /*<<< orphan*/  regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 struct lp8788_platform_data* FUNC4 (int /*<<< orphan*/ *) ; 
 struct lp8788* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct lp8788*) ; 
 int /*<<< orphan*/  lp8788_devs ; 
 int FUNC8 (struct lp8788*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct lp8788*) ; 
 int /*<<< orphan*/  lp8788_regmap_config ; 
 int FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct i2c_client *cl, const struct i2c_device_id *id)
{
	struct lp8788 *lp;
	struct lp8788_platform_data *pdata = FUNC4(&cl->dev);
	int ret;

	lp = FUNC5(&cl->dev, sizeof(struct lp8788), GFP_KERNEL);
	if (!lp)
		return -ENOMEM;

	lp->regmap = FUNC6(cl, &lp8788_regmap_config);
	if (FUNC1(lp->regmap)) {
		ret = FUNC2(lp->regmap);
		FUNC3(&cl->dev, "regmap init i2c err: %d\n", ret);
		return ret;
	}

	lp->pdata = pdata;
	lp->dev = &cl->dev;
	FUNC7(cl, lp);

	ret = FUNC9(lp);
	if (ret)
		return ret;

	ret = FUNC8(lp, cl->irq);
	if (ret)
		return ret;

	return FUNC10(lp->dev, -1, lp8788_devs,
			       FUNC0(lp8788_devs), NULL, 0, NULL);
}