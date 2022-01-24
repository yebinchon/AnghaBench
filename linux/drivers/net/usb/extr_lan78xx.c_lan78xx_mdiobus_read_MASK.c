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
typedef  int u32 ;
struct mii_bus {struct lan78xx_net* priv; } ;
struct lan78xx_net {int /*<<< orphan*/  intf; int /*<<< orphan*/  phy_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  MII_ACC ; 
 int /*<<< orphan*/  MII_DATA ; 
 int /*<<< orphan*/  MII_READ ; 
 int FUNC0 (struct lan78xx_net*) ; 
 int FUNC1 (struct lan78xx_net*,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (struct lan78xx_net*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct mii_bus *bus, int phy_id, int idx)
{
	struct lan78xx_net *dev = bus->priv;
	u32 val, addr;
	int ret;

	ret = FUNC6(dev->intf);
	if (ret < 0)
		return ret;

	FUNC4(&dev->phy_mutex);

	/* confirm MII not busy */
	ret = FUNC0(dev);
	if (ret < 0)
		goto done;

	/* set the address, index & direction (read from PHY) */
	addr = FUNC3(phy_id, idx, MII_READ);
	ret = FUNC2(dev, MII_ACC, addr);

	ret = FUNC0(dev);
	if (ret < 0)
		goto done;

	ret = FUNC1(dev, MII_DATA, &val);

	ret = (int)(val & 0xFFFF);

done:
	FUNC5(&dev->phy_mutex);
	FUNC7(dev->intf);

	return ret;
}