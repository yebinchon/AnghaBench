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
struct device {int dummy; } ;
struct board_info {int in_suspend; int /*<<< orphan*/  wake_state; } ;

/* Variables and functions */
 struct net_device* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct board_info* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 

__attribute__((used)) static int
FUNC5(struct device *dev)
{
	struct net_device *ndev = FUNC0(dev);
	struct board_info *db;

	if (ndev) {
		db = FUNC2(ndev);
		db->in_suspend = 1;

		if (!FUNC4(ndev))
			return 0;

		FUNC3(ndev);

		/* only shutdown if not using WoL */
		if (!db->wake_state)
			FUNC1(ndev);
	}
	return 0;
}