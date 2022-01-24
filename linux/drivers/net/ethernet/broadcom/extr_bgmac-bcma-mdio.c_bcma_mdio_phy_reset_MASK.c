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
typedef  scalar_t__ u8 ;
struct mii_bus {struct bgmac* priv; } ;
struct bgmac {scalar_t__ phyaddr; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ BGMAC_PHY_NOREGS ; 
 int BMCR_RESET ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int /*<<< orphan*/  FUNC0 (struct bgmac*) ; 
 int FUNC1 (struct bgmac*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bgmac*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct mii_bus *bus)
{
	struct bgmac *bgmac = bus->priv;
	u8 phyaddr = bgmac->phyaddr;

	if (phyaddr == BGMAC_PHY_NOREGS)
		return 0;

	FUNC2(bgmac, phyaddr, MII_BMCR, BMCR_RESET);
	FUNC4(100);
	if (FUNC1(bgmac, phyaddr, MII_BMCR) & BMCR_RESET)
		FUNC3(bgmac->dev, "PHY reset failed\n");
	FUNC0(bgmac);

	return 0;
}