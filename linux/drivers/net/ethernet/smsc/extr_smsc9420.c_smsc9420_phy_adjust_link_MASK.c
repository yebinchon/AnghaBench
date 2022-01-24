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
typedef  int /*<<< orphan*/  u32 ;
struct smsc9420_pdata {scalar_t__ last_duplex; int last_carrier; int /*<<< orphan*/  dev; } ;
struct phy_device {scalar_t__ duplex; } ;
struct net_device {struct phy_device* phydev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAC_CR ; 
 int /*<<< orphan*/  MAC_CR_FDPX_ ; 
 int /*<<< orphan*/  link ; 
 struct smsc9420_pdata* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct smsc9420_pdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct smsc9420_pdata*) ; 
 int /*<<< orphan*/  FUNC4 (struct smsc9420_pdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct smsc9420_pdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev)
{
	struct smsc9420_pdata *pd = FUNC0(dev);
	struct phy_device *phy_dev = dev->phydev;
	int carrier;

	if (phy_dev->duplex != pd->last_duplex) {
		u32 mac_cr = FUNC4(pd, MAC_CR);
		if (phy_dev->duplex) {
			FUNC2(pd, link, pd->dev, "full duplex mode\n");
			mac_cr |= MAC_CR_FDPX_;
		} else {
			FUNC2(pd, link, pd->dev, "half duplex mode\n");
			mac_cr &= ~MAC_CR_FDPX_;
		}
		FUNC5(pd, MAC_CR, mac_cr);

		FUNC3(pd);
		pd->last_duplex = phy_dev->duplex;
	}

	carrier = FUNC1(dev);
	if (carrier != pd->last_carrier) {
		if (carrier)
			FUNC2(pd, link, pd->dev, "carrier OK\n");
		else
			FUNC2(pd, link, pd->dev, "no carrier\n");
		pd->last_carrier = carrier;
	}
}