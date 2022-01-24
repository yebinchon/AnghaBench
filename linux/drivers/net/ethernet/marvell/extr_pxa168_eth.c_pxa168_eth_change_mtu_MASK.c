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
struct pxa168_eth_private {int dummy; } ;
struct net_device {int mtu; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct pxa168_eth_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int FUNC5 (struct pxa168_eth_private*) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev, int mtu)
{
	int retval;
	struct pxa168_eth_private *pep = FUNC1(dev);

	dev->mtu = mtu;
	retval = FUNC5(pep);

	if (!FUNC2(dev))
		return 0;

	/*
	 * Stop and then re-open the interface. This will allocate RX
	 * skbs of the new MTU.
	 * There is a possible danger that the open will not succeed,
	 * due to memory being full.
	 */
	FUNC4(dev);
	if (FUNC3(dev)) {
		FUNC0(&dev->dev,
			"fatal error on re-opening device after MTU change\n");
	}

	return 0;
}