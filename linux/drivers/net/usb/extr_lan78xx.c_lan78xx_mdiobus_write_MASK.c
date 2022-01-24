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
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct mii_bus {struct lan78xx_net* priv; } ;
struct lan78xx_net {int /*<<< orphan*/  intf; int /*<<< orphan*/  phy_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  MII_ACC ; 
 int /*<<< orphan*/  MII_DATA ; 
 int /*<<< orphan*/  MII_WRITE ; 
 int FUNC0 (struct lan78xx_net*) ; 
 int FUNC1 (struct lan78xx_net*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct mii_bus *bus, int phy_id, int idx,
				 u16 regval)
{
	struct lan78xx_net *dev = bus->priv;
	u32 val, addr;
	int ret;

	ret = FUNC5(dev->intf);
	if (ret < 0)
		return ret;

	FUNC3(&dev->phy_mutex);

	/* confirm MII not busy */
	ret = FUNC0(dev);
	if (ret < 0)
		goto done;

	val = (u32)regval;
	ret = FUNC1(dev, MII_DATA, val);

	/* set the address, index & direction (write to PHY) */
	addr = FUNC2(phy_id, idx, MII_WRITE);
	ret = FUNC1(dev, MII_ACC, addr);

	ret = FUNC0(dev);
	if (ret < 0)
		goto done;

done:
	FUNC4(&dev->phy_mutex);
	FUNC6(dev->intf);
	return 0;
}