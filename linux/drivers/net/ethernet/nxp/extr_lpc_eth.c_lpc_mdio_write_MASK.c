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
struct netdata_local {int /*<<< orphan*/  net_base; } ;
struct mii_bus {struct netdata_local* priv; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int LPC_MIND_BUSY ; 
 int /*<<< orphan*/  FUNC3 () ; 
 unsigned long jiffies ; 
 unsigned long FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct mii_bus *bus, int phy_id, int phyreg,
			u16 phydata)
{
	struct netdata_local *pldat = bus->priv;
	unsigned long timeout = jiffies + FUNC4(100);

	FUNC7(((phy_id << 8) | phyreg), FUNC0(pldat->net_base));
	FUNC7(phydata, FUNC2(pldat->net_base));

	/* Wait for completion */
	while (FUNC5(FUNC1(pldat->net_base)) & LPC_MIND_BUSY) {
		if (FUNC6(jiffies, timeout))
			return -EIO;
		FUNC3();
	}

	return 0;
}