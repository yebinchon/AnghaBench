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
struct mt7530_priv {struct mii_bus* bus; } ;
struct mii_bus {int (* write ) (struct mii_bus*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;int (* read ) (struct mii_bus*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MII_MMD_CTRL ; 
 int MII_MMD_CTRL_NOINCR ; 
 int /*<<< orphan*/  MII_MMD_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct mii_bus*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct mii_bus*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct mii_bus*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct mii_bus*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct mt7530_priv *priv, int prtad, int devad)
{
	struct mii_bus *bus = priv->bus;
	int value, ret;

	/* Write the desired MMD Devad */
	ret = bus->write(bus, 0, MII_MMD_CTRL, devad);
	if (ret < 0)
		goto err;

	/* Write the desired MMD register address */
	ret = bus->write(bus, 0, MII_MMD_DATA, prtad);
	if (ret < 0)
		goto err;

	/* Select the Function : DATA with no post increment */
	ret = bus->write(bus, 0, MII_MMD_CTRL, (devad | MII_MMD_CTRL_NOINCR));
	if (ret < 0)
		goto err;

	/* Read the content of the MMD's selected register */
	value = bus->read(bus, 0, MII_MMD_DATA);

	return value;
err:
	FUNC0(&bus->dev,  "failed to read mmd register\n");

	return ret;
}