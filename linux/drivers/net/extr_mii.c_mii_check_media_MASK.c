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
struct mii_if_info {int advertising; int (* mdio_read ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int full_duplex; int /*<<< orphan*/  dev; int /*<<< orphan*/  phy_id; scalar_t__ supports_gmii; scalar_t__ force_media; } ;

/* Variables and functions */
 int ADVERTISE_100FULL ; 
 int ADVERTISE_100HALF ; 
 int ADVERTISE_FULL ; 
 int LPA_1000FULL ; 
 int LPA_1000HALF ; 
 int /*<<< orphan*/  MII_ADVERTISE ; 
 int /*<<< orphan*/  MII_LPA ; 
 int /*<<< orphan*/  MII_STAT1000 ; 
 scalar_t__ FUNC0 (struct mii_if_info*) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

unsigned int FUNC9 (struct mii_if_info *mii,
			      unsigned int ok_to_print,
			      unsigned int init_media)
{
	unsigned int old_carrier, new_carrier;
	int advertise, lpa, media, duplex;
	int lpa2 = 0;

	/* check current and old link status */
	old_carrier = FUNC4(mii->dev) ? 1 : 0;
	new_carrier = (unsigned int) FUNC0(mii);

	/* if carrier state did not change, this is a "bounce",
	 * just exit as everything is already set correctly
	 */
	if ((!init_media) && (old_carrier == new_carrier))
		return 0; /* duplex did not change */

	/* no carrier, nothing much to do */
	if (!new_carrier) {
		FUNC3(mii->dev);
		if (ok_to_print)
			FUNC2(mii->dev, "link down\n");
		return 0; /* duplex did not change */
	}

	/*
	 * we have carrier, see who's on the other end
	 */
	FUNC5(mii->dev);

	if (mii->force_media) {
		if (ok_to_print)
			FUNC2(mii->dev, "link up\n");
		return 0; /* duplex did not change */
	}

	/* get MII advertise and LPA values */
	if ((!init_media) && (mii->advertising))
		advertise = mii->advertising;
	else {
		advertise = mii->mdio_read(mii->dev, mii->phy_id, MII_ADVERTISE);
		mii->advertising = advertise;
	}
	lpa = mii->mdio_read(mii->dev, mii->phy_id, MII_LPA);
	if (mii->supports_gmii)
		lpa2 = mii->mdio_read(mii->dev, mii->phy_id, MII_STAT1000);

	/* figure out media and duplex from advertise and LPA values */
	media = FUNC1(lpa & advertise);
	duplex = (media & ADVERTISE_FULL) ? 1 : 0;
	if (lpa2 & LPA_1000FULL)
		duplex = 1;

	if (ok_to_print)
		FUNC2(mii->dev, "link up, %uMbps, %s-duplex, lpa 0x%04X\n",
			    lpa2 & (LPA_1000FULL | LPA_1000HALF) ? 1000 :
			    media & (ADVERTISE_100FULL | ADVERTISE_100HALF) ?
			    100 : 10,
			    duplex ? "full" : "half",
			    lpa);

	if ((init_media) || (mii->full_duplex != duplex)) {
		mii->full_duplex = duplex;
		return 1; /* duplex changed */
	}

	return 0; /* duplex did not change */
}