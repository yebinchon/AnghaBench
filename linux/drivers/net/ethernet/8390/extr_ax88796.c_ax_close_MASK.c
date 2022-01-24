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
struct net_device {int /*<<< orphan*/  irq; int /*<<< orphan*/  phydev; } ;
struct ax_device {int /*<<< orphan*/  mii_bus; scalar_t__ running; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct ax_device* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static int FUNC9(struct net_device *dev)
{
	struct ax_device *ax = FUNC7(dev);

	FUNC5(dev, "close\n");

	ax->running = 0;
	FUNC8();

	FUNC0(dev);

	/* turn the phy off */
	FUNC1(dev, 0);
	FUNC6(dev->phydev);

	FUNC2(dev->irq, dev);

	FUNC4(ax->mii_bus);
	FUNC3(ax->mii_bus);
	return 0;
}