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
struct tja11xx_priv {char* hwmon_name; int /*<<< orphan*/  hwmon_dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;
struct phy_device {TYPE_1__ mdio; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,struct phy_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC3 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tja11xx_priv* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char) ; 
 int /*<<< orphan*/  tja11xx_hwmon_chip_info ; 

__attribute__((used)) static int FUNC6(struct phy_device *phydev)
{
	struct device *dev = &phydev->mdio.dev;
	struct tja11xx_priv *priv;
	int i;

	priv = FUNC4(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->hwmon_name = FUNC3(dev, FUNC1(dev), GFP_KERNEL);
	if (!priv->hwmon_name)
		return -ENOMEM;

	for (i = 0; priv->hwmon_name[i]; i++)
		if (FUNC5(priv->hwmon_name[i]))
			priv->hwmon_name[i] = '_';

	priv->hwmon_dev =
		FUNC2(dev, priv->hwmon_name,
						     phydev,
						     &tja11xx_hwmon_chip_info,
						     NULL);

	return FUNC0(priv->hwmon_dev);
}