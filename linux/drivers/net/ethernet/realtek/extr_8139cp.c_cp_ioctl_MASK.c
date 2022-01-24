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
struct ifreq {int dummy; } ;
struct cp_private {int /*<<< orphan*/  lock; int /*<<< orphan*/  mii_if; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ifreq*) ; 
 struct cp_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6 (struct net_device *dev, struct ifreq *rq, int cmd)
{
	struct cp_private *cp = FUNC2(dev);
	int rc;
	unsigned long flags;

	if (!FUNC3(dev))
		return -EINVAL;

	FUNC4(&cp->lock, flags);
	rc = FUNC0(&cp->mii_if, FUNC1(rq), cmd, NULL);
	FUNC5(&cp->lock, flags);
	return rc;
}