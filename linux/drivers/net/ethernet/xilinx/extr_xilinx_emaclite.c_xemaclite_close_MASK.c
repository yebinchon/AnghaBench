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
struct net_local {int /*<<< orphan*/ * phy_dev; } ;
struct net_device {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct net_device*) ; 
 struct net_local* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct net_local*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev)
{
	struct net_local *lp = FUNC1(dev);

	FUNC2(dev);
	FUNC4(lp);
	FUNC0(dev->irq, dev);

	if (lp->phy_dev)
		FUNC3(lp->phy_dev);
	lp->phy_dev = NULL;

	return 0;
}