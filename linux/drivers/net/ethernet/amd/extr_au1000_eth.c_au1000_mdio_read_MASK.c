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
typedef  int u32 ;
struct net_device {int dummy; } ;
struct au1000_private {TYPE_1__* mac; } ;
struct TYPE_2__ {int mii_control; int mii_data; } ;

/* Variables and functions */
 int MAC_MII_BUSY ; 
 int MAC_MII_READ ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*) ; 
 struct au1000_private* FUNC4 (struct net_device*) ; 
 int FUNC5 (int* const) ; 
 int /*<<< orphan*/  FUNC6 (int,int* const) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev, int phy_addr, int reg)
{
	struct au1000_private *aup = FUNC4(dev);
	u32 *const mii_control_reg = &aup->mac->mii_control;
	u32 *const mii_data_reg = &aup->mac->mii_data;
	u32 timedout = 20;
	u32 mii_control;

	while (FUNC5(mii_control_reg) & MAC_MII_BUSY) {
		FUNC2(1);
		if (--timedout == 0) {
			FUNC3(dev, "read_MII busy timeout!!\n");
			return -1;
		}
	}

	mii_control = FUNC1(reg) |
		FUNC0(phy_addr) | MAC_MII_READ;

	FUNC6(mii_control, mii_control_reg);

	timedout = 20;
	while (FUNC5(mii_control_reg) & MAC_MII_BUSY) {
		FUNC2(1);
		if (--timedout == 0) {
			FUNC3(dev, "mdio_read busy timeout!!\n");
			return -1;
		}
	}
	return FUNC5(mii_data_reg);
}