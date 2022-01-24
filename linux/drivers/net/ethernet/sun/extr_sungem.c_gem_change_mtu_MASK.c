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
struct gem {scalar_t__ lstate; int /*<<< orphan*/  cell_enabled; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct gem*) ; 
 int /*<<< orphan*/  FUNC2 (struct gem*) ; 
 int /*<<< orphan*/  FUNC3 (struct gem*) ; 
 int /*<<< orphan*/  FUNC4 (struct gem*) ; 
 scalar_t__ link_up ; 
 struct gem* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev, int new_mtu)
{
	struct gem *gp = FUNC5(dev);

	dev->mtu = new_mtu;

	/* We'll just catch it later when the device is up'd or resumed */
	if (!FUNC7(dev) || !FUNC6(dev))
		return 0;

	/* Better safe than sorry... */
	if (FUNC0(!gp->cell_enabled))
		return 0;

	FUNC2(gp);
	FUNC3(gp);
	if (gp->lstate == link_up)
		FUNC4(gp);
	FUNC1(gp);

	return 0;
}