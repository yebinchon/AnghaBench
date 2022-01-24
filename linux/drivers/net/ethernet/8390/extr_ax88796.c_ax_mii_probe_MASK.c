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
struct phy_device {int /*<<< orphan*/  irq; TYPE_1__* drv; } ;
struct net_device {int dummy; } ;
struct ax_device {int /*<<< orphan*/  mii_bus; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  PHY_INTERFACE_MODE_MII ; 
 int /*<<< orphan*/  SPEED_100 ; 
 int /*<<< orphan*/  ax_handle_link_change ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct net_device*,struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct phy_device* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct phy_device*) ; 
 struct ax_device* FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev)
{
	struct ax_device  *ax = FUNC6(dev);
	struct phy_device *phy_dev = NULL;
	int ret;

	/* find the first phy */
	phy_dev = FUNC3(ax->mii_bus);
	if (!phy_dev) {
		FUNC0(dev, "no PHY found\n");
		return -ENODEV;
	}

	ret = FUNC2(dev, phy_dev, ax_handle_link_change,
				 PHY_INTERFACE_MODE_MII);
	if (ret) {
		FUNC0(dev, "Could not attach to PHY\n");
		return ret;
	}

	FUNC4(phy_dev, SPEED_100);

	FUNC1(dev, "PHY driver [%s] (mii_bus:phy_addr=%s, irq=%d)\n",
		    phy_dev->drv->name, FUNC5(phy_dev), phy_dev->irq);

	return 0;
}