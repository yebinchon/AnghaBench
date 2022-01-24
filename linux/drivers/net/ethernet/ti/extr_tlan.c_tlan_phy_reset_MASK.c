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
struct tlan_priv {int* phy; size_t phy_num; } ;
struct net_device {int /*<<< orphan*/  base_addr; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 unsigned long HZ ; 
 int MII_GC_LOOPBK ; 
 int MII_GC_RESET ; 
 int /*<<< orphan*/  MII_GEN_CTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TLAN_DEBUG_GNRL ; 
 int /*<<< orphan*/  TLAN_TIMER_PHY_START_LINK ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*) ; 
 struct tlan_priv* FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct net_device *dev)
{
	struct tlan_priv	*priv = FUNC3(dev);
	u16		phy;
	u16		value;
	unsigned long timeout = jiffies + HZ;

	phy = priv->phy[priv->phy_num];

	FUNC0(TLAN_DEBUG_GNRL, "%s: Resetting PHY.\n", dev->name);
	FUNC6(dev->base_addr);
	value = MII_GC_LOOPBK | MII_GC_RESET;
	FUNC7(dev, phy, MII_GEN_CTL, value);
	do {
		FUNC5(dev, phy, MII_GEN_CTL, &value);
		if (FUNC4(jiffies, timeout)) {
			FUNC2(dev, "PHY reset timeout\n");
			return;
		}
	} while (value & MII_GC_RESET);

	/* Wait for 500 ms and initialize.
	 * I don't remember why I wait this long.
	 * I've changed this to 50ms, as it seems long enough.
	 */
	FUNC8(dev, FUNC1(50), TLAN_TIMER_PHY_START_LINK);

}