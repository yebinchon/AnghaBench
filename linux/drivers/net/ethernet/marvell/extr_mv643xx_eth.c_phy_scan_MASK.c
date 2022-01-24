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
struct phy_device {int dummy; } ;
struct mv643xx_eth_private {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  phy_id ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 struct phy_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct phy_device*) ; 
 int /*<<< orphan*/  MII_BUS_ID_SIZE ; 
 int MV643XX_ETH_PHY_ADDR_DEFAULT ; 
 char* PHY_ID_FMT ; 
 int /*<<< orphan*/  FUNC2 (struct mv643xx_eth_private*) ; 
 int /*<<< orphan*/  mv643xx_eth_adjust_link ; 
 int FUNC3 (struct mv643xx_eth_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct mv643xx_eth_private*,int) ; 
 struct phy_device* FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*,int) ; 

__attribute__((used)) static struct phy_device *FUNC7(struct mv643xx_eth_private *mp,
				   int phy_addr)
{
	struct phy_device *phydev;
	int start;
	int num;
	int i;
	char phy_id[MII_BUS_ID_SIZE + 3];

	if (phy_addr == MV643XX_ETH_PHY_ADDR_DEFAULT) {
		start = FUNC3(mp) & 0x1f;
		num = 32;
	} else {
		start = phy_addr & 0x1f;
		num = 1;
	}

	/* Attempt to connect to the PHY using orion-mdio */
	phydev = FUNC0(-ENODEV);
	for (i = 0; i < num; i++) {
		int addr = (start + i) & 0x1f;

		FUNC6(phy_id, sizeof(phy_id), PHY_ID_FMT,
				"orion-mdio-mii", addr);

		phydev = FUNC5(mp->dev, phy_id, mv643xx_eth_adjust_link,
				     FUNC2(mp));
		if (!FUNC1(phydev)) {
			FUNC4(mp, addr);
			break;
		}
	}

	return phydev;
}