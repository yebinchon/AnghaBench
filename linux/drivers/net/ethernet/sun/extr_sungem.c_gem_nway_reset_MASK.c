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
struct gem {int /*<<< orphan*/  link_timer; int /*<<< orphan*/  dev; int /*<<< orphan*/  want_autoneg; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct gem*,int /*<<< orphan*/ *) ; 
 struct gem* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev)
{
	struct gem *gp = FUNC2(dev);

	if (!gp->want_autoneg)
		return -EINVAL;

	/* Restart link process  */
	if (FUNC3(gp->dev)) {
		FUNC0(&gp->link_timer);
		FUNC1(gp, NULL);
	}

	return 0;
}