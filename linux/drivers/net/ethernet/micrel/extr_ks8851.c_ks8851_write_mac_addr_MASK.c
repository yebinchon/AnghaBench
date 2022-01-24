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
struct net_device {int /*<<< orphan*/ * dev_addr; } ;
struct ks8851_net {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PMECR_PM_NORMAL ; 
 int /*<<< orphan*/  PMECR_PM_SOFTDOWN ; 
 int /*<<< orphan*/  FUNC1 (struct ks8851_net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ks8851_net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct ks8851_net* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev)
{
	struct ks8851_net *ks = FUNC5(dev);
	int i;

	FUNC3(&ks->lock);

	/*
	 * Wake up chip in case it was powered off when stopped; otherwise,
	 * the first write to the MAC address does not take effect.
	 */
	FUNC1(ks, PMECR_PM_NORMAL);
	for (i = 0; i < ETH_ALEN; i++)
		FUNC2(ks, FUNC0(i), dev->dev_addr[i]);
	if (!FUNC6(dev))
		FUNC1(ks, PMECR_PM_SOFTDOWN);

	FUNC4(&ks->lock);

	return 0;
}