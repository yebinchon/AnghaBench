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
struct team {int /*<<< orphan*/  team_lock_key; int /*<<< orphan*/  lock; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 struct team* FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (struct net_device*) ; 
 int FUNC8 (struct team*,struct net_device*) ; 

__attribute__((used)) static int FUNC9(struct net_device *dev, struct net_device *port_dev)
{
	struct team *team = FUNC6(dev);
	int err;

	FUNC3(&team->lock);
	err = FUNC8(team, port_dev);
	FUNC4(&team->lock);

	if (err)
		return err;

	if (FUNC7(port_dev)) {
		FUNC2(&team->team_lock_key);
		FUNC0(&team->team_lock_key);
		FUNC1(&team->lock, &team->team_lock_key);
	}
	FUNC5(dev);

	return err;
}