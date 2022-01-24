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
struct net_device {int mtu; } ;
struct mv643xx_eth_private {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct mv643xx_eth_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*) ; 
 struct mv643xx_eth_private* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct mv643xx_eth_private*,int,int) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev, int new_mtu)
{
	struct mv643xx_eth_private *mp = FUNC4(dev);

	dev->mtu = new_mtu;
	FUNC1(mp);
	FUNC6(mp, 1000000000, 16777216);

	if (!FUNC5(dev))
		return 0;

	/*
	 * Stop and then re-open the interface. This will allocate RX
	 * skbs of the new MTU.
	 * There is a possible danger that the open will not succeed,
	 * due to memory being full.
	 */
	FUNC2(dev);
	if (FUNC0(dev)) {
		FUNC3(dev,
			   "fatal error on re-opening device after MTU change\n");
	}

	return 0;
}