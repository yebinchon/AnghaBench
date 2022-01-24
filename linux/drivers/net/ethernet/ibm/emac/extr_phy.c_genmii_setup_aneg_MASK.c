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
struct mii_phy {int advertising; int features; scalar_t__ asym_pause; scalar_t__ pause; int /*<<< orphan*/  duplex; int /*<<< orphan*/  speed; int /*<<< orphan*/  autoneg; } ;

/* Variables and functions */
 int ADVERTISED_1000baseT_Full ; 
 int ADVERTISED_1000baseT_Half ; 
 int ADVERTISED_100baseT_Full ; 
 int ADVERTISED_100baseT_Half ; 
 int ADVERTISED_10baseT_Full ; 
 int ADVERTISED_10baseT_Half ; 
 int ADVERTISED_Asym_Pause ; 
 int ADVERTISED_Pause ; 
 int ADVERTISE_1000FULL ; 
 int ADVERTISE_1000HALF ; 
 int ADVERTISE_100BASE4 ; 
 int ADVERTISE_100FULL ; 
 int ADVERTISE_100HALF ; 
 int ADVERTISE_10FULL ; 
 int ADVERTISE_10HALF ; 
 int ADVERTISE_ALL ; 
 int ADVERTISE_PAUSE_ASYM ; 
 int ADVERTISE_PAUSE_CAP ; 
 int /*<<< orphan*/  AUTONEG_ENABLE ; 
 int BMCR_ANENABLE ; 
 int BMCR_ANRESTART ; 
 int BMCR_FULLDPLX ; 
 int BMCR_SPEED100 ; 
 int BMCR_SPEED1000 ; 
 int /*<<< orphan*/  DUPLEX_HALF ; 
 int /*<<< orphan*/  MII_ADVERTISE ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int /*<<< orphan*/  MII_CTRL1000 ; 
 int /*<<< orphan*/  SPEED_10 ; 
 int SUPPORTED_1000baseT_Full ; 
 int SUPPORTED_1000baseT_Half ; 
 int FUNC0 (struct mii_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mii_phy*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct mii_phy *phy, u32 advertise)
{
	int ctl, adv;

	phy->autoneg = AUTONEG_ENABLE;
	phy->speed = SPEED_10;
	phy->duplex = DUPLEX_HALF;
	phy->pause = phy->asym_pause = 0;
	phy->advertising = advertise;

	ctl = FUNC0(phy, MII_BMCR);
	if (ctl < 0)
		return ctl;
	ctl &= ~(BMCR_FULLDPLX | BMCR_SPEED100 | BMCR_SPEED1000 | BMCR_ANENABLE);

	/* First clear the PHY */
	FUNC1(phy, MII_BMCR, ctl);

	/* Setup standard advertise */
	adv = FUNC0(phy, MII_ADVERTISE);
	if (adv < 0)
		return adv;
	adv &= ~(ADVERTISE_ALL | ADVERTISE_100BASE4 | ADVERTISE_PAUSE_CAP |
		 ADVERTISE_PAUSE_ASYM);
	if (advertise & ADVERTISED_10baseT_Half)
		adv |= ADVERTISE_10HALF;
	if (advertise & ADVERTISED_10baseT_Full)
		adv |= ADVERTISE_10FULL;
	if (advertise & ADVERTISED_100baseT_Half)
		adv |= ADVERTISE_100HALF;
	if (advertise & ADVERTISED_100baseT_Full)
		adv |= ADVERTISE_100FULL;
	if (advertise & ADVERTISED_Pause)
		adv |= ADVERTISE_PAUSE_CAP;
	if (advertise & ADVERTISED_Asym_Pause)
		adv |= ADVERTISE_PAUSE_ASYM;
	FUNC1(phy, MII_ADVERTISE, adv);

	if (phy->features &
	    (SUPPORTED_1000baseT_Full | SUPPORTED_1000baseT_Half)) {
		adv = FUNC0(phy, MII_CTRL1000);
		if (adv < 0)
			return adv;
		adv &= ~(ADVERTISE_1000FULL | ADVERTISE_1000HALF);
		if (advertise & ADVERTISED_1000baseT_Full)
			adv |= ADVERTISE_1000FULL;
		if (advertise & ADVERTISED_1000baseT_Half)
			adv |= ADVERTISE_1000HALF;
		FUNC1(phy, MII_CTRL1000, adv);
	}

	/* Start/Restart aneg */
	ctl = FUNC0(phy, MII_BMCR);
	ctl |= (BMCR_ANENABLE | BMCR_ANRESTART);
	FUNC1(phy, MII_BMCR, ctl);

	return 0;
}