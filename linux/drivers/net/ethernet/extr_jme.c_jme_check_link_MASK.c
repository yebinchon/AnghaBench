#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  phy_id; } ;
struct jme_adapter {int phylink; int reg_ghc; int reg_gpreg1; int /*<<< orphan*/  dev; int /*<<< orphan*/  chiprev; TYPE_2__* pdev; scalar_t__ fpgaver; TYPE_1__ mii_if; } ;
struct TYPE_4__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int BMCR_FULLDPLX ; 
 int BMCR_SPEED100 ; 
 int BMCR_SPEED1000 ; 
 int GHC_DPX ; 
 int GHC_SPEED_1000M ; 
 int GHC_SPEED_100M ; 
 int GHC_SPEED_10M ; 
 int GPREG1_HALFMODEPATCH ; 
 int GPREG1_RSSPATCH ; 
 int /*<<< orphan*/  JME_GHC ; 
 int /*<<< orphan*/  JME_GPREG1 ; 
 int /*<<< orphan*/  JME_PHY_LINK ; 
 int JME_SPDRSV_TIMEOUT ; 
 int /*<<< orphan*/  JME_TXMCS ; 
 int /*<<< orphan*/  JME_TXTRHD ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int PHY_LINK_AUTONEG_COMPLETE ; 
 int PHY_LINK_DUPLEX ; 
 int PHY_LINK_MDI_STAT ; 
 int PHY_LINK_SPEEDDPU_RESOLVED ; 
#define  PHY_LINK_SPEED_1000M 130 
#define  PHY_LINK_SPEED_100M 129 
#define  PHY_LINK_SPEED_10M 128 
 int PHY_LINK_SPEED_MASK ; 
 int PHY_LINK_UP ; 
 int TXMCS_BACKOFF ; 
 int TXMCS_CARRIERSENSE ; 
 int TXMCS_COLLISION ; 
 int TXMCS_DEFAULT ; 
 int TXTRHD_FULLDUPLEX ; 
 int TXTRHD_HALFDUPLEX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct jme_adapter*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct jme_adapter*) ; 
 int FUNC5 (struct jme_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct jme_adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  link ; 
 struct jme_adapter* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct jme_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

__attribute__((used)) static int
FUNC14(struct net_device *netdev, int testonly)
{
	struct jme_adapter *jme = FUNC7(netdev);
	u32 phylink, cnt = JME_SPDRSV_TIMEOUT, bmcr;
	char linkmsg[64];
	int rc = 0;

	linkmsg[0] = '\0';

	if (jme->fpgaver)
		phylink = FUNC1(jme);
	else
		phylink = FUNC5(jme, JME_PHY_LINK);

	if (phylink & PHY_LINK_UP) {
		if (!(phylink & PHY_LINK_AUTONEG_COMPLETE)) {
			/*
			 * If we did not enable AN
			 * Speed/Duplex Info should be obtained from SMI
			 */
			phylink = PHY_LINK_UP;

			bmcr = FUNC2(jme->dev,
						jme->mii_if.phy_id,
						MII_BMCR);

			phylink |= ((bmcr & BMCR_SPEED1000) &&
					(bmcr & BMCR_SPEED100) == 0) ?
					PHY_LINK_SPEED_1000M :
					(bmcr & BMCR_SPEED100) ?
					PHY_LINK_SPEED_100M :
					PHY_LINK_SPEED_10M;

			phylink |= (bmcr & BMCR_FULLDPLX) ?
					 PHY_LINK_DUPLEX : 0;

			FUNC12(linkmsg, "Forced: ");
		} else {
			/*
			 * Keep polling for speed/duplex resolve complete
			 */
			while (!(phylink & PHY_LINK_SPEEDDPU_RESOLVED) &&
				--cnt) {

				FUNC13(1);

				if (jme->fpgaver)
					phylink = FUNC1(jme);
				else
					phylink = FUNC5(jme, JME_PHY_LINK);
			}
			if (!cnt)
				FUNC11("Waiting speed resolve timeout\n");

			FUNC12(linkmsg, "ANed: ");
		}

		if (jme->phylink == phylink) {
			rc = 1;
			goto out;
		}
		if (testonly)
			goto out;

		jme->phylink = phylink;

		/*
		 * The speed/duplex setting of jme->reg_ghc already cleared
		 * by jme_reset_mac_processor()
		 */
		switch (phylink & PHY_LINK_SPEED_MASK) {
		case PHY_LINK_SPEED_10M:
			jme->reg_ghc |= GHC_SPEED_10M;
			FUNC12(linkmsg, "10 Mbps, ");
			break;
		case PHY_LINK_SPEED_100M:
			jme->reg_ghc |= GHC_SPEED_100M;
			FUNC12(linkmsg, "100 Mbps, ");
			break;
		case PHY_LINK_SPEED_1000M:
			jme->reg_ghc |= GHC_SPEED_1000M;
			FUNC12(linkmsg, "1000 Mbps, ");
			break;
		default:
			break;
		}

		if (phylink & PHY_LINK_DUPLEX) {
			FUNC6(jme, JME_TXMCS, TXMCS_DEFAULT);
			FUNC6(jme, JME_TXTRHD, TXTRHD_FULLDUPLEX);
			jme->reg_ghc |= GHC_DPX;
		} else {
			FUNC6(jme, JME_TXMCS, TXMCS_DEFAULT |
						TXMCS_BACKOFF |
						TXMCS_CARRIERSENSE |
						TXMCS_COLLISION);
			FUNC6(jme, JME_TXTRHD, TXTRHD_HALFDUPLEX);
		}

		FUNC6(jme, JME_GHC, jme->reg_ghc);

		if (FUNC0(jme->pdev->device, jme->chiprev)) {
			jme->reg_gpreg1 &= ~(GPREG1_HALFMODEPATCH |
					     GPREG1_RSSPATCH);
			if (!(phylink & PHY_LINK_DUPLEX))
				jme->reg_gpreg1 |= GPREG1_HALFMODEPATCH;
			switch (phylink & PHY_LINK_SPEED_MASK) {
			case PHY_LINK_SPEED_10M:
				FUNC4(jme);
				jme->reg_gpreg1 |= GPREG1_RSSPATCH;
				break;
			case PHY_LINK_SPEED_100M:
				FUNC3(jme);
				jme->reg_gpreg1 |= GPREG1_RSSPATCH;
				break;
			case PHY_LINK_SPEED_1000M:
				FUNC4(jme);
				break;
			default:
				break;
			}
		}
		FUNC6(jme, JME_GPREG1, jme->reg_gpreg1);

		FUNC12(linkmsg, (phylink & PHY_LINK_DUPLEX) ?
					"Full-Duplex, " :
					"Half-Duplex, ");
		FUNC12(linkmsg, (phylink & PHY_LINK_MDI_STAT) ?
					"MDI-X" :
					"MDI");
		FUNC10(jme, link, jme->dev, "Link is up at %s\n", linkmsg);
		FUNC9(netdev);
	} else {
		if (testonly)
			goto out;

		FUNC10(jme, link, jme->dev, "Link is down\n");
		jme->phylink = 0;
		FUNC8(netdev);
	}

out:
	return rc;
}