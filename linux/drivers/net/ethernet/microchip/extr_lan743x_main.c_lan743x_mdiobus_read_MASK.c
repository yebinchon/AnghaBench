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
struct mii_bus {struct lan743x_adapter* priv; } ;
struct lan743x_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAC_MII_ACC ; 
 int /*<<< orphan*/  MAC_MII_DATA ; 
 int /*<<< orphan*/  MAC_MII_READ ; 
 int FUNC0 (struct lan743x_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lan743x_adapter*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct lan743x_adapter*) ; 

__attribute__((used)) static int FUNC4(struct mii_bus *bus, int phy_id, int index)
{
	struct lan743x_adapter *adapter = bus->priv;
	u32 val, mii_access;
	int ret;

	/* comfirm MII not busy */
	ret = FUNC3(adapter);
	if (ret < 0)
		return ret;

	/* set the address, index & direction (read from PHY) */
	mii_access = FUNC2(phy_id, index, MAC_MII_READ);
	FUNC1(adapter, MAC_MII_ACC, mii_access);
	ret = FUNC3(adapter);
	if (ret < 0)
		return ret;

	val = FUNC0(adapter, MAC_MII_DATA);
	return (int)(val & 0xFFFF);
}