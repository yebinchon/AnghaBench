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
struct rhine_private {int /*<<< orphan*/  task_lock; int /*<<< orphan*/  mii_if; } ;
struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ifreq*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct rhine_private* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev, struct ifreq *rq, int cmd)
{
	struct rhine_private *rp = FUNC4(dev);
	int rc;

	if (!FUNC5(dev))
		return -EINVAL;

	FUNC2(&rp->task_lock);
	rc = FUNC0(&rp->mii_if, FUNC1(rq), cmd, NULL);
	FUNC6(&rp->mii_if);
	FUNC3(&rp->task_lock);

	return rc;
}