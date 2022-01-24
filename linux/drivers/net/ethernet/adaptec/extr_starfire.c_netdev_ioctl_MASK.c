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
struct netdev_private {scalar_t__* phys; int /*<<< orphan*/  lock; int /*<<< orphan*/  mii_if; } ;
struct net_device {int dummy; } ;
struct mii_ioctl_data {scalar_t__ phy_id; } ;
struct ifreq {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int SIOCSMIIREG ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct mii_ioctl_data*,int,int /*<<< orphan*/ *) ; 
 struct mii_ioctl_data* FUNC2 (struct ifreq*) ; 
 struct netdev_private* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev, struct ifreq *rq, int cmd)
{
	struct netdev_private *np = FUNC3(dev);
	struct mii_ioctl_data *data = FUNC2(rq);
	int rc;

	if (!FUNC4(dev))
		return -EINVAL;

	FUNC5(&np->lock);
	rc = FUNC1(&np->mii_if, data, cmd, NULL);
	FUNC6(&np->lock);

	if ((cmd == SIOCSMIIREG) && (data->phy_id == np->phys[0]))
		FUNC0(dev);

	return rc;
}