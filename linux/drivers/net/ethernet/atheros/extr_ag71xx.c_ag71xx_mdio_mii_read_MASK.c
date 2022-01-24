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
struct mii_bus {struct ag71xx* priv; } ;
struct ag71xx {int /*<<< orphan*/  ndev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AG71XX_REG_MII_ADDR ; 
 int /*<<< orphan*/  AG71XX_REG_MII_CMD ; 
 int /*<<< orphan*/  AG71XX_REG_MII_STATUS ; 
 int MII_ADDR_SHIFT ; 
 int MII_CMD_READ ; 
 int FUNC0 (struct ag71xx*) ; 
 int FUNC1 (struct ag71xx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ag71xx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC3 (struct ag71xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int,int) ; 

__attribute__((used)) static int FUNC4(struct mii_bus *bus, int addr, int reg)
{
	struct ag71xx *ag = bus->priv;
	int err, val;

	err = FUNC0(ag);
	if (err)
		return err;

	FUNC2(ag, AG71XX_REG_MII_ADDR,
		  ((addr & 0x1f) << MII_ADDR_SHIFT) | (reg & 0xff));
	/* enable read mode */
	FUNC2(ag, AG71XX_REG_MII_CMD, MII_CMD_READ);

	err = FUNC0(ag);
	if (err)
		return err;

	val = FUNC1(ag, AG71XX_REG_MII_STATUS);
	/* disable read mode */
	FUNC2(ag, AG71XX_REG_MII_CMD, 0);

	FUNC3(ag, link, ag->ndev, "mii_read: addr=%04x, reg=%04x, value=%04x\n",
		  addr, reg, val);

	return val;
}