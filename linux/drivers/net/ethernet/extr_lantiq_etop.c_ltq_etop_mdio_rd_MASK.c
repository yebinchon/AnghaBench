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
struct mii_bus {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LTQ_ETOP_MDIO ; 
 int MDIO_ADDR_MASK ; 
 int MDIO_ADDR_OFFSET ; 
 int MDIO_READ ; 
 int MDIO_REG_MASK ; 
 int MDIO_REG_OFFSET ; 
 int MDIO_REQUEST ; 
 int MDIO_VAL_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct mii_bus *bus, int phy_addr, int phy_reg)
{
	u32 val = MDIO_REQUEST | MDIO_READ |
		((phy_addr & MDIO_ADDR_MASK) << MDIO_ADDR_OFFSET) |
		((phy_reg & MDIO_REG_MASK) << MDIO_REG_OFFSET);

	while (FUNC0(LTQ_ETOP_MDIO) & MDIO_REQUEST)
		;
	FUNC1(val, LTQ_ETOP_MDIO);
	while (FUNC0(LTQ_ETOP_MDIO) & MDIO_REQUEST)
		;
	val = FUNC0(LTQ_ETOP_MDIO) & MDIO_VAL_MASK;
	return val;
}