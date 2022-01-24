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
struct tc35815_local {int /*<<< orphan*/  restart_work; int /*<<< orphan*/  napi; } ;
struct net_device {int /*<<< orphan*/  irq; scalar_t__ phydev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct tc35815_local* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 

__attribute__((used)) static int
FUNC8(struct net_device *dev)
{
	struct tc35815_local *lp = FUNC3(dev);

	FUNC4(dev);
	FUNC2(&lp->napi);
	if (dev->phydev)
		FUNC5(dev->phydev);
	FUNC0(&lp->restart_work);

	/* Flush the Tx and disable Rx here. */
	FUNC6(dev);
	FUNC1(dev->irq, dev);

	FUNC7(dev);

	return 0;

}