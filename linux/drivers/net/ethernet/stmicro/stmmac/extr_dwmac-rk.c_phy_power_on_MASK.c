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
struct rk_priv_data {TYPE_1__* pdev; struct regulator* regulator; } ;
struct regulator {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int FUNC1 (struct regulator*) ; 
 int FUNC2 (struct regulator*) ; 

__attribute__((used)) static int FUNC3(struct rk_priv_data *bsp_priv, bool enable)
{
	struct regulator *ldo = bsp_priv->regulator;
	int ret;
	struct device *dev = &bsp_priv->pdev->dev;

	if (!ldo)
		return 0;

	if (enable) {
		ret = FUNC2(ldo);
		if (ret)
			FUNC0(dev, "fail to enable phy-supply\n");
	} else {
		ret = FUNC1(ldo);
		if (ret)
			FUNC0(dev, "fail to disable phy-supply\n");
	}

	return 0;
}