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
struct team {int /*<<< orphan*/  lock; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct team* FUNC3 (struct net_device*) ; 
 int FUNC4 (struct team*,struct net_device*,struct netlink_ext_ack*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev, struct net_device *port_dev,
			  struct netlink_ext_ack *extack)
{
	struct team *team = FUNC3(dev);
	int err;

	FUNC0(&team->lock);
	err = FUNC4(team, port_dev, extack);
	FUNC1(&team->lock);

	if (!err)
		FUNC2(dev);

	return err;
}