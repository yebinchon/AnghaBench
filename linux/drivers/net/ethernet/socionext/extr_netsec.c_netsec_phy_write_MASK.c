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
struct netsec_priv {int /*<<< orphan*/  freq; } ;
struct mii_bus {struct netsec_priv* priv; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  GMAC_REG_GAR ; 
 int /*<<< orphan*/  GMAC_REG_GDR ; 
 int GMAC_REG_SHIFT_CR_GAR ; 
 int /*<<< orphan*/  MII_PHYSID1 ; 
 int NETSEC_GMAC_GAR_REG_GB ; 
 int NETSEC_GMAC_GAR_REG_GW ; 
 int NETSEC_GMAC_GAR_REG_SHIFT_GR ; 
 int NETSEC_GMAC_GAR_REG_SHIFT_PA ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct netsec_priv*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct netsec_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mii_bus*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct mii_bus *bus,
			    int phy_addr, int reg, u16 val)
{
	int status;
	struct netsec_priv *priv = bus->priv;

	if (FUNC2(priv, GMAC_REG_GDR, val))
		return -ETIMEDOUT;
	if (FUNC2(priv, GMAC_REG_GAR,
			     phy_addr << NETSEC_GMAC_GAR_REG_SHIFT_PA |
			     reg << NETSEC_GMAC_GAR_REG_SHIFT_GR |
			     NETSEC_GMAC_GAR_REG_GW | NETSEC_GMAC_GAR_REG_GB |
			     (FUNC0(priv->freq) <<
			      GMAC_REG_SHIFT_CR_GAR)))
		return -ETIMEDOUT;

	status = FUNC1(priv, GMAC_REG_GAR,
					    NETSEC_GMAC_GAR_REG_GB);

	/* Developerbox implements RTL8211E PHY and there is
	 * a compatibility problem with F_GMAC4.
	 * RTL8211E expects MDC clock must be kept toggling for several
	 * clock cycle with MDIO high before entering the IDLE state.
	 * To meet this requirement, netsec driver needs to issue dummy
	 * read(e.g. read PHYID1(offset 0x2) register) right after write.
	 */
	FUNC3(bus, phy_addr, MII_PHYSID1);

	return status;
}