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
struct pcnet32_private {int /*<<< orphan*/  lock; int /*<<< orphan*/  mii_if; scalar_t__ mii; } ;
struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ifreq*) ; 
 struct pcnet32_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev, struct ifreq *rq, int cmd)
{
	struct pcnet32_private *lp = FUNC2(dev);
	int rc;
	unsigned long flags;

	/* SIOC[GS]MIIxxx ioctls */
	if (lp->mii) {
		FUNC3(&lp->lock, flags);
		rc = FUNC0(&lp->mii_if, FUNC1(rq), cmd, NULL);
		FUNC4(&lp->lock, flags);
	} else {
		rc = -EOPNOTSUPP;
	}

	return rc;
}