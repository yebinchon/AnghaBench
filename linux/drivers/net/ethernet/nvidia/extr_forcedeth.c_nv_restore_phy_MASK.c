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
typedef  int u16 ;
struct net_device {int dummy; } ;
struct fe_priv {scalar_t__ phy_oui; scalar_t__ phy_model; int /*<<< orphan*/  phyaddr; } ;

/* Variables and functions */
 int BMCR_ANENABLE ; 
 int BMCR_ANRESTART ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int MII_READ ; 
 scalar_t__ NV_CROSSOVER_DETECTION_DISABLED ; 
 scalar_t__ PHY_MODEL_REALTEK_8201 ; 
 scalar_t__ PHY_OUI_REALTEK ; 
 int PHY_REALTEK_INIT1 ; 
 int PHY_REALTEK_INIT3 ; 
 int PHY_REALTEK_INIT8 ; 
 int PHY_REALTEK_INIT_MSK1 ; 
 int /*<<< orphan*/  PHY_REALTEK_INIT_REG1 ; 
 int /*<<< orphan*/  PHY_REALTEK_INIT_REG2 ; 
 int FUNC0 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct fe_priv* FUNC1 (struct net_device*) ; 
 scalar_t__ phy_cross ; 

__attribute__((used)) static void FUNC2(struct net_device *dev)
{
	struct fe_priv *np = FUNC1(dev);
	u16 phy_reserved, mii_control;

	if (np->phy_oui == PHY_OUI_REALTEK &&
	    np->phy_model == PHY_MODEL_REALTEK_8201 &&
	    phy_cross == NV_CROSSOVER_DETECTION_DISABLED) {
		FUNC0(dev, np->phyaddr, PHY_REALTEK_INIT_REG1, PHY_REALTEK_INIT3);
		phy_reserved = FUNC0(dev, np->phyaddr, PHY_REALTEK_INIT_REG2, MII_READ);
		phy_reserved &= ~PHY_REALTEK_INIT_MSK1;
		phy_reserved |= PHY_REALTEK_INIT8;
		FUNC0(dev, np->phyaddr, PHY_REALTEK_INIT_REG2, phy_reserved);
		FUNC0(dev, np->phyaddr, PHY_REALTEK_INIT_REG1, PHY_REALTEK_INIT1);

		/* restart auto negotiation */
		mii_control = FUNC0(dev, np->phyaddr, MII_BMCR, MII_READ);
		mii_control |= (BMCR_ANRESTART | BMCR_ANENABLE);
		FUNC0(dev, np->phyaddr, MII_BMCR, mii_control);
	}
}