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
typedef  int u16 ;
struct smsc9420_pdata {int /*<<< orphan*/  phy_lock; int /*<<< orphan*/  dev; } ;
struct mii_bus {scalar_t__ priv; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  MII_ACCESS ; 
 int MII_ACCESS_MII_BUSY_ ; 
 int MII_ACCESS_MII_READ_ ; 
 int /*<<< orphan*/  MII_DATA ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC0 (struct smsc9420_pdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct smsc9420_pdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct smsc9420_pdata*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct mii_bus *bus, int phyaddr, int regidx)
{
	struct smsc9420_pdata *pd = (struct smsc9420_pdata *)bus->priv;
	unsigned long flags;
	u32 addr;
	int i, reg = -EIO;

	FUNC3(&pd->phy_lock, flags);

	/*  confirm MII not busy */
	if ((FUNC1(pd, MII_ACCESS) & MII_ACCESS_MII_BUSY_)) {
		FUNC0(pd, drv, pd->dev, "MII is busy???\n");
		goto out;
	}

	/* set the address, index & direction (read from PHY) */
	addr = ((phyaddr & 0x1F) << 11) | ((regidx & 0x1F) << 6) |
		MII_ACCESS_MII_READ_;
	FUNC2(pd, MII_ACCESS, addr);

	/* wait for read to complete with 50us timeout */
	for (i = 0; i < 5; i++) {
		if (!(FUNC1(pd, MII_ACCESS) &
			MII_ACCESS_MII_BUSY_)) {
			reg = (u16)FUNC1(pd, MII_DATA);
			goto out;
		}
		FUNC5(10);
	}

	FUNC0(pd, drv, pd->dev, "MII busy timeout!\n");

out:
	FUNC4(&pd->phy_lock, flags);
	return reg;
}