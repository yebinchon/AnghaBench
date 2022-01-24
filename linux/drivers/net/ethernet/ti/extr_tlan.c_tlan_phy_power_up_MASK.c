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
typedef  int /*<<< orphan*/  u16 ;
struct tlan_priv {size_t phy_num; int /*<<< orphan*/ * phy; } ;
struct net_device {int /*<<< orphan*/  base_addr; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  MII_GC_LOOPBK ; 
 int /*<<< orphan*/  MII_GEN_CTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TLAN_DEBUG_GNRL ; 
 int /*<<< orphan*/  TLAN_TIMER_PHY_RESET ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct tlan_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev)
{
	struct tlan_priv	*priv = FUNC2(dev);
	u16		value;

	FUNC0(TLAN_DEBUG_GNRL, "%s: Powering up PHY.\n", dev->name);
	FUNC3(dev->base_addr);
	value = MII_GC_LOOPBK;
	FUNC4(dev, priv->phy[priv->phy_num], MII_GEN_CTL, value);
	FUNC3(dev->base_addr);
	/* Wait for 500 ms and reset the
	 * transceiver.  The TLAN docs say both 50 ms and
	 * 500 ms, so do the longer, just in case.
	 */
	FUNC5(dev, FUNC1(500), TLAN_TIMER_PHY_RESET);

}