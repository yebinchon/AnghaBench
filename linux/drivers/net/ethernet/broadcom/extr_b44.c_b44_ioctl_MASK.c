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
struct net_device {int /*<<< orphan*/  phydev; } ;
struct ifreq {int dummy; } ;
struct b44 {int flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  mii_if; } ;

/* Variables and functions */
 int B44_FLAG_EXTERNAL_PHY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ifreq*) ; 
 struct b44* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct ifreq*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev, struct ifreq *ifr, int cmd)
{
	struct b44 *bp = FUNC3(dev);
	int err = -EINVAL;

	if (!FUNC4(dev))
		goto out;

	FUNC6(&bp->lock);
	if (bp->flags & B44_FLAG_EXTERNAL_PHY) {
		FUNC0(!dev->phydev);
		err = FUNC5(dev->phydev, ifr, cmd);
	} else {
		err = FUNC1(&bp->mii_if, FUNC2(ifr), cmd, NULL);
	}
	FUNC7(&bp->lock);
out:
	return err;
}