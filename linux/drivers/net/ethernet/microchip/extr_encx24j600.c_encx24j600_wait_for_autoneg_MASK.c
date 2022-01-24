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
struct encx24j600_priv {scalar_t__ speed; int full_duplex; int /*<<< orphan*/  autoneg; struct net_device* ndev; } ;

/* Variables and functions */
 int ANDONE ; 
 int /*<<< orphan*/  AUTONEG_DISABLE ; 
 int /*<<< orphan*/  ESTAT ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FULDPX ; 
 int /*<<< orphan*/  MABBIPG ; 
 int /*<<< orphan*/  MACLCON ; 
 int /*<<< orphan*/  MACON2 ; 
 int /*<<< orphan*/  PHSTAT1 ; 
 int /*<<< orphan*/  PHSTAT3 ; 
 int PHY3DPX ; 
 int PHY3SPD100 ; 
 int PHYDPX ; 
 scalar_t__ SPEED_10 ; 
 scalar_t__ SPEED_100 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC1 (struct encx24j600_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct encx24j600_priv*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct encx24j600_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct encx24j600_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct encx24j600_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct encx24j600_priv*,int /*<<< orphan*/ ,int) ; 
 unsigned long jiffies ; 
 unsigned long FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct encx24j600_priv*,int /*<<< orphan*/ ,struct net_device*,char*,...) ; 
 scalar_t__ FUNC9 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC10(struct encx24j600_priv *priv)
{
	struct net_device *dev = priv->ndev;
	unsigned long timeout = jiffies + FUNC7(2000);
	u16 phstat1;
	u16 estat;
	int ret = 0;

	phstat1 = FUNC2(priv, PHSTAT1);
	while ((phstat1 & ANDONE) == 0) {
		if (FUNC9(jiffies, timeout)) {
			u16 phstat3;

			FUNC8(priv, drv, dev, "timeout waiting for autoneg done\n");

			priv->autoneg = AUTONEG_DISABLE;
			phstat3 = FUNC2(priv, PHSTAT3);
			priv->speed = (phstat3 & PHY3SPD100)
				      ? SPEED_100 : SPEED_10;
			priv->full_duplex = (phstat3 & PHY3DPX) ? 1 : 0;
			FUNC5(priv);
			FUNC8(priv, drv, dev, "Using parallel detection: %s/%s",
				     priv->speed == SPEED_100 ? "100" : "10",
				     priv->full_duplex ? "Full" : "Half");

			return -ETIMEDOUT;
		}
		FUNC0();
		phstat1 = FUNC2(priv, PHSTAT1);
	}

	estat = FUNC3(priv, ESTAT);
	if (estat & PHYDPX) {
		FUNC4(priv, MACON2, FULDPX);
		FUNC6(priv, MABBIPG, 0x15);
	} else {
		FUNC1(priv, MACON2, FULDPX);
		FUNC6(priv, MABBIPG, 0x12);
		/* Max retransmittions attempt  */
		FUNC6(priv, MACLCON, 0x370f);
	}

	return ret;
}