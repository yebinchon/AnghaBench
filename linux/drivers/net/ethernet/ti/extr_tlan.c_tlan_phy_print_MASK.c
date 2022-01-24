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
typedef  scalar_t__ u16 ;
struct tlan_priv {scalar_t__* phy; size_t phy_num; TYPE_1__* adapter; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int TLAN_ADAPTER_UNMANAGED_PHY ; 
 scalar_t__ TLAN_PHY_MAX_ADDR ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*,...) ; 
 struct tlan_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,scalar_t__,scalar_t__,scalar_t__*) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
	struct tlan_priv *priv = FUNC1(dev);
	u16 i, data0, data1, data2, data3, phy;

	phy = priv->phy[priv->phy_num];

	if (priv->adapter->flags & TLAN_ADAPTER_UNMANAGED_PHY) {
		FUNC0(dev, "Unmanaged PHY\n");
	} else if (phy <= TLAN_PHY_MAX_ADDR) {
		FUNC0(dev, "PHY 0x%02x\n", phy);
		FUNC2("   Off.  +0     +1     +2     +3\n");
		for (i = 0; i < 0x20; i += 4) {
			FUNC3(dev, phy, i, &data0);
			FUNC3(dev, phy, i + 1, &data1);
			FUNC3(dev, phy, i + 2, &data2);
			FUNC3(dev, phy, i + 3, &data3);
			FUNC2("   0x%02x 0x%04hx 0x%04hx 0x%04hx 0x%04hx\n",
				i, data0, data1, data2, data3);
		}
	} else {
		FUNC0(dev, "Invalid PHY\n");
	}

}