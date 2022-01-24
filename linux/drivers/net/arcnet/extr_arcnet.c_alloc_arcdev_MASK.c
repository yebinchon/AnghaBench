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
struct arcnet_local {int /*<<< orphan*/  timer; int /*<<< orphan*/  lock; struct net_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  NET_NAME_UNKNOWN ; 
 struct net_device* FUNC0 (int,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  arcdev_setup ; 
 int /*<<< orphan*/  arcnet_timer ; 
 struct arcnet_local* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct net_device *FUNC4(const char *name)
{
	struct net_device *dev;

	dev = FUNC0(sizeof(struct arcnet_local),
			   name && *name ? name : "arc%d", NET_NAME_UNKNOWN,
			   arcdev_setup);
	if (dev) {
		struct arcnet_local *lp = FUNC1(dev);

		lp->dev = dev;
		FUNC2(&lp->lock);
		FUNC3(&lp->timer, arcnet_timer, 0);
	}

	return dev;
}