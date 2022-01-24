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
struct net_device {int dummy; } ;
struct mii_ioctl_data {int dummy; } ;
struct korina_private {int /*<<< orphan*/  mii_if; int /*<<< orphan*/  lock; } ;
struct ifreq {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ *,struct mii_ioctl_data*,int,int /*<<< orphan*/ *) ; 
 struct mii_ioctl_data* FUNC1 (struct ifreq*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct korina_private* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev, struct ifreq *rq, int cmd)
{
	struct korina_private *lp = FUNC3(dev);
	struct mii_ioctl_data *data = FUNC1(rq);
	int rc;

	if (!FUNC4(dev))
		return -EINVAL;
	FUNC5(&lp->lock);
	rc = FUNC0(&lp->mii_if, data, cmd, NULL);
	FUNC6(&lp->lock);
	FUNC2(&lp->mii_if);

	return rc;
}