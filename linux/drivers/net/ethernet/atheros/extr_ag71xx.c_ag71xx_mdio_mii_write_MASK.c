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
struct mii_bus {struct ag71xx* priv; } ;
struct ag71xx {int /*<<< orphan*/  ndev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AG71XX_REG_MII_ADDR ; 
 int /*<<< orphan*/  AG71XX_REG_MII_CTRL ; 
 int MII_ADDR_SHIFT ; 
 int FUNC0 (struct ag71xx*) ; 
 int /*<<< orphan*/  FUNC1 (struct ag71xx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC2 (struct ag71xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int,int) ; 

__attribute__((used)) static int FUNC3(struct mii_bus *bus, int addr, int reg,
				 u16 val)
{
	struct ag71xx *ag = bus->priv;

	FUNC2(ag, link, ag->ndev, "mii_write: addr=%04x, reg=%04x, value=%04x\n",
		  addr, reg, val);

	FUNC1(ag, AG71XX_REG_MII_ADDR,
		  ((addr & 0x1f) << MII_ADDR_SHIFT) | (reg & 0xff));
	FUNC1(ag, AG71XX_REG_MII_CTRL, val);

	return FUNC0(ag);
}