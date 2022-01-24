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
struct cas {int phy_type; scalar_t__ regs; int /*<<< orphan*/  phy_addr; } ;

/* Variables and functions */
 int BMSR_ANEGCOMPLETE ; 
 int BMSR_LSTATUS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int CAS_PHY_MII_MDIO1 ; 
 int MIF_CFG_MDIO_0 ; 
 int MIF_CFG_MDIO_1 ; 
 int MIF_CFG_PHY_SELECT ; 
 int MIF_CFG_POLL_EN ; 
 int /*<<< orphan*/  MIF_CFG_POLL_PHY ; 
 int /*<<< orphan*/  MIF_CFG_POLL_REG ; 
 int /*<<< orphan*/  MII_BMSR ; 
 scalar_t__ REG_MIF_CFG ; 
 scalar_t__ REG_MIF_MASK ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct cas *cp, const int enable)
{
	u32 cfg;

	cfg  = FUNC1(cp->regs + REG_MIF_CFG);
	cfg &= (MIF_CFG_MDIO_0 | MIF_CFG_MDIO_1);

	if (cp->phy_type & CAS_PHY_MII_MDIO1)
		cfg |= MIF_CFG_PHY_SELECT;

	/* poll and interrupt on link status change. */
	if (enable) {
		cfg |= MIF_CFG_POLL_EN;
		cfg |= FUNC0(MIF_CFG_POLL_REG, MII_BMSR);
		cfg |= FUNC0(MIF_CFG_POLL_PHY, cp->phy_addr);
	}
	FUNC2((enable) ? ~(BMSR_LSTATUS | BMSR_ANEGCOMPLETE) : 0xFFFF,
	       cp->regs + REG_MIF_MASK);
	FUNC2(cfg, cp->regs + REG_MIF_CFG);
}