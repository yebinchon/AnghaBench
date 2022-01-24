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
struct mii_bus {struct lan743x_adapter* priv; } ;
struct lan743x_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAC_MII_ACC ; 
 int /*<<< orphan*/  MAC_MII_DATA ; 
 int /*<<< orphan*/  MAC_MII_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct lan743x_adapter*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct lan743x_adapter*) ; 

__attribute__((used)) static int FUNC3(struct mii_bus *bus,
				 int phy_id, int index, u16 regval)
{
	struct lan743x_adapter *adapter = bus->priv;
	u32 val, mii_access;
	int ret;

	/* confirm MII not busy */
	ret = FUNC2(adapter);
	if (ret < 0)
		return ret;
	val = (u32)regval;
	FUNC0(adapter, MAC_MII_DATA, val);

	/* set the address, index & direction (write to PHY) */
	mii_access = FUNC1(phy_id, index, MAC_MII_WRITE);
	FUNC0(adapter, MAC_MII_ACC, mii_access);
	ret = FUNC2(adapter);
	return ret;
}