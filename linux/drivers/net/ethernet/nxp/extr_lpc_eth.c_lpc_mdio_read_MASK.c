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
struct netdata_local {int /*<<< orphan*/  net_base; } ;
struct mii_bus {struct netdata_local* priv; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int LPC_MCMD_READ ; 
 int LPC_MIND_BUSY ; 
 int /*<<< orphan*/  FUNC4 () ; 
 unsigned long jiffies ; 
 unsigned long FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct mii_bus *bus, int phy_id, int phyreg)
{
	struct netdata_local *pldat = bus->priv;
	unsigned long timeout = jiffies + FUNC5(100);
	int lps;

	FUNC8(((phy_id << 8) | phyreg), FUNC0(pldat->net_base));
	FUNC8(LPC_MCMD_READ, FUNC1(pldat->net_base));

	/* Wait for unbusy status */
	while (FUNC6(FUNC2(pldat->net_base)) & LPC_MIND_BUSY) {
		if (FUNC7(jiffies, timeout))
			return -EIO;
		FUNC4();
	}

	lps = FUNC6(FUNC3(pldat->net_base));
	FUNC8(0, FUNC1(pldat->net_base));

	return lps;
}